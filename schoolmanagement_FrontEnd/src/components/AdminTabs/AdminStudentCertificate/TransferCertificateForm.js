import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { ApiUrl } from "../../../ApiUrl";
import jsPDF from "jspdf";

const getTodayStr = () => {
  const today = new Date();
  const dd = String(today.getDate()).padStart(2, "0");
  const mm = String(today.getMonth() + 1).padStart(2, "0");
  const yyyy = today.getFullYear();
  return `${dd}-${mm}-${yyyy}`;
};

const getTodayISO = () => new Date().toISOString().split("T")[0];

const il = (extra = {}) => ({
  border: "none",
  borderBottom: "1px solid #000",
  outline: "none",
  fontFamily: "serif",
  fontSize: "14px",
  background: "transparent",
  color: "#000",
  ...extra,
});

const Row = ({ label, children }) => (
  <tr>
    <td style={{ paddingRight: "6px", verticalAlign: "top", paddingTop: "6px" }}>•</td>
    <td style={{ width: "260px", verticalAlign: "top", paddingTop: "6px", fontFamily: "serif", fontSize: "14px" }}>{label}</td>
    <td style={{ paddingRight: "8px", paddingTop: "6px", verticalAlign: "top" }}>:</td>
    <td style={{ verticalAlign: "top", paddingTop: "6px" }}>{children}</td>
  </tr>
);

