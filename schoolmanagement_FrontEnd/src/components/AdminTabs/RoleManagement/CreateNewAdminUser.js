import React, { useState, useEffect } from "react";
import Select from "react-select";
import { useNavigate } from "react-router-dom";
import { InputGroup } from "react-bootstrap";
import { BsEye, BsEyeSlash } from "react-icons/bs";
import { ApiUrl } from "../../../ApiUrl";
import "./CreateAdminUser.css";

const CreateNewAdminUser = () => {
  const navigate = useNavigate();

  // State management
  const [nonTeachingStaffList, setNonTeachingStaffList] = useState([]);
  const [loading, setLoading] = useState(false);
  const [formData, setFormData] = useState({
    roleName: "",
    userName: "",
    password: "",
    confirmPassword: "",
    nonTeachingStaff: null,
  });
  const [selectedModules, setSelectedModules] = useState([]);
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [errors, setErrors] = useState({});
  const [successMessage, setSuccessMessage] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  // All available modules matching the sidebar
  const availableModules = [
    { code: "dashboard", label: "Dashboard" },
    { code: "student", label: "Student" },
    { code: "staff", label: "Staff" },
    { code: "non_teaching_staff", label: "Non-Teaching Staff" },
    { code: "fee", label: "Fee" },
    { code: "library", label: "Library" },
    { code: "exam_results", label: "Exam Results" },
    { code: "transport", label: "Transport" },
    { code: "expense", label: "Expense" },
    { code: "other_income", label: "Other Income" },
    { code: "hostel", label: "Hostel" },
    { code: "timetable", label: "TimeTable" },
    { code: "lessonplan", label: "LessonPlan" },
    { code: "mentor", label: "Mentor" },
    { code: "academics", label: "Academics" },
    { code: "grievance", label: "Grievance" },
    { code: "visitors", label: "Visitors" },
    { code: "mou", label: "MOU" },
    { code: "training_placements", label: "Training and Placements" },
    { code: "inventory", label: "Inventory Management" },
  ];

  // Get organization and branch from session/local storage
  const getOrgId = () => sessionStorage.getItem("org_id") || localStorage.getItem("orgId");
  const getBranchId = () => sessionStorage.getItem("branch_id") || localStorage.getItem("branchId");
  const getAccessToken = () => localStorage.getItem("accessToken");

  // Fetch non-teaching staff list on component mount
  useEffect(() => {
    fetchNonTeachingStaff();
  }, []);

  // Fetch non-teaching staff list
  const fetchNonTeachingStaff = async () => {
    try {
      const orgId = getOrgId();
      const branchId = getBranchId();

      const response = await fetch(
        `${ApiUrl.apiurl}NON_TEACHING_STAFF/List/?org_id=${orgId}&branch_id=${branchId}`,
        {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${getAccessToken()}`,
          },
        }
      );

      if (response.ok) {
        const result = await response.json();
        if (result.data) {
          const staffOptions = result.data.map((staff) => ({
            value: staff.nts_id,
            label: `${staff.first_name} ${staff.last_name}`,
          }));
          setNonTeachingStaffList(staffOptions);
        }
      }
    } catch (error) {
      console.error("Error fetching non-teaching staff:", error);
    }
  };

  // Handle input change
  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    if (errors[name]) {
      setErrors((prev) => ({ ...prev, [name]: "" }));
    }
  };

  // Handle dropdown change
  const handleDropdownChange = (selectedOption) => {
    setFormData((prev) => ({
      ...prev,
      nonTeachingStaff: selectedOption,
    }));
    if (errors.nonTeachingStaff) {
      setErrors((prev) => ({ ...prev, nonTeachingStaff: "" }));
    }
  };

  // Handle module toggle
  const handleModuleToggle = (moduleCode) => {
    setSelectedModules((prev) => {
      if (prev.includes(moduleCode)) {
        return prev.filter((code) => code !== moduleCode);
      } else {
        return [...prev, moduleCode];
      }
    });
    if (errors.modules) {
      setErrors((prev) => ({ ...prev, modules: "" }));
    }
  };

  // Handle select all modules
  const handleSelectAll = () => {
    if (selectedModules.length === availableModules.length) {
      setSelectedModules([]);
    } else {
      setSelectedModules(availableModules.map((m) => m.code));
    }
  };

  // Validate form
  const validateForm = () => {
    const newErrors = {};

    if (!formData.roleName.trim()) {
      newErrors.roleName = "Role Name is required";
    }

    if (!formData.userName.trim()) {
      newErrors.userName = "Username is required";
    } else if (formData.userName.length < 3) {
      newErrors.userName = "Username must be at least 3 characters";
    }

    if (!formData.password) {
      newErrors.password = "Password is required";
    } else if (formData.password.length < 6) {
      newErrors.password = "Password must be at least 6 characters";
    }

    if (!formData.confirmPassword) {
      newErrors.confirmPassword = "Please confirm password";
    } else if (formData.password !== formData.confirmPassword) {
      newErrors.confirmPassword = "Passwords do not match";
    }

    if (!formData.nonTeachingStaff) {
      newErrors.nonTeachingStaff = "Non-Teaching Staff is required";
    }

    if (selectedModules.length === 0) {
      newErrors.modules = "Please select at least one module";
    }

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  // Handle save
  const handleSave = async () => {
    if (!validateForm()) {
      return;
    }

    setLoading(true);
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const orgId = getOrgId();
      const branchId = getBranchId();

      const response = await fetch(`${ApiUrl.apiurl}AdminUser/Create/`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${getAccessToken()}`,
        },
        body: JSON.stringify({
          user_name: formData.userName,
          password: formData.password,
          role_name: formData.roleName,
          organization_id: parseInt(orgId),
          branch_id: parseInt(branchId),
          reference_id: formData.nonTeachingStaff ? formData.nonTeachingStaff.value : null,
          accessible_modules: selectedModules,
        }),
      });

      const result = await response.json();

      if (response.ok || result.message?.toLowerCase().includes("success")) {
        setSuccessMessage("Admin user created successfully!");
        setTimeout(() => {
          navigate("/admin/create-admin-user");
        }, 2000);
      } else {
        setErrorMessage(result.message || "Failed to create admin user");
      }
    } catch (error) {
      console.error("Error creating admin user:", error);
      setErrorMessage("An error occurred. Please try again.");
    } finally {
      setLoading(false);
    }
  };

  // Handle clear
  const handleClear = () => {
    setFormData({
      roleName: "",
      userName: "",
      password: "",
      confirmPassword: "",
      nonTeachingStaff: null,
    });
    setSelectedModules([]);
    setErrors({});
    setSuccessMessage("");
    setErrorMessage("");
  };

  // Handle close
  const handleClose = () => {
    navigate("/admin/create-admin-user");
  };

  return (
    <div className="create-admin-user-container">
      <div className="container-fluid">
        <div className="row mt-4">
          <div className="col-12">
            <div className="card">
              <div className="card-header bg-primary text-white">
                <h4 className="mb-0">Create New Admin User</h4>
              </div>
              <div className="card-body">
                {/* Action Buttons */}
                <div className="d-flex gap-2 mb-3">
                  <button
                    className="btn btn-primary"
                    onClick={handleSave}
                    disabled={loading}
                  >
                    {loading ? "Saving..." : "Save"}
                  </button>
                  <button className="btn btn-secondary" onClick={handleClear}>
                    Clear
                  </button>
                  <button className="btn btn-danger" onClick={handleClose}>
                    Close
                  </button>
                </div>

                {/* Success/Error Messages */}
                {successMessage && (
                  <div className="alert alert-success alert-dismissible fade show" role="alert">
                    {successMessage}
                    <button
                      type="button"
                      className="btn-close"
                      onClick={() => setSuccessMessage("")}
                    ></button>
                  </div>
                )}

                {errorMessage && (
                  <div className="alert alert-danger alert-dismissible fade show" role="alert">
                    {errorMessage}
                    <button
                      type="button"
                      className="btn-close"
                      onClick={() => setErrorMessage("")}
                    ></button>
                  </div>
                )}

                {/* Form */}
                <div className="row">
                  <div className="col-md-6">
                    <div className="form-group mb-3">
                      <label className="form-label">
                        Role Name <span className="text-danger">*</span>
                      </label>
                      <input
                        type="text"
                        className={`form-control ${errors.roleName ? "is-invalid" : ""}`}
                        name="roleName"
                        value={formData.roleName}
                        onChange={handleInputChange}
                        placeholder="Enter role name (e.g., Admin Manager, HR Admin)"
                      />
                      {errors.roleName && (
                        <div className="invalid-feedback">{errors.roleName}</div>
                      )}
                    </div>
                  </div>

                  <div className="col-md-6">
                    <div className="form-group mb-3">
                      <label className="form-label">
                        Username <span className="text-danger">*</span>
                      </label>
                      <input
                        type="text"
                        className={`form-control ${errors.userName ? "is-invalid" : ""}`}
                        name="userName"
                        value={formData.userName}
                        onChange={handleInputChange}
                        placeholder="Enter username (min 3 characters)"
                      />
                      {errors.userName && (
                        <div className="invalid-feedback">{errors.userName}</div>
                      )}
                    </div>
                  </div>

                  <div className="col-md-6">
                    <div className="form-group mb-3">
                      <label className="form-label">
                        Non-Teaching Staff <span className="text-danger">*</span>
                      </label>
                      <Select
                        options={nonTeachingStaffList}
                        value={formData.nonTeachingStaff}
                        onChange={handleDropdownChange}
                        placeholder="Select Non-Teaching Staff"
                        isClearable
                        className={errors.nonTeachingStaff ? "is-invalid" : ""}
                      />
                      {errors.nonTeachingStaff && (
                        <div className="text-danger small mt-1">
                          {errors.nonTeachingStaff}
                        </div>
                      )}
                    </div>
                  </div>

                  <div className="col-md-6">
                    <div className="form-group mb-3">
                      <label className="form-label">
                        Password <span className="text-danger">*</span>
                      </label>
                      <InputGroup hasValidation>
                        <input
                          type={showPassword ? "text" : "password"}
                          className={`form-control ${errors.password ? "is-invalid" : ""}`}
                          name="password"
                          value={formData.password}
                          onChange={handleInputChange}
                          placeholder="Enter password (min 6 characters)"
                        />
                        <InputGroup.Text
                          style={{
                            cursor: "pointer",
                            backgroundColor: "#fff",
                            borderColor: errors.password ? "#dc3545" : "#ced4da",
                          }}
                          onClick={() => setShowPassword(!showPassword)}
                        >
                          {showPassword ? (
                            <BsEyeSlash size={18} />
                          ) : (
                            <BsEye size={18} />
                          )}
                        </InputGroup.Text>
                        {errors.password && (
                          <div className="invalid-feedback" style={{ display: "block" }}>
                            {errors.password}
                          </div>
                        )}
                      </InputGroup>
                    </div>
                  </div>

                  <div className="col-md-6">
                    <div className="form-group mb-3">
                      <label className="form-label">
                        Confirm Password <span className="text-danger">*</span>
                      </label>
                      <InputGroup hasValidation>
                        <input
                          type={showConfirmPassword ? "text" : "password"}
                          className={`form-control ${errors.confirmPassword ? "is-invalid" : ""}`}
                          name="confirmPassword"
                          value={formData.confirmPassword}
                          onChange={handleInputChange}
                          placeholder="Re-enter password"
                        />
                        <InputGroup.Text
                          style={{
                            cursor: "pointer",
                            backgroundColor: "#fff",
                            borderColor: errors.confirmPassword ? "#dc3545" : "#ced4da",
                          }}
                          onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                        >
                          {showConfirmPassword ? (
                            <BsEyeSlash size={18} />
                          ) : (
                            <BsEye size={18} />
                          )}
                        </InputGroup.Text>
                        {errors.confirmPassword && (
                          <div className="invalid-feedback" style={{ display: "block" }}>
                            {errors.confirmPassword}
                          </div>
                        )}
                      </InputGroup>
                    </div>
                  </div>
                </div>

                {/* Module Access Permissions */}
                <div className="card mb-3">
                  <div className="card-header bg-light">
                    <h5 className="mb-0">Module Access Permissions</h5>
                    <small className="text-muted">
                      Select which modules this admin user can access
                    </small>
                  </div>
                  <div className="card-body">
                    {errors.modules && (
                      <div className="alert alert-danger" role="alert">
                        {errors.modules}
                      </div>
                    )}

                    <div className="d-flex justify-content-between align-items-center mb-3">
                      <button
                        type="button"
                        className="btn btn-sm btn-outline-primary"
                        onClick={handleSelectAll}
                      >
                        {selectedModules.length === availableModules.length
                          ? "Deselect All"
                          : "Select All"}
                      </button>
                      <span className="badge bg-primary">
                        {selectedModules.length} of {availableModules.length} selected
                      </span>
                    </div>

                    <div className="row">
                      {availableModules.map((module) => (
                        <div className="col-md-4 col-sm-6" key={module.code}>
                          <div className="form-check mb-2">
                            <input
                              className="form-check-input"
                              type="checkbox"
                              id={`module-${module.code}`}
                              checked={selectedModules.includes(module.code)}
                              onChange={() => handleModuleToggle(module.code)}
                            />
                            <label
                              className="form-check-label"
                              htmlFor={`module-${module.code}`}
                            >
                              {module.label}
                            </label>
                          </div>
                        </div>
                      ))}
                    </div>
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

export default CreateNewAdminUser;
