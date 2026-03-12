import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { ApiUrl } from "../../../ApiUrl";

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

const TransferCertificateForm = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const studentData = location.state || {};
  const merged = { ...studentData, ...studentData.studentcertificatedetails };
  const [formData, setFormData] = useState({
    ...merged,
    permanent_address: merged.permanent_address || merged.address || "",
    registration_number: merged.registration_number || merged.registration_no || "",
  });

  const set = (field) => (e) =>
    setFormData((prev) => ({ ...prev, [field]: e.target.value }));

  useEffect(() => {
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
          setFormData((prev) => ({
            ...prev,
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

  const handleSave = async () => {
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
      };

      const response = await fetch(`${ApiUrl.apiurl}StudentCertificate/create/`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(payload),
      });

      if (response.ok) {
        alert("Transfer Certificate saved successfully!");
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

  const Row = ({ label, children }) => (
    <tr>
      <td style={{ paddingRight: "6px", verticalAlign: "top", paddingTop: "6px" }}>•</td>
      <td style={{ width: "260px", verticalAlign: "top", paddingTop: "6px", fontFamily: "serif", fontSize: "14px" }}>{label}</td>
      <td style={{ paddingRight: "8px", paddingTop: "6px", verticalAlign: "top" }}>:</td>
      <td style={{ verticalAlign: "top", paddingTop: "6px" }}>{children}</td>
    </tr>
  );

  const textInput = (field) => (
    <input
      type="text"
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
                  <button type="button" className="btn btn-primary me-2" style={{ width: "150px" }} onClick={handleSave}>Save</button>
                  <button type="button" className="btn btn-secondary me-2" style={{ width: "150px" }}
                    onClick={() => {
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
                    <input type="text" value={formData.document_no || ""} onChange={set("document_no")}
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
