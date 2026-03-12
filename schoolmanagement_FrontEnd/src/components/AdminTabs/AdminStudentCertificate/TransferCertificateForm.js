import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import useCourses from "../../hooks/useFetchClasses";
import { ApiUrl } from "../../../ApiUrl";

const TransferCertificateForm = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const [viewMode, setViewMode] = useState(false);
  const [selectedClassId, setSelectedClassId] = useState("");
  const studentData = location.state || {};
  const {
    classes,
    loading: classLoading,
    error: classError,
  } = useCourses();
  const [formData, setFormData] = useState({
    ...studentData,
    ...studentData.studentcertificatedetails,
  });
  const [isFieldsDisabled, setIsFieldsDisabled] = useState(false);

  useEffect(() => {
    const documentType = localStorage.getItem("selectedDocumentType");
    if (documentType === "TC") {
      setIsFieldsDisabled(true);
    }
  }, []);

  const handleClose = () => {
    const keysToRetain = [
      "academicSessionId",
      "branchId",
      "nextAcademicSessionId",
      "orgId",
    ];
    const retainedValues = keysToRetain.reduce((acc, key) => {
      const value = localStorage.getItem(key);
      if (value !== null) {
        acc[key] = value;
      }
      return acc;
    }, {});
    localStorage.clear();
    Object.entries(retainedValues).forEach(([key, value]) => {
      localStorage.setItem(key, value);
    });
    navigate("/admin/student-certificate");
  };

  const handleClassChange = (e) => {
    const classId = e.target.value;
    if (classId) {
      localStorage.setItem("selectedStudentClassId", classId);
    } else {
      localStorage.removeItem("selectedStudentClassId");
    }
    setFormData((prev) => ({
      ...prev,
      classId,
      sectionId: "",
    }));
    setSelectedClassId(classId);
  };

  const handleSave = async () => {
    try {
      const student = localStorage.getItem("selectedCertificateStudentId");
      const session = localStorage.getItem("academicSessionId");
      const org_id = localStorage.getItem("orgId");
      const branch_id = localStorage.getItem("branchId");
      const document_type = localStorage.getItem("selectedDocumentType");

      const [prefix, ...rest] = (formData.document_no || "").split("/");
      const postfix = rest.join("/");

      if (!prefix || !postfix) {
        alert("Please provide a valid Document No. in the format 'prefix/postfix'.");
        return;
      }

      if (!formData.tc_applied_date) {
        alert("Date of Application for Certificate is required");
        return;
      }

      if (!formData.reason_for_tc) {
        alert("Reason for issue of Transfer Certificate is required");
        return;
      }

      const transferCertificateNo = formData.transfer_certificate_no || "4";

      const payload = {
        student,
        session,
        org_id,
        branch_id,
        document_type,
        transfer_certificate_no_prefix: prefix,
        transfer_certificate_no_postfix: postfix,
        transfer_certificate_no: transferCertificateNo,
        transfer_certificate_id: 0,
        tc_applied_date: formData.tc_applied_date || null,
        reason_for_tc: formData.reason_for_tc || "",
        tc_issued_date: formData.tc_issued_date || null,
        general_conduct: formData.general_conduct || "",
        other_remarks: formData.other_remarks || "",
        status: formData.status || "N",
        qualified_for_promotion: formData.qualified_for_promotion || "",
        cancelled_on: formData.cancelled_on || null,
        cancelled_remarks: formData.cancelled_remarks || "",
        cancelled_by: formData.cancelled_by || "",
        class_last_studied: formData.classId || "",
        // Additional fields from client format
        religion_caste: formData.religion_caste || "",
        permanent_address: formData.permanent_address || "",
        registration_number: formData.registration_number || "",
        date_of_leaving: formData.date_of_leaving || "",
      };

      const response = await fetch(`${ApiUrl.apiurl}StudentCertificate/create/`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(payload),
      });

      if (response.ok) {
        const result = await response.json();
        alert("Transfer Certificate saved successfully!");
        console.log(result);
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

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card p-0">
            <div className="card-body">
              <h3 className="text-center mb-4">Transfer Certificate</h3>

              <div className="row mb-3 mt-3 mx-0">
                <div className="col-12 d-flex flex-wrap gap-2">
                  <button
                    type="button"
                    className="btn btn-primary me-2"
                    style={{ width: "150px" }}
                    onClick={handleSave}
                  >
                    Save
                  </button>
                  <button
                    type="button"
                    className="btn btn-secondary me-2"
                    style={{ width: "150px" }}
                  >
                    Clear
                  </button>
                  <button
                    type="button"
                    className="btn btn-danger me-2"
                    style={{ width: "150px" }}
                    onClick={handleClose}
                  >
                    Close
                  </button>
                </div>
              </div>

              <form>
                {/* Header Section */}
                <div className="col-12 mb-3 mx-1 custom-section-box">
                  <div className="row mb-3 mt-3">
                    <div className="col-md-6 d-flex align-items-center">
                      <label className="form-label me-3" style={{ width: "200px" }}>
                        Ref No.
                      </label>
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.document_no || ""}
                        onChange={(e) => {
                          const value = e.target.value.trim();
                          const [prefix, ...rest] = value.split("/");
                          const postfix = rest.join("/");
                          setFormData({
                            ...formData,
                            document_no: value,
                            transfer_certificate_no_prefix: prefix || "",
                            transfer_certificate_no_postfix: postfix || "",
                          });
                        }}
                      />
                    </div>
                    <div className="col-md-6 d-flex align-items-center">
                      <label className="form-label me-3" style={{ width: "200px" }}>
                        School Admission No.
                      </label>
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.school_admission_no || ""}
                      />
                    </div>
                  </div>
                  <div className="row mb-3 mt-3">
                    <div className="col-md-6 d-flex align-items-center">
                      <label className="form-label me-3" style={{ width: "200px" }}>
                        Student Barcode
                      </label>
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.barcode || ""}
                      />
                    </div>
                    <div className="col-md-6 d-flex align-items-center">
                      <label className="form-label me-3" style={{ width: "200px" }}>
                        Cancellation Remarks
                      </label>
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.cancellationRemarks || ""}
                      />
                    </div>
                    <div className="col-md-6 d-flex align-items-center mt-3">
                      <label className="form-label me-3" style={{ width: "200px" }}>
                        Cancelled On
                      </label>
                      <input
                        type="date"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.cancelledOn || ""}
                      />
                    </div>
                    <div className="col-md-6 d-flex align-items-center mt-3">
                      <label className="form-label me-3" style={{ width: "200px" }}>
                        Status
                      </label>
                      <select
                        className="form-select"
                        value={formData.status || ""}
                        onChange={(e) =>
                          setFormData((prev) => ({
                            ...prev,
                            status: e.target.value,
                          }))
                        }
                      >
                        <option value="N">New</option>
                      </select>
                    </div>
                  </div>
                </div>

                {/* Transfer Certificate Fields - matching client SAMPLE TC format */}
                <ul className="list-unstyled mb-3 mt-3 mx-1 custom-section-box">
                  <li className="mb-3 d-flex align-items-center mt-4">
                    <span className="col-sm-1 text-end">1.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Name of the Student
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.studentname || ""}
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">2.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Name of the Father / Husband
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.father_name || ""}
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">3.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Name of the Mother
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.mother_name || ""}
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">4.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Nationality
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.nationality || ""}
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">5.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Religion and Caste
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.religion_caste || formData.category || ""}
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">6.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Date of Birth
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.dob || ""}
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">7.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Permanent Address
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        value={formData.permanent_address || formData.address || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, permanent_address: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">8.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Registration Number
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        value={formData.registration_number || formData.registration_no || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, registration_number: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">9.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Date of Admission
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        disabled={isFieldsDisabled}
                        defaultValue={formData.date_of_admission || ""}
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">10.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Class in which the student was studying at the time of leaving the college
                    </label>
                    <div className="col-sm-2">
                      <select
                        id="admitted-class"
                        className="form-select"
                        value={formData.classId}
                        onChange={handleClassChange}
                        disabled={isFieldsDisabled}
                        required
                      >
                        <option value="">Select Class</option>
                        {classes.map((classItem) => (
                          <option key={classItem.id} value={classItem.id}>
                            {classItem.classname}
                          </option>
                        ))}
                      </select>
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">11.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Whether qualified for promotion to higher class
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder=""
                        value={formData.qualified_for_promotion || ""}
                        onChange={(e) =>
                          setFormData({
                            ...formData,
                            qualified_for_promotion: e.target.value,
                          })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">12.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Reason for the issue of Transfer Certificate
                      <span style={{ color: "red" }}>*</span>
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="Enter reason"
                        value={formData.reason_for_tc || ""}
                        onChange={(e) =>
                          setFormData({
                            ...formData,
                            reason_for_tc: e.target.value,
                          })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">13.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Conduct and Character during the period of study
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder=""
                        value={formData.general_conduct || ""}
                        onChange={(e) =>
                          setFormData({
                            ...formData,
                            general_conduct: e.target.value,
                          })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">14.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Date of leaving from College
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="date"
                        className="form-control detail"
                        value={formData.date_of_leaving || ""}
                        onChange={(e) =>
                          setFormData({
                            ...formData,
                            date_of_leaving: e.target.value,
                          })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">15.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Date of Application for Certificate
                      <span style={{ color: "red" }}>*</span>
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="date"
                        className="form-control detail"
                        value={formData.tc_applied_date || ""}
                        onChange={(e) =>
                          setFormData({
                            ...formData,
                            tc_applied_date: e.target.value,
                          })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">16.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Date of Issue of Certificate
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="date"
                        className="form-control detail"
                        value={formData.tc_issued_date || ""}
                        onChange={(e) =>
                          setFormData({
                            ...formData,
                            tc_issued_date: e.target.value,
                          })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">17.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Any other remarks
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="Enter remarks"
                        style={{ resize: "both", overflow: "auto" }}
                        rows="3"
                        value={formData.other_remarks || ""}
                        onChange={(e) =>
                          setFormData({
                            ...formData,
                            other_remarks: e.target.value,
                          })
                        }
                      />
                    </div>
                  </li>
                </ul>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default TransferCertificateForm;
