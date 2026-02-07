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
  Paper,
  Divider,
  Chip,
} from "@mui/material";
import PersonAddIcon from "@mui/icons-material/PersonAdd";
import LockIcon from "@mui/icons-material/Lock";
import SecurityIcon from "@mui/icons-material/Security";
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
      newErrors.user_name = "Username is required";
    } else if (formData.user_name.length < 3) {
      newErrors.user_name = "Username must be at least 3 characters";
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
    <Card sx={{ maxWidth: 900, margin: "20px auto", boxShadow: 3 }}>
      <CardContent sx={{ p: 4 }}>
        <Box sx={{ display: "flex", alignItems: "center", justifyContent: "center", mb: 3 }}>
          <PersonAddIcon sx={{ fontSize: 40, color: "primary.main", mr: 2 }} />
          <Typography variant="h4" component="h2" sx={{ fontWeight: 600, color: "primary.main" }}>
            Create Admin User
          </Typography>
        </Box>
        <Divider sx={{ mb: 3 }} />

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
              label="Username"
              name="user_name"
              type="text"
              value={formData.user_name}
              onChange={handleInputChange}
              error={!!errors.user_name}
              helperText={errors.user_name}
              placeholder="Enter username"
              required
              variant="outlined"
              InputProps={{
                startAdornment: <PersonAddIcon sx={{ color: "action.active", mr: 1 }} />,
              }}
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
              placeholder="Minimum 6 characters"
              required
              variant="outlined"
              InputProps={{
                startAdornment: <LockIcon sx={{ color: "action.active", mr: 1 }} />,
              }}
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
              placeholder="Re-enter password"
              required
              variant="outlined"
              InputProps={{
                startAdornment: <LockIcon sx={{ color: "action.active", mr: 1 }} />,
              }}
            />
          </Box>

          <Paper elevation={2} sx={{ p: 3, mb: 3, backgroundColor: "#f8f9fa" }}>
            <Box sx={{ display: "flex", alignItems: "center", mb: 2 }}>
              <SecurityIcon sx={{ color: "primary.main", mr: 1.5 }} />
              <Typography variant="h6" sx={{ fontWeight: 600, color: "primary.main" }}>
                Module Access Permissions
              </Typography>
            </Box>
            <Typography variant="body2" color="text.secondary" sx={{ mb: 3 }}>
              Select which modules this admin user can access. User will only have permissions for checked modules.
            </Typography>

            {errors.modules && (
              <Alert severity="error" sx={{ mb: 2 }}>
                {errors.modules}
              </Alert>
            )}

            <Box sx={{ display: "flex", justifyContent: "space-between", alignItems: "center", mb: 3 }}>
              <Button
                variant="contained"
                size="medium"
                onClick={handleSelectAll}
                sx={{ borderRadius: 2 }}
              >
                {selectedModules.length === availableModules.length
                  ? "Deselect All"
                  : "Select All"}
              </Button>
              <Chip 
                label={`${selectedModules.length} of ${availableModules.length} selected`}
                color="primary"
                variant="outlined"
              />
            </Box>

            <FormGroup>
              <Grid container spacing={2}>
                {availableModules.map((module) => (
                  <Grid item xs={12} sm={6} md={4} key={module.code}>
                    <Paper 
                      elevation={selectedModules.includes(module.code) ? 3 : 1}
                      sx={{ 
                        p: 1.5, 
                        borderRadius: 2,
                        backgroundColor: selectedModules.includes(module.code) ? "primary.light" : "white",
                        transition: "all 0.3s ease",
                        border: selectedModules.includes(module.code) ? "2px solid" : "1px solid",
                        borderColor: selectedModules.includes(module.code) ? "primary.main" : "divider",
                        "&:hover": {
                          boxShadow: 4,
                          transform: "translateY(-2px)"
                        }
                      }}
                    >
                      <FormControlLabel
                        control={
                          <Checkbox
                            checked={selectedModules.includes(module.code)}
                            onChange={() => handleModuleToggle(module.code)}
                            sx={{ color: selectedModules.includes(module.code) ? "primary.contrastText" : "inherit" }}
                          />
                        }
                        label={
                          <Typography 
                            sx={{ 
                              fontWeight: selectedModules.includes(module.code) ? 600 : 400,
                              color: selectedModules.includes(module.code) ? "primary.contrastText" : "text.primary"
                            }}
                          >
                            {module.label}
                          </Typography>
                        }
                      />
                    </Paper>
                  </Grid>
                ))}
              </Grid>
            </FormGroup>
          </Paper>

          <Divider sx={{ my: 3 }} />
          <Box sx={{ display: "flex", justifyContent: "flex-end", gap: 2 }}>
            <Button
              variant="outlined"
              size="large"
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
              sx={{ borderRadius: 2, px: 4 }}
            >
              Reset
            </Button>
            <Button
              type="submit"
              variant="contained"
              color="primary"
              size="large"
              disabled={loading}
              startIcon={loading ? <CircularProgress size={20} color="inherit" /> : <PersonAddIcon />}
              sx={{ borderRadius: 2, px: 4 }}
            >
              {loading ? "Creating User..." : "Create Admin User"}
            </Button>
          </Box>
        </form>
      </CardContent>
    </Card>
  );
};

export default CreateAdminUser;
