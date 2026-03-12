import React, { useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { ApiUrl } from "../../../ApiUrl";

const getTodayStr = () => {
  const today = new Date();
  const dd = String(today.getDate()).padStart(2, "0");
  const mm = String(today.getMonth() + 1).padStart(2, "0");
  const yyyy = today.getFullYear();
  return `${dd}-${mm}-${yyyy}`;
};

const getTodayISO = () => {
  const today = new Date();
  return today.toISOString().split("T")[0];
};

const CharacterCertificateEdit = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const certificate = location.state?.certificate || {};

  const [formData, setFormData] = useState({
    studentname: certificate.student_name || "",
    father_name: certificate.father_name || "",
    document_no: certificate.document_no || "",
    from_month: certificate.from_month || "",
    to_month: certificate.to_month || "",
  });

  const handleClose = () => {
    navigate("/admin/student-certificate");
  };

  const handleSave = async () => {
    try {
      const certId = certificate.id;
      const org_id = localStorage.getItem("orgId");
      const branch_id = localStorage.getItem("branchId");
      const todayISO = getTodayISO();

      const payload = {
        issue_date: todayISO,
        father_name: formData.father_name || "",
        from_month: formData.from_month || "",
        to_month: formData.to_month || "",
      };

      const response = await fetch(
        `${ApiUrl.apiurl}StudentCertificate/update/?organization_id=${org_id}&branch_id=${branch_id}&student_certificate_id=${certId}&document_type=CC`,
        {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(payload),
        }
      );

      if (response.ok) {
        alert("Conduct Certificate updated successfully!");
        navigate("/admin/student-certificate");
      } else {
        const error = await response.json();
        alert(`Error updating Conduct Certificate: ${error.message}`);
      }
    } catch (error) {
      console.error("Error while updating:", error);
      alert("An error occurred while updating the Conduct Certificate.");
    }
  };

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card p-0">
            <div className="card-body">
              <h3 className="text-center mb-4">Conduct Certificate (Edit)</h3>

              {/* Action Buttons */}
              <div className="row mb-3 mt-3 mx-0">
                <div className="col-12 d-flex flex-wrap gap-2">
                  <button
                    type="button"
                    className="btn btn-primary me-2"
                    style={{ width: "150px" }}
                    onClick={handleSave}
                  >
                    Update
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

              {/* Certificate Template */}
              <div
                style={{
                  border: "2px solid #000",
                  padding: "40px 50px",
                  maxWidth: "800px",
                  margin: "0 auto",
                  backgroundColor: "#fff",
                  fontFamily: "serif",
                  position: "relative",
                }}
              >
                {/* Corner marks */}
                <div style={{ position: "absolute", top: "8px", left: "8px", width: "30px", height: "30px", borderTop: "3px solid #000", borderLeft: "3px solid #000" }} />
                <div style={{ position: "absolute", top: "8px", right: "8px", width: "30px", height: "30px", borderTop: "3px solid #000", borderRight: "3px solid #000" }} />
                <div style={{ position: "absolute", bottom: "8px", left: "8px", width: "30px", height: "30px", borderBottom: "3px solid #000", borderLeft: "3px solid #000" }} />
                <div style={{ position: "absolute", bottom: "8px", right: "8px", width: "30px", height: "30px", borderBottom: "3px solid #000", borderRight: "3px solid #000" }} />

                {/* College Header */}
                <p style={{ fontWeight: "bold", fontSize: "14px", marginBottom: "30px", textTransform: "uppercase", letterSpacing: "0.5px" }}>
                  Sparsh College of Nursing &amp; Allied Sciences: Kantabada : BBSR.
                </p>

                {/* Ref No and Date Row */}
                <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", marginBottom: "30px" }}>
                  <div style={{ display: "flex", alignItems: "center", gap: "10px" }}>
                    <span style={{ fontWeight: "bold", fontSize: "14px", whiteSpace: "nowrap" }}>REF.NO</span>
                    <input
                      type="text"
                      disabled
                      value={formData.document_no || ""}
                      style={{
                        border: "none",
                        borderBottom: "1px solid #000",
                        outline: "none",
                        width: "180px",
                        fontFamily: "serif",
                        fontSize: "14px",
                        background: "transparent",
                      }}
                    />
                  </div>
                  <div style={{ display: "flex", alignItems: "center", gap: "10px" }}>
                    <span style={{ fontWeight: "bold", fontSize: "14px" }}>DATE :</span>
                    <input
                      type="text"
                      disabled
                      value={getTodayStr()}
                      style={{
                        border: "none",
                        borderBottom: "1px solid #000",
                        outline: "none",
                        width: "140px",
                        fontFamily: "serif",
                        fontSize: "14px",
                        background: "transparent",
                        color: "#000",
                      }}
                    />
                  </div>
                </div>

                {/* Title */}
                <h4 style={{ textAlign: "center", fontWeight: "bold", textDecoration: "underline", fontSize: "18px", textTransform: "uppercase", marginBottom: "40px", letterSpacing: "2px" }}>
                  Conduct Certificate
                </h4>

                {/* Certificate Body */}
                <div style={{ fontSize: "15px", lineHeight: "2.8", fontWeight: "bold", textTransform: "uppercase" }}>
                  <div style={{ display: "flex", alignItems: "baseline", flexWrap: "wrap", gap: "6px", marginBottom: "10px" }}>
                    <span>IT IS TO CERTIFY THAT</span>
                    <input
                      type="text"
                      disabled
                      value={formData.studentname || ""}
                      style={{
                        border: "none",
                        borderBottom: "1px solid #000",
                        outline: "none",
                        minWidth: "200px",
                        fontFamily: "serif",
                        fontSize: "15px",
                        fontWeight: "bold",
                        background: "transparent",
                        color: "#000",
                        textTransform: "uppercase",
                        textAlign: "center",
                      }}
                    />
                    <span>D/O, S/O</span>
                  </div>

                  <div style={{ display: "flex", alignItems: "baseline", flexWrap: "wrap", gap: "6px", marginBottom: "10px" }}>
                    <input
                      type="text"
                      value={formData.father_name || ""}
                      onChange={(e) => setFormData((prev) => ({ ...prev, father_name: e.target.value }))}
                      style={{
                        border: "none",
                        borderBottom: "1px solid #000",
                        outline: "none",
                        minWidth: "260px",
                        fontFamily: "serif",
                        fontSize: "15px",
                        fontWeight: "bold",
                        background: "transparent",
                        color: "#000",
                        textTransform: "uppercase",
                        textAlign: "center",
                      }}
                    />
                    <span>WHO HAS STUDIED IN THIS INSTITUTION FROM</span>
                  </div>

                  <div style={{ display: "flex", alignItems: "baseline", flexWrap: "wrap", gap: "6px", marginBottom: "10px" }}>
                    <input
                      type="text"
                      value={formData.from_month || ""}
                      onChange={(e) => setFormData((prev) => ({ ...prev, from_month: e.target.value }))}
                      style={{
                        border: "none",
                        borderBottom: "1px solid #000",
                        outline: "none",
                        width: "160px",
                        fontFamily: "serif",
                        fontSize: "15px",
                        fontWeight: "bold",
                        background: "transparent",
                        textAlign: "center",
                        textTransform: "uppercase",
                      }}
                    />
                    <span>TO</span>
                    <input
                      type="text"
                      value={formData.to_month || ""}
                      onChange={(e) => setFormData((prev) => ({ ...prev, to_month: e.target.value }))}
                      style={{
                        border: "none",
                        borderBottom: "1px solid #000",
                        outline: "none",
                        width: "160px",
                        fontFamily: "serif",
                        fontSize: "15px",
                        fontWeight: "bold",
                        background: "transparent",
                        textAlign: "center",
                        textTransform: "uppercase",
                      }}
                    />
                    <span>BEARS A GOOD</span>
                  </div>

                  <div>
                    <span>CHARACTER &amp; CONDUCT.</span>
                  </div>
                </div>

                {/* Principal Signature */}
                <div style={{ textAlign: "right", marginTop: "80px", fontWeight: "bold", fontSize: "15px", textTransform: "uppercase" }}>
                  <div style={{ borderTop: "1px solid #000", display: "inline-block", minWidth: "160px", paddingTop: "6px" }}>
                    PRINCIPAL
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default CharacterCertificateEdit;
