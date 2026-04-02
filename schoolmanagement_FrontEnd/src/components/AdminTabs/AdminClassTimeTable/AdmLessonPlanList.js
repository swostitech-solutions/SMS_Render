import React, { useState, useEffect, useCallback } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import { useNavigate } from "react-router-dom";
import { ApiUrl } from "../../../ApiUrl";
import "./AdmLessonPlan.css";

const AdmLessonPlanList = () => {
  const navigate = useNavigate();

  // Get org and branch from sessionStorage
  const organizationId = sessionStorage.getItem("organization_id");
  const branchId = sessionStorage.getItem("branch_id");

  // Data
  const [lessonPlans, setLessonPlans] = useState([]);
  const [loading, setLoading] = useState(false);
  const [message, setMessage] = useState("");
  const [searchText, setSearchText] = useState("");

  // Fetch lesson plans
  const fetchLessonPlans = useCallback(async () => {
    setLoading(true);
    setMessage("");

    const params = new URLSearchParams({
      organization_id: organizationId,
      branch_id: branchId,
      _ts: Date.now().toString(),
    });

    try {
      const headers = {
        "Content-Type": "application/json",
      };

      const response = await fetch(
        `${ApiUrl.apiurl}LECTURE_PLAN/GetProfessorLecturePlanSearchList/?${params.toString()}`,
        {
          headers: headers,
          cache: "no-store",
        }
      );

      // Handle 204 No Content
      if (response.status === 204) {
        setLessonPlans([]);
        setMessage("No lesson plans found.");
        return;
      }

      if (!response.ok) {
        const errorText = await response.text();
        console.error("API Error:", response.status, errorText);
        setMessage(`Error loading lesson plans: ${response.status}`);
        return;
      }

      const result = await response.json();
      if (result.message === "success") {
        setLessonPlans(result.data || []);
        if (!result.data || result.data.length === 0) {
          setMessage("No lesson plans found for selected filters.");
        }
      } else {
        setMessage("Failed to load lesson plans.");
        setLessonPlans([]);
      }
    } catch (error) {
      console.error("Error fetching lesson plans:", error);
      setMessage("Failed to load lesson plans. Please try again.");
      setLessonPlans([]);
    } finally {
      setLoading(false);
    }
  }, [organizationId, branchId]);

  // Load initial data
  useEffect(() => {
    fetchLessonPlans();
  }, [fetchLessonPlans]);

  const handleClear = () => {
    setSearchText("");
  };

  const handleNewClick = () => {
    navigate("/admin/lesson-plan");
  };

  const handleEdit = (lessonPlan) => {
    // Navigate to edit page with lesson plan data
    navigate("/admin/lesson-plan", { state: { lessonPlan } });
  };

  const handleDelete = async (lessonPlanId) => {
    const confirmDelete = window.confirm(
      "Are you sure you want to delete this lesson plan?"
    );
    if (!confirmDelete) return;

    try {
      const orgId = sessionStorage.getItem("organization_id");
      const branchId = sessionStorage.getItem("branch_id");
      const headers = {
        "Content-Type": "application/json",
      };

      const response = await fetch(
        `${ApiUrl.apiurl}LECTURE_PLAN/DeleteLecturePlan/?organization_id=${orgId}&branch_id=${branchId}&lecture_plan_id=${lessonPlanId}`,
        {
          method: "DELETE",
          headers: headers,
        }
      );

      if (response.ok) {
        setLessonPlans(
          lessonPlans.filter(
            (item) =>
              item.LESSON_PLAN_ID !== lessonPlanId &&
              item.lecture_plan_id !== lessonPlanId
          )
        );
        setMessage("Lesson plan deleted successfully!");
      } else {
        const errorData = await response.json();
        console.error("Failed to delete:", errorData);
        setMessage("Failed to delete lesson plan.");
      }
    } catch (error) {
      console.error("Error deleting lesson plan:", error);
      setMessage("Error deleting lesson plan.");
    }
  };

  const downloadFile = (fileUrl) => {
    if (fileUrl) {
      window.open(fileUrl, "_blank");
    }
  };

  const filteredLessonPlans = lessonPlans.filter((plan) => {
    const searchValue = searchText.trim().toLowerCase();
    if (!searchValue) return true;

    const valuesToSearch = [
      plan.professor_name,
      plan.lecture_no,
      plan.module_no,
      plan.topic_details,
      plan.proposedDate || plan.proposed_date,
      plan.taught_date,
      plan.percentage_completed,
      plan.remarks,
      plan.document_file,
    ];

    return valuesToSearch.some((value) =>
      String(value || "").toLowerCase().includes(searchValue)
    );
  });

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card p-0">
            <div className="card-body">
              <p
                style={{
                  marginBottom: "10px",
                  textAlign: "center",
                  fontSize: "20px",
                  fontWeight: "700",
                }}
              >
                VIEW ALL LESSON PLANS
              </p>

              {/* Button Section */}
              <div className="row mb-3 mt-3 mx-0">
                <div className="col-12 d-flex flex-wrap gap-2">
                  <button
                    type="button"
                    className="btn btn-secondary me-2"
                    style={{ width: "150px" }}
                    onClick={handleClear}
                  >
                    Clear
                  </button>
                  <button
                    type="button"
                    className="btn btn-success me-2"
                    style={{ width: "150px" }}
                    onClick={handleNewClick}
                  >
                    + Add New
                  </button>
                </div>
              </div>

              {/* Global Search Bar */}
              <div className="row mt-3 mx-2">
                <div className="col-12 custom-section-box py-3">
                  <label className="form-label fw-bold">Search</label>
                  <input
                    type="text"
                    className="form-control"
                    placeholder="Search in all table data..."
                    value={searchText}
                    onChange={(e) => setSearchText(e.target.value)}
                  />
                </div>
              </div>

              {/* Message Display */}
              {message && (
                <div
                  className={`alert ${
                    message.includes("successfully")
                      ? "alert-success"
                      : "alert-info"
                  } alert-dismissible fade show mt-3`}
                  role="alert"
                >
                  {message}
                  <button
                    type="button"
                    className="btn-close"
                    onClick={() => setMessage("")}
                  ></button>
                </div>
              )}

              {/* Table Section */}
              <div className="table-responsive mt-4">
                <table className="table table-hover table-bordered">
                  <thead className="table-light">
                    <tr>
                      <th>Professor Name</th>
                      <th>Lecture No</th>
                      <th>Module No</th>
                      <th>Topic</th>
                      <th>Proposed Date</th>
                      <th>Taught Date</th>
                      <th>Completion %</th>
                      <th>Remarks</th>
                      <th>Document</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    {filteredLessonPlans && filteredLessonPlans.length > 0 ? (
                      filteredLessonPlans.map((plan) => {
                        const planId =
                          plan.LESSON_PLAN_ID || plan.lecture_plan_id;
                        return (
                          <tr key={planId}>
                            <td>{plan.professor_name || "--"}</td>
                            <td>{plan.lecture_no}</td>
                            <td>{plan.module_no || "--"}</td>
                            <td>{plan.topic_details || "--"}</td>
                            <td>
                              {plan.proposedDate || plan.proposed_date || "--"}
                            </td>
                            <td>{plan.taught_date || "--"}</td>
                            <td>{plan.percentage_completed || "--"}</td>
                            <td>{plan.remarks || "--"}</td>
                            <td>
                              {plan.document_file ? (
                                <button
                                  className="btn btn-sm btn-info"
                                  onClick={() =>
                                    downloadFile(plan.document_file)
                                  }
                                >
                                  Download
                                </button>
                              ) : (
                                "--"
                              )}
                            </td>
                            <td>
                              <button
                                className="btn btn-sm btn-warning me-2"
                                onClick={() => handleEdit(plan)}
                              >
                                Edit
                              </button>
                              <button
                                className="btn btn-sm btn-danger"
                                onClick={() => handleDelete(planId)}
                              >
                                Delete
                              </button>
                            </td>
                          </tr>
                        );
                      })
                    ) : (
                      <tr>
                        <td colSpan="10" className="text-center py-4">
                          {loading ? "Loading..." : "No lesson plans found"}
                        </td>
                      </tr>
                    )}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AdmLessonPlanList;
