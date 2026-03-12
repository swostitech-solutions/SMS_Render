import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import useCourses from "../../hooks/useFetchClasses";
import { ApiUrl } from "../../../ApiUrl";

const ConductCertificate = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const studentData = location.state || {};
  const [formData, setFormData] = useState({
    ...studentData,
    ...studentData.studentcertificatedetails,
  });
  const [isFieldsDisabled, setIsFieldsDisabled] = useState(false);

  useEffect(() => {
    const documentType = localStorage.getItem("selectedDocumentType");
    if (documentType === "CC") {
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

  const handleSave = async () => {
    try {
      // Validate required fields
      if (!formData.tc_applied_date) {
        alert("Date of Application for Certificate is required.");
        return;
      }
      if (!formData.tc_issued_date) {
        alert("Date of Issue of Certificate is required.");
        return;
      }

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

      const payload = {
        student,
        session,
        org_id,
        branch_id,
        document_type,
        transfer_certificate_no_prefix: prefix,
        transfer_certificate_no_postfix: postfix,
        transfer_certificate_no: formData.transfer_certificate_no || "",
        transfer_certificate_id: 0,
        tc_applied_date: formData.tc_applied_date || null,
        tc_issued_date: formData.tc_issued_date || null,
        general_conduct: formData.general_conduct || "Good",
        other_remarks: formData.other_remarks || "",
        status: formData.status || "N",
        from_month: formData.from_month || "",
        to_month: formData.to_month || "",
        reason_for_tc: formData.reason_for_tc || "",
        cancelled_on: formData.cancelled_on || null,
        cancelled_remarks: formData.cancelled_remarks || "",
        cancelled_by: formData.cancelled_by || "",
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
        alert("Conduct Certificate saved successfully!");
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
        alert(`Error saving Conduct Certificate: ${error.message}`);
      }
    } catch (error) {
      console.error("Error while saving:", error);
      alert("An error occurred while saving the Conduct Certificate.");
    }
  };

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card p-0">
            <div className="card-body">
              <h3 className="text-center mb-4">Conduct Certificate</h3>
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
                <div className="col-12 mb-3 custom-section-box">
                  <div className="row mb-3 mt-3">
                    <div className="col-md-6 d-flex align-items-center">
                      <label className="form-label me-3" style={{ width: "200px" }}>
                        Ref. No.
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
                        Status
                      </label>
                      <select className="detail">
                        <option value="">New</option>
                      </select>
                    </div>
                  </div>
                  <div className="row mb-3">
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
                  <div className="row mb-3">
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
                    <div className="col-md-6 d-flex align-items-center">
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
                  </div>
                </div>

                {/* Conduct Certificate Fields - matching client format */}
                <ul className="list-unstyled mb-3 mt-3 custom-section-box">
                  <li className="mb-3 d-flex mt-3 align-items-center">
                    <span className="col-sm-1 text-end">1.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Student Name
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
                      D/O, S/O (Father's / Guardian's Name)
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
                      Studied in this Institution From
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="e.g. June 2022"
                        value={formData.from_month || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, from_month: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">4.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Studied in this Institution To
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="e.g. May 2026"
                        value={formData.to_month || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, to_month: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">5.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Character & Conduct
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="e.g. Good"
                        value={formData.general_conduct || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, general_conduct: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">6.</span>
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
                    <span className="col-sm-1 text-end">7.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Date of Issue of Certificate
                      <span style={{ color: "red" }}>*</span>
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
                    <span className="col-sm-1 text-end">8.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Remarks
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

export default ConductCertificate;
