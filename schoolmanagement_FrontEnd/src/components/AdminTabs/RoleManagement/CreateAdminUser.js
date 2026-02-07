import React, { useState, useEffect } from "react";
import {
  Card,
  CardContent,
  TextField,
  Button,
  Typography,
  Box,
  FormGroup,
  FormControlLabel,
  Checkbox,
  Grid,
  Alert,
  CircularProgress,
} from "@mui/material";
import { ApiUrl } from "../../../ApiUrl";

const CreateAdminUser = () => {
  const [formData, setFormData] = useState({
    user_name: "",
    password: "",
    confirmPassword: "",
  });

  const [errors, setErrors] = useState({});
  const [loading, setLoading] = useState(false);
  const [successMessage, setSuccessMessage] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  // All available modules matching the sidebar
  const availableModules = [
    { code: "dashboard", label: "Dashboard" },
    { code: "student", label: "Student" },
    { code: "staff", label: "Staff" },
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

  const [selectedModules, setSelectedModules] = useState([]);

  // Get organization and branch from session
  const organizationId = sessionStorage.getItem("organization_id");
  const branchId = sessionStorage.getItem("branch_id");

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: value,
    }));
    // Clear errors for this field
    if (errors[name]) {
      setErrors((prev) => ({
        ...prev,
        [name]: "",
      }));
    }
  };

  const handleModuleToggle = (moduleCode) => {
    setSelectedModules((prev) => {
      if (prev.includes(moduleCode)) {
        return prev.filter((code) => code !== moduleCode);
      } else {
        return [...prev, moduleCode];
      }
    });
  };

  const handleSelectAll = () => {
    if (selectedModules.length === availableModules.length) {
      setSelectedModules([]);
    } else {
      setSelectedModules(availableModules.map((m) => m.code));
    }
  };

  const validateForm = () => {
    const newErrors = {};

    if (!formData.user_name.trim()) {
      newErrors.user_name = "Username (Email) is required";
    } else if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(formData.user_name)) {
      newErrors.user_name = "Please enter a valid email address";
    }

    if (!formData.password) {
      newErrors.password = "Password is required";
    } else if (formData.password.length < 6) {
      newErrors.password = "Password must be at least 6 characters";
    }

    if (!formData.confirmPassword) {
      newErrors.confirmPassword = "Please confirm your password";
    } else if (formData.password !== formData.confirmPassword) {
      newErrors.confirmPassword = "Passwords do not match";
    }

    if (selectedModules.length === 0) {
      newErrors.modules = "Please select at least one module";
    }

    setErrors(newErrors);
    return Object.keys(newErrors).length === 0;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    if (!validateForm()) {
      return;
    }

    setLoading(true);
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const response = await fetch(`${ApiUrl.apiurl}AdminUser/Create/`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          user_name: formData.user_name,
          password: formData.password,
          organization_id: parseInt(organizationId),
          branch_id: parseInt(branchId),
          accessible_modules: selectedModules,
        }),
      });

      const data = await response.json();

      if (response.ok) {
        setSuccessMessage("Admin user created successfully!");
        // Reset form
        setFormData({
          user_name: "",
          password: "",
          confirmPassword: "",
        });
        setSelectedModules([]);
        setErrors({});
      } else {
        setErrorMessage(data.message || "Failed to create admin user");
      }
    } catch (error) {
      console.error("Error creating admin user:", error);
      setErrorMessage("An error occurred. Please try again.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <Card sx={{ maxWidth: 800, margin: "20px auto" }}>
      <CardContent>
        <Typography variant="h5" component="h2" gutterBottom align="center">
          Create New Admin User
        </Typography>

        {successMessage && (
          <Alert severity="success" sx={{ mb: 2 }} onClose={() => setSuccessMessage("")}>
            {successMessage}
          </Alert>
        )}

        {errorMessage && (
          <Alert severity="error" sx={{ mb: 2 }} onClose={() => setErrorMessage("")}>
            {errorMessage}
          </Alert>
        )}

        <form onSubmit={handleSubmit}>
          <Box sx={{ mb: 3 }}>
            <TextField
              fullWidth
              label="Username (Email)"
              name="user_name"
              type="email"
              value={formData.user_name}
              onChange={handleInputChange}
              error={!!errors.user_name}
              helperText={errors.user_name}
              required
            />
          </Box>

          <Box sx={{ mb: 3 }}>
            <TextField
              fullWidth
              label="Password"
              name="password"
              type="password"
              value={formData.password}
              onChange={handleInputChange}
              error={!!errors.password}
              helperText={errors.password}
              required
            />
          </Box>

          <Box sx={{ mb: 3 }}>
            <TextField
              fullWidth
              label="Confirm Password"
              name="confirmPassword"
              type="password"
              value={formData.confirmPassword}
              onChange={handleInputChange}
              error={!!errors.confirmPassword}
              helperText={errors.confirmPassword}
              required
            />
          </Box>

          <Box sx={{ mb: 2 }}>
            <Typography variant="h6" gutterBottom>
              Select Visible Modules
            </Typography>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 2 }}>
              Only selected modules will be visible in the sidebar for this user
            </Typography>

            {errors.modules && (
              <Alert severity="error" sx={{ mb: 2 }}>
                {errors.modules}
              </Alert>
            )}

            <Box sx={{ display: "flex", justifyContent: "space-between", mb: 2 }}>
              <Button
                variant="outlined"
                size="small"
                onClick={handleSelectAll}
              >
                {selectedModules.length === availableModules.length
                  ? "Deselect All"
                  : "Select All"}
              </Button>
              <Typography variant="body2" color="text.secondary">
                {selectedModules.length} of {availableModules.length} selected
              </Typography>
            </Box>

            <FormGroup>
              <Grid container spacing={2}>
                {availableModules.map((module) => (
                  <Grid item xs={12} sm={6} md={4} key={module.code}>
                    <FormControlLabel
                      control={
                        <Checkbox
                          checked={selectedModules.includes(module.code)}
                          onChange={() => handleModuleToggle(module.code)}
                        />
                      }
                      label={module.label}
                    />
                  </Grid>
                ))}
              </Grid>
            </FormGroup>
          </Box>

          <Box sx={{ display: "flex", justifyContent: "flex-end", gap: 2, mt: 3 }}>
            <Button
              variant="outlined"
              onClick={() => {
                setFormData({
                  user_name: "",
                  password: "",
                  confirmPassword: "",
                });
                setSelectedModules([]);
                setErrors({});
                setSuccessMessage("");
                setErrorMessage("");
              }}
            >
              Cancel
            </Button>
            <Button
              type="submit"
              variant="contained"
              color="primary"
              disabled={loading}
              startIcon={loading && <CircularProgress size={20} />}
            >
              {loading ? "Creating..." : "Create User"}
            </Button>
          </Box>
        </form>
      </CardContent>
    </Card>
  );
};

export default CreateAdminUser;
