import React, { useState, useEffect } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import useCourses from "../../hooks/useFetchClasses";
import { ApiUrl } from "../../../ApiUrl";

const BonafideCertificateForm = () => {
  const navigate = useNavigate();
  const location = useLocation();
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
    if (documentType === "BC") {
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

      const transferCertificateNo = formData.transfer_certificate_no || "";

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
        tc_issued_date: formData.tc_issued_date || null,
        other_remarks: formData.other_remarks || "",
        status: formData.status || "N",
        class_last_studied: formData.classId || "",
        cancelled_on: formData.cancelled_on || null,
        cancelled_remarks: formData.cancelled_remarks || "",
        cancelled_by: formData.cancelled_by || "",
        // Bonafide specific fields
        course_name: formData.course_name || "",
        academic_year: formData.academic_year || "",
        admission_quota: formData.admission_quota || "",
        current_year: formData.current_year || "",
        purpose: formData.purpose || "Educational Loan Purpose",
        // Fee structure fields
        course_fee: formData.course_fee || "",
        hostel_fee: formData.hostel_fee || "",
        miscellaneous_fee: formData.miscellaneous_fee || "",
        grand_total: formData.grand_total || "",
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
        alert("Bonafide Certificate saved successfully!");
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
        alert(`Error saving Bonafide Certificate: ${error.message}`);
      }
    } catch (error) {
      console.error("Error while saving:", error);
      alert("An error occurred while saving the Bonafide Certificate.");
    }
  };

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card p-0">
            <div className="card-body">
              <h3 className="text-center mb-4">Bonafide Certificate</h3>
              <div className="row mb-2 mt-3 mx-0">
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
                <div className="col-12 mb-3 mt-3 custom-section-box">
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
                      <select className="detail">
                        <option value="">New</option>
                      </select>
                    </div>
                  </div>
                </div>

                {/* Bonafide Certificate Fields - matching client format */}
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
                      Father's / Guardian's Name
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
                      Mother's Name
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
                      Course
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        value={formData.course_name || formData.coursename || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, course_name: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">5.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Academic Year
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        value={formData.academic_year || formData.academicyear || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, academic_year: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">6.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Admission Quota
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="e.g. Management / Government"
                        value={formData.admission_quota || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, admission_quota: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">7.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Current Year of Study
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="e.g. 1st Year, 2nd Year"
                        value={formData.current_year || ""}
                        onChange={(e) =>
                          setFormData({ ...formData, current_year: e.target.value })
                        }
                      />
                    </div>
                  </li>

                  <li className="mb-3 d-flex align-items-center">
                    <span className="col-sm-1 text-end">8.</span>
                    <label className="col-sm-3 col-form-label ms-2">
                      Purpose of Certificate
                    </label>
                    <div className="col-sm-6">
                      <input
                        type="text"
                        className="form-control detail"
                        placeholder="e.g. Educational Loan Purpose"
                        value={formData.purpose || "Educational Loan Purpose"}
                        onChange={(e) =>
                          setFormData({ ...formData, purpose: e.target.value })
                        }
                      />
                    </div>
                  </li>
                </ul>

                {/* Fees Structure Section */}
                <div className="mb-3 mt-3 custom-section-box p-3">
                  <h5 className="mb-3">Fees Structure</h5>
                  <div className="table-responsive">
                    <table className="table table-bordered">
                      <thead>
                        <tr>
                          <th>SL NO</th>
                          <th>PARTICULARS</th>
                          <th>Amount</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>Course Fee</td>
                          <td>
                            <input
                              type="text"
                              className="form-control detail"
                              value={formData.course_fee || ""}
                              onChange={(e) =>
                                setFormData({ ...formData, course_fee: e.target.value })
                              }
                            />
                          </td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>Hostel Fee</td>
                          <td>
                            <input
                              type="text"
                              className="form-control detail"
                              value={formData.hostel_fee || ""}
                              onChange={(e) =>
                                setFormData({ ...formData, hostel_fee: e.target.value })
                              }
                            />
                          </td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td>Miscellaneous Fee</td>
                          <td>
                            <input
                              type="text"
                              className="form-control detail"
                              value={formData.miscellaneous_fee || ""}
                              onChange={(e) =>
                                setFormData({ ...formData, miscellaneous_fee: e.target.value })
                              }
                            />
                          </td>
                        </tr>
                        <tr>
                          <td>4</td>
                          <td><strong>Grand Total</strong></td>
                          <td>
                            <input
                              type="text"
                              className="form-control detail"
                              value={formData.grand_total || ""}
                              onChange={(e) =>
                                setFormData({ ...formData, grand_total: e.target.value })
                              }
                            />
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>

                {/* Dates and Remarks */}
                <ul className="list-unstyled mb-3 mt-3 custom-section-box">
                  <li className="mb-3 d-flex mt-3 align-items-center">
                    <span className="col-sm-1 text-end">9.</span>
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
                    <span className="col-sm-1 text-end">10.</span>
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
                    <span className="col-sm-1 text-end">11.</span>
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

export default BonafideCertificateForm;