const TransferCertificateForm = () => {
  const navigate = useNavigate();
  const location = useLocation();

  // Edit mode: state has { certificate: {...} }; Create mode: state has student data directly; View mode: viewMode: true
  const certificate = location.state?.certificate;
  const viewMode = location.state?.viewMode || false;
  const isEditMode = !!certificate && !viewMode;
  const isViewMode = viewMode;

  const studentData = isEditMode || isViewMode ? {} : (location.state || {});
  const merged = isEditMode || isViewMode ? {} : { ...studentData, ...studentData.studentcertificatedetails };
  const [formData, setFormData] = useState(() => {
    if (isEditMode || isViewMode) {
      return {
        ...certificate,
        studentname: certificate.student_name || "",
        permanent_address: certificate.permanent_address || "",
        registration_number: certificate.registration_number || "",
      };
    }
    return {
      ...merged,
      permanent_address: merged.permanent_address || merged.address || "",
      registration_number: merged.registration_number || merged.registration_no || "",
    };
  });

  const [isFieldsDisabled, setIsFieldsDisabled] = useState(isViewMode);

  const set = (field) => (e) =>
    setFormData((prev) => ({ ...prev, [field]: e.target.value }));

  // Fields that are fetched from student registration and should be disabled
  const disabledFields = new Set(["studentname"]);

  useEffect(() => {
    if (isEditMode) return; // In edit mode, data is already pre-filled from certificate
    const studentId = localStorage.getItem("selectedCertificateStudentId");
    const orgId = localStorage.getItem("orgId");
    const branchId = localStorage.getItem("branchId");
    if (!studentId || !orgId || !branchId) return;

    fetch(
      `${ApiUrl.apiurl}StudentRegistrationApi/GetStudentDetailsBasedOnId/?organization_id=${orgId}&branch_id=${branchId}&student_id=${studentId}`
    )
      .then((res) => res.json())
      .then((res) => {
        if (res?.data?.student_basic_details) {
          const s = res.data.student_basic_details;
          const addr = res.data?.address_details?.[0];
          const fullName = [s.first_name, s.middle_name, s.last_name].filter(Boolean).join(" ");
          setFormData((prev) => ({
            ...prev,
            studentname: prev.studentname || fullName || s.student_name || "",
            father_name: prev.father_name || s.father_name || "",
            mother_name: prev.mother_name || s.mother_name || "",
            dob: prev.dob || s.date_of_birth || "",
            date_of_admission: prev.date_of_admission || s.date_of_admission || "",
            registration_number: prev.registration_number || s.registration_no || "",
            nationality: prev.nationality || s.nationality_name || "",
            religion_caste: prev.religion_caste || s.religion_name || "",
            permanent_address:
              prev.permanent_address ||
              addr?.permanent_address ||
              addr?.present_address ||
              "",
          }));
        }
      })
      .catch((err) => console.error("Failed to fetch student details:", err));
  }, []);

  // Auto-generate unique Ref No for new certificates immediately on load
  useEffect(() => {
    if (isEditMode || formData.document_no) return; // Skip if editing or already has Ref No

    // Generate Ref No immediately using localStorage counter (no API delay)
    const generateRefNo = () => {
      let nextNum = 1;
      const cachedCounter = localStorage.getItem("tc_certificate_counter");
      
      if (cachedCounter) {
        nextNum = parseInt(cachedCounter) + 1;
      }
      
      const refNo = `TC${String(nextNum).padStart(3, '0')}`;
      localStorage.setItem("tc_certificate_counter", nextNum.toString());
      return refNo;
    };

    const refNo = generateRefNo();
    setFormData((prev) => ({ ...prev, document_no: refNo }));
  }, [isEditMode, formData.batch]);

  const handleClose = () => {
    const keysToRetain = ["academicSessionId", "branchId", "nextAcademicSessionId", "orgId"];
    const retained = keysToRetain.reduce((acc, key) => {
      const v = localStorage.getItem(key);
      if (v !== null) acc[key] = v;
      return acc;
    }, {});
    localStorage.clear();
    Object.entries(retained).forEach(([k, v]) => localStorage.setItem(k, v));
    navigate("/admin/student-certificate");
  };

  const validateFields = () => {
    const errors = {};
    if (!formData.studentname?.trim()) errors.studentname = "Student name is required";
    if (!formData.date_of_leaving?.trim()) errors.date_of_leaving = "Date of leaving is required";
    if (!formData.reason_for_tc?.trim()) errors.reason_for_tc = "Reason for TC is required";
    if (!formData.general_conduct?.trim()) errors.general_conduct = "General conduct is required";
    if (!formData.qualified_for_promotion?.trim()) errors.qualified_for_promotion = "Qualified for promotion is required";
    if (!formData.class_last_studied?.trim()) errors.class_last_studied = "Class last studied is required";
    return errors;
  };

  const [fieldErrors, setFieldErrors] = useState({});

  const handleSave = async () => {
    const errors = validateFields();
    if (Object.keys(errors).length > 0) {
      setFieldErrors(errors);
      alert("Please fill all mandatory fields!");
      return;
    }
    setFieldErrors({});

    try {
      const student = localStorage.getItem("selectedCertificateStudentId");
      const session = localStorage.getItem("academicSessionId");
      const org_id = localStorage.getItem("orgId");
      const branch_id = localStorage.getItem("branchId");
      const document_type = localStorage.getItem("selectedDocumentType");
      const docNo = formData.document_no || "";
      const [prefix, ...rest] = docNo.split("/");
      const postfix = rest.join("/");
      const todayISO = getTodayISO();

      const payload = {
        student, session, org_id, branch_id, document_type,
        transfer_certificate_no_prefix: prefix || docNo,
        transfer_certificate_no_postfix: postfix || "",
        transfer_certificate_no: docNo,
        transfer_certificate_id: 0,
        tc_applied_date: todayISO,
        tc_issued_date: todayISO,
        general_conduct: formData.general_conduct || "",
        other_remarks: "",
        status: "N",
        qualified_for_promotion: formData.qualified_for_promotion || "",
        reason_for_tc: formData.reason_for_tc || "",
        cancelled_on: null,
        cancelled_remarks: "",
        cancelled_by: "",
        class_last_studied: formData.class_last_studied || "",
        religion_caste: formData.religion_caste || "",
        permanent_address: formData.permanent_address || formData.address || "",
        registration_number: formData.registration_number || "",
        date_of_leaving: formData.date_of_leaving || "",
        dob: formData.dob || "",
        date_of_admission: formData.date_of_admission || "",
        nationality: formData.nationality || "",
        from_month: formData.from_month || "",
        to_month: formData.to_month || "",
        student_behaviour: formData.student_behaviour || "",
        readmission_eligibility: formData.readmission_eligibility || "",
        father_name: formData.father_name || "",
        mother_name: formData.mother_name || "",
      };

      const response = await fetch(`${ApiUrl.apiurl}StudentCertificate/create/`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(payload),
      });

      if (response.ok) {
        alert(`Transfer Certificate saved successfully! Ref No: ${formData.document_no}`);
        const academicSessionId = localStorage.getItem("academicSessionId");
        const branchId = localStorage.getItem("branchId");
        const nextAcademicSessionId = localStorage.getItem("nextAcademicSessionId");
        const orgId = localStorage.getItem("orgId");
        localStorage.clear();
        localStorage.setItem("academicSessionId", academicSessionId);
        localStorage.setItem("branchId", branchId);
        localStorage.setItem("nextAcademicSessionId", nextAcademicSessionId);
        localStorage.setItem("orgId", orgId);
        navigate("/admin/student-certificate");
      } else {
        const error = await response.json();
        alert(`Error saving Transfer Certificate: ${error.message}`);
      }
    } catch (error) {
      console.error("Error while saving:", error);
      alert("An error occurred while saving the Transfer Certificate.");
    }
  };

  const handleUpdate = async () => {
    try {
      const org_id = localStorage.getItem("orgId");
      const branch_id = localStorage.getItem("branchId");
      const student_certificate_id = certificate.id;
      const document_type = "TC";

      const payload = {
        issue_date: getTodayISO(),
        certificate_status: certificate.certificate_status || "Pending",
        date_of_leaving: formData.date_of_leaving || "",
        general_conduct: formData.general_conduct || "",
        qualified_for_promotion: formData.qualified_for_promotion || "",
        reason_for_tc: formData.reason_for_tc || "",
        class_last_studied: formData.class_last_studied || "",
        religion_caste: formData.religion_caste || "",
        permanent_address: formData.permanent_address || "",
        registration_number: formData.registration_number || "",
        dob: formData.dob || "",
        date_of_admission: formData.date_of_admission || "",
        nationality: formData.nationality || "",
        from_month: formData.from_month || "",
        to_month: formData.to_month || "",
      };

      const response = await fetch(
        `${ApiUrl.apiurl}StudentCertificate/update/?organization_id=${org_id}&branch_id=${branch_id}&student_certificate_id=${student_certificate_id}&document_type=${document_type}`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(payload),
        }
      );

      if (response.ok) {
        alert("Transfer Certificate updated successfully!");
        const academicSessionId = localStorage.getItem("academicSessionId");
        const branchId = localStorage.getItem("branchId");
        const nextAcademicSessionId = localStorage.getItem("nextAcademicSessionId");
        const orgId = localStorage.getItem("orgId");
        localStorage.clear();
        localStorage.setItem("academicSessionId", academicSessionId);
        localStorage.setItem("branchId", branchId);
        localStorage.setItem("nextAcademicSessionId", nextAcademicSessionId);
        localStorage.setItem("orgId", orgId);
        navigate("/admin/student-certificate");
      } else {
        const error = await response.json();
        alert(`Error updating Transfer Certificate: ${error.message}`);
      }
    } catch (error) {
      console.error("Error while updating:", error);
      alert("An error occurred while updating the Transfer Certificate.");
    }
  };

  const handleDownloadPDF = async () => {
    try {
      const doc = new jsPDF("portrait", "mm", "a4");
      const pageWidth = doc.internal.pageSize.getWidth();
      const pageHeight = doc.internal.pageSize.getHeight();
      const marginLeft = 20;
      const marginRight = 20;

      // Certificate border with corner marks
      const borderMargin = 25;
      const borderX = borderMargin;
      const borderY = borderMargin;
      const borderW = pageWidth - borderMargin * 2;
      const borderH = pageHeight - borderMargin * 2;

      // Draw main border
      doc.setDrawColor(0);
      doc.setLineWidth(0.5);
      doc.rect(borderX, borderY, borderW, borderH);

      // Draw corner marks
      const cornerSize = 8;
      const cornerThickness = 1;
      doc.setLineWidth(cornerThickness);

      // Top-left
      doc.line(borderX, borderY, borderX + cornerSize, borderY);
      doc.line(borderX, borderY, borderX, borderY + cornerSize);

      // Top-right
      doc.line(borderX + borderW, borderY, borderX + borderW - cornerSize, borderY);
      doc.line(borderX + borderW, borderY, borderX + borderW, borderY + cornerSize);

      // Bottom-left
      doc.line(borderX, borderY + borderH, borderX + cornerSize, borderY + borderH);
      doc.line(borderX, borderY + borderH, borderX, borderY + borderH - cornerSize);

      // Bottom-right
      doc.line(borderX + borderW, borderY + borderH, borderX + borderW - cornerSize, borderY + borderH);
      doc.line(borderX + borderW, borderY + borderH, borderX + borderW, borderY + borderH - cornerSize);

      let yPos = borderY + 12;

      // College header
      doc.setFont("Helvetica", "bold");
      doc.setFontSize(11);
      doc.text("SPARSH COLLEGE OF NURSING & ALLIED SCIENCES: KANTABADA : BBSR.", pageWidth / 2, yPos, { align: "center" });
      yPos += 8;

      // Ref No and Date
      doc.setFont("Helvetica", "normal");
      doc.setFontSize(9);
      doc.text(`Ref No – ${formData.document_no || ""}`, marginLeft, yPos);
      doc.text(`Date – ${getTodayStr()}`, pageWidth - marginRight, yPos, { align: "right" });
      yPos += 8;

      // Title
      doc.setFont("Helvetica", "bold");
      doc.setFontSize(12);
      doc.text("SCHOOL LEAVING CERTIFICATE", pageWidth / 2, yPos, { align: "center" });
      yPos += 10;

      // Certificate details table
      doc.setFont("Helvetica", "normal");
      doc.setFontSize(9);

      const details = [
        ["1. Name of Student", formData.studentname || ""],
        ["2. Father's Name", formData.father_name || ""],
        ["3. Mother's Name", formData.mother_name || ""],
        ["4. Date of Birth", formData.dob || ""],
        ["5. Date of Admission", formData.date_of_admission || ""],
        ["6. Class Last Studied", formData.class_last_studied || ""],
        ["7. Date of Leaving", formData.date_of_leaving || ""],
        ["8. General Conduct", formData.general_conduct || ""],
        ["9. Qualified for Promotion", formData.qualified_for_promotion || ""],
        ["10. Reason for TC", formData.reason_for_tc || ""],
        ["11. Nationality", formData.nationality || ""],
        ["12. Religion/Caste", formData.religion_caste || ""],
        ["13. Registration Number", formData.registration_number || ""],
        ["14. Permanent Address", formData.permanent_address || ""],
      ];

      details.forEach(([label, value]) => {
        if (yPos > 240) {
          doc.addPage();
          yPos = 30;
        }
        doc.setFont("Helvetica", "bold");
        doc.text(label, marginLeft, yPos);
        doc.setFont("Helvetica", "normal");
        doc.text(value, marginLeft + 65, yPos);
        yPos += 6;
      });

      // Principal signature section
      yPos += 15;
      doc.setFont("Helvetica", "bold");
      doc.setFontSize(10);
      doc.line(pageWidth - marginRight - 40, yPos, pageWidth - marginRight, yPos);
      doc.text("PRINCIPAL", pageWidth - marginRight - 15, yPos + 6, { align: "center" });

      // Save PDF
      const filename = `Transfer_Certificate_${formData.studentname || "Student"}.pdf`;
      doc.save(filename);
    } catch (error) {
      console.error("Error generating PDF:", error);
      alert("Failed to generate PDF.");
    }
  };

  const textInput = (field) => (
    <input
      type="text"
      disabled={isFieldsDisabled}
      value={formData[field] || ""}
      onChange={set(field)}
      style={il({ minWidth: "180px", width: "100%" })}
    />
  );

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card p-0">
            <div className="card-body">
              <h3 className="text-center mb-4">Transfer Certificate</h3>

              {/* Action Buttons */}
              <div className="row mb-3 mt-3 mx-0">
                <div className="col-12 d-flex flex-wrap gap-2">
                  {/* Save Button - Only in Create & Edit Mode */}
                  {!isViewMode && (
                    <button type="button" className="btn btn-primary me-2" style={{ width: "150px" }} onClick={handleSave} disabled={isEditMode}>Save</button>
                  )}
                  
                  {/* Update Button - Only in Edit Mode (not View) */}
                  {isEditMode && !isViewMode && (
                    <button type="button" className="btn btn-primary me-2" style={{ width: "150px" }} onClick={handleUpdate}>Update</button>
                  )}

                  {/* Download PDF Button - Only in View Mode */}
                  {isViewMode && (
                    <button type="button" className="btn btn-success me-2" style={{ width: "150px" }} onClick={handleDownloadPDF}>Download PDF</button>
                  )}

                  <button type="button" className="btn btn-secondary me-2" style={{ width: "150px" }}
                    onClick={() => {
                      if (isEditMode) {
                        setFormData({
                          ...certificate,
                          studentname: certificate.student_name || "",
                          permanent_address: certificate.permanent_address || "",
                          registration_number: certificate.registration_number || "",
                        });
                        return;
                      }
                      const m = { ...studentData, ...studentData.studentcertificatedetails };
                      setFormData({ ...m, permanent_address: m.permanent_address || m.address || "", registration_number: m.registration_number || m.registration_no || "" });
                    }}>
                    Clear
                  </button>
                  <button type="button" className="btn btn-danger me-2" style={{ width: "150px" }} onClick={handleClose}>Close</button>
                </div>
              </div>

              {/* Certificate Template */}
              <div style={{ border: "2px solid #000", padding: "40px 50px", maxWidth: "820px", margin: "0 auto", backgroundColor: "#fff", fontFamily: "serif", position: "relative" }}>

                {/* Corner marks */}
                {[
                  { top: "8px", left: "8px", borderTop: "3px solid #000", borderLeft: "3px solid #000" },
                  { top: "8px", right: "8px", borderTop: "3px solid #000", borderRight: "3px solid #000" },
                  { bottom: "8px", left: "8px", borderBottom: "3px solid #000", borderLeft: "3px solid #000" },
                  { bottom: "8px", right: "8px", borderBottom: "3px solid #000", borderRight: "3px solid #000" },
                ].map((s, i) => (
                  <div key={i} style={{ position: "absolute", width: "30px", height: "30px", ...s }} />
                ))}

                {/* Ref No and Date */}
                <div style={{ display: "flex", justifyContent: "space-between", marginBottom: "20px" }}>
                  <div style={{ display: "flex", alignItems: "center", gap: "6px" }}>
                    <strong>Ref No –</strong>
                    <input type="text" disabled value={formData.document_no || ""}
                      style={il({ width: "160px" })} />
                  </div>
                  <div style={{ display: "flex", alignItems: "center", gap: "6px" }}>
                    <strong>Date –</strong>
                    <input type="text" disabled value={getTodayStr()} style={il({ width: "130px" })} />
                  </div>
                </div>

                {/* Title */}
                <h4 style={{ textAlign: "center", fontWeight: "bold", fontSize: "18px", textTransform: "uppercase", marginBottom: "30px", letterSpacing: "1px" }}>
                  TRANSFER CERTIFICATE
                </h4>

                {/* Intro line */}
                <p style={{ fontFamily: "serif", fontSize: "14px", marginBottom: "20px" }}>
                  This is to certify that&nbsp;
                  <input type="text" disabled value={formData.studentname || ""}
                    style={il({ minWidth: "200px", textAlign: "center" })} />
                  &nbsp;was a bonafide student of this institution.
                </p>

                {/* Fields table */}
                <table style={{ width: "100%", borderSpacing: "0 4px", fontFamily: "serif", fontSize: "14px" }}>
                  <tbody>
                    <Row label="Name of the student">{textInput("studentname")}</Row>
                    <Row label="Name of the father/Husband">{textInput("father_name")}</Row>
                    <Row label="Name of the Mother">{textInput("mother_name")}</Row>
                    <Row label="Nationality">{textInput("nationality")}</Row>
                    <Row label="Religion and Caste">{textInput("religion_caste")}</Row>
                    <Row label="Date of Birth">{textInput("dob")}</Row>
                    <Row label="Permanent Address">{textInput("permanent_address")}</Row>
                    <Row label="Registration Number">{textInput("registration_number")}</Row>
                    <Row label="Date of Admission">{textInput("date_of_admission")}</Row>
                    <Row label={<span>Class in which the student<br />was studying at the time of<br />leaving the college</span>}>
                      {textInput("class_last_studied")}
                    </Row>
                    <Row label={<span>Wheather qualified for<br />promotion to higher class</span>}>
                      {textInput("qualified_for_promotion")}
                    </Row>
                    <Row label="Reason for the tissue of transfer certificate">
                      {textInput("reason_for_tc")}
                    </Row>
                    <Row label={<span>Conduct and character during<br />the period of study</span>}>
                      {textInput("general_conduct")}
                    </Row>
                    <Row label="Date of leaving from college">
                      <input type="date" value={formData.date_of_leaving || ""} onChange={set("date_of_leaving")}
                        style={il({ minWidth: "160px" })} />
                    </Row>
                  </tbody>
                </table>

                {/* Principal */}
                <div style={{ textAlign: "right", marginTop: "70px", fontStyle: "italic", fontSize: "14px" }}>
                  Principal
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default TransferCertificateForm;
