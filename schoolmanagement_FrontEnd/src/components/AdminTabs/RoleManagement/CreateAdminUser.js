import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { Modal } from "react-bootstrap";
import { FaEdit, FaTrash } from "react-icons/fa";
import { ApiUrl } from "../../../ApiUrl";
import EditAdminUserModal from "./EditAdminUserModal";
import "./CreateAdminUser.css";

const CreateAdminUser = () => {
  const navigate = useNavigate();
  
  // State management
  const [roles, setRoles] = useState([]);
  const [filteredRoles, setFilteredRoles] = useState([]);
  const [staffMap, setStaffMap] = useState({});
  const [showEditModal, setShowEditModal] = useState(false);
  const [selectedRole, setSelectedRole] = useState(null);
  const [searchTerm, setSearchTerm] = useState("");

  // Get access token and org/branch
  const getAccessToken = () => localStorage.getItem("accessToken");
  const getOrgId = () => sessionStorage.getItem("org_id") || localStorage.getItem("orgId");
  const getBranchId = () => sessionStorage.getItem("branch_id") || localStorage.getItem("branchId");

  // Fetch existing roles on component mount
  useEffect(() => {
    fetchStaffList();
    fetchRoles();
  }, []);

  // Update filtered roles when roles change or search term changes
  useEffect(() => {
    if (searchTerm.trim() === "") {
      setFilteredRoles(roles);
    } else {
      const filtered = roles.filter((role) => {
        const roleNameMatch = role.role_name?.toLowerCase().includes(searchTerm.toLowerCase());
        const userNameMatch = role.user_name?.toLowerCase().includes(searchTerm.toLowerCase());
        return roleNameMatch || userNameMatch;
      });
      setFilteredRoles(filtered);
    }
  }, [roles, searchTerm]);

  // Fetch staff list to map reference_id to names
  const fetchStaffList = async () => {
    try {
      const orgId = getOrgId();
      const branchId = getBranchId();

      const response = await fetch(
        `${ApiUrl.apiurl}STAFF/RegistrationstaffList/?organization_id=${orgId}&branch_id=${branchId}`,
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
          // Create a map of employee id -> name
          const map = {};
          result.data.forEach((staff) => {
            map[staff.id] = staff.employee_name;
          });
          setStaffMap(map);
        }
      }
    } catch (error) {
      console.error("Error fetching staff list:", error);
    }
  };

  // Fetch all admin user roles
  const fetchRoles = async (searchQuery = "") => {
    try {
      const orgId = getOrgId();
      const branchId = getBranchId();
      
      let url = `${ApiUrl.apiurl}AdminUser/List/`;
      if (searchQuery) {
        url += `?search=${encodeURIComponent(searchQuery)}`;
      }

      const response = await fetch(url, {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${getAccessToken()}`,
        },
      });

      if (response.ok) {
        const result = await response.json();
        if (result.data) {
          setRoles(result.data);
          // filteredRoles will be updated by useEffect
        }
      }
    } catch (error) {
      console.error("Error fetching roles:", error);
    }
  };

  // Handle close
  const handleClose = () => {
    navigate("/admin/dashboard");
  };

  // Handle new button - navigate to new page
  const handleNew = () => {
    navigate("/admin/create-admin-user/new");
  };

  // Handle search
  const handleSearch = () => {
    fetchRoles(searchTerm);
  };

  // Handle clear
  const handleClear = () => {
    setSearchTerm("");
    fetchRoles();
  };

  // Handle edit button
  const handleEdit = (role) => {
    setSelectedRole(role);
    setShowEditModal(true);
  };

  // Handle modal close
  const handleModalClose = () => {
    setShowEditModal(false);
    setSelectedRole(null);
  };

  // Handle successful update
  const handleUpdateSuccess = () => {
    fetchRoles(); // Refresh the table
    handleModalClose();
  };

  // Format modules for display
  const formatModulesDisplay = (modules) => {
    if (!modules || modules.length === 0) {
      return "All Modules";
    }

    // Group modules by parent
    const parentGroups = {};
    modules.forEach(module => {
      // Check if it's child module (contains dot)
      if (module.includes('.')) {
        const parent = module.split('.')[0];
        if (!parentGroups[parent]) {
          parentGroups[parent] = [];
        }
        parentGroups[parent].push(module);
      } else {
        // Old format - parent only (backward compatibility)
        if (!parentGroups[module]) {
          parentGroups[module] = ['all'];
        }
      }
    });

    // Format for display
    const formattedItems = Object.keys(parentGroups).map(parent => {
      const count = parentGroups[parent].includes('all') 
        ? 'All' 
        : parentGroups[parent].length;
      // Capitalize first letter
      const parentName = parent.charAt(0).toUpperCase() + parent.slice(1).replace(/_/g, ' ');
      return `${parentName} (${count})`;
    });

    return formattedItems.join(', ');
  };

  return (
    <div className="create-admin-user-container">
      <div className="container-fluid">
        <div className="row mt-4">
          <div className="col-12">
            {/* Search and Action Buttons */}
            <div className="row mb-3">
              <div className="col-md-6">
                <div className="input-group">
                  <input
                    type="text"
                    className="form-control"
                    placeholder="Search by role name or username..."
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                    onKeyDown={(e) => { if (e.key === 'Enter') handleSearch(); }}
                  />
                </div>
              </div>
              <div className="col-md-6">
                <div className="d-flex gap-2">
                  <button
                    className="btn btn-primary"
                    onClick={handleNew}
                  >
                    <i className="bi bi-plus-circle me-2"></i>
                    New
                  </button>
                  <button 
                    className="btn btn-primary" 
                    onClick={handleSearch}
                    style={{ width: "150px" }}
                  >
                    Search
                  </button>
                  <button 
                    className="btn btn-secondary" 
                    onClick={handleClear}
                    style={{ width: "150px" }}
                  >
                    Clear
                  </button>
                  <button className="btn btn-danger" onClick={handleClose}>
                    <i className="bi bi-x-circle me-2"></i>
                    Close
                  </button>
                </div>
              </div>
            </div>

            <div className="card">
              <div className="card-body">

                {/* Roles Table */}
                <div className="table-responsive">
                  <table className="table table-bordered table-striped table-hover">
                    <thead className="table-primary">
                      <tr>
                        <th>S.No</th>
                        <th>Role Name</th>
                        <th>User Name</th>
                        <th>Non Teaching Staff</th>
                        <th>Modules Access</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      {filteredRoles.filter(role => role.role_name && role.role_name.trim() !== "").length > 0 ? (
                        filteredRoles.filter(role => role.role_name && role.role_name.trim() !== "").map((role, index) => (
                          <tr key={role.id}>
                            <td>{index + 1}</td>
                            <td>{role.role_name}</td>
                            <td>{role.user_name}</td>
                            <td>
                              {role.reference_id && role.reference_id !== 0
                                ? staffMap[role.reference_id] || "N/A"
                                : "N/A"}
                            </td>
                            <td>
                              {formatModulesDisplay(role.accessible_modules)}
                            </td>
                            <td>
                              <button
                                className="btn btn-sm btn-primary me-2"
                                onClick={() => handleEdit(role)}
                                title="Edit Role"
                              >
                                <FaEdit /> Edit
                              </button>
                            </td>
                          </tr>
                        ))
                      ) : (
                        <tr>
                          <td colSpan="6" className="text-center">
                            No roles found
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

      {/* Edit Modal */}
      {showEditModal && selectedRole && (
        <EditAdminUserModal
          show={showEditModal}
          handleClose={handleModalClose}
          roleData={selectedRole}
          staffMap={staffMap}
          onUpdateSuccess={handleUpdateSuccess}
        />
      )}
    </div>
  );
};

export default CreateAdminUser;
