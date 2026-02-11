import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { ApiUrl } from "../../../ApiUrl";
import "./CreateAdminUser.css";

const CreateAdminUser = () => {
  const navigate = useNavigate();
  
  // State management
  const [roles, setRoles] = useState([]);
  const [nonTeachingStaffMap, setNonTeachingStaffMap] = useState({});

  // Get access token and org/branch
  const getAccessToken = () => localStorage.getItem("accessToken");
  const getOrgId = () => sessionStorage.getItem("org_id") || localStorage.getItem("orgId");
  const getBranchId = () => sessionStorage.getItem("branch_id") || localStorage.getItem("branchId");

  // Fetch existing roles on component mount
  useEffect(() => {
    fetchNonTeachingStaff();
    fetchRoles();
  }, []);

  // Fetch non-teaching staff to map reference_id to names
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
          // Create a map of nts_id -> name
          const staffMap = {};
          result.data.forEach((staff) => {
            staffMap[staff.nts_id] = `${staff.first_name} ${staff.last_name}`;
          });
          setNonTeachingStaffMap(staffMap);
        }
      }
    } catch (error) {
      console.error("Error fetching non-teaching staff:", error);
    }
  };

  // Fetch all admin user roles
  const fetchRoles = async () => {
    try {
      const response = await fetch(`${ApiUrl.apiurl}AdminUser/List/`, {
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

  return (
    <div className="create-admin-user-container">
      <div className="container-fluid">
        <div className="row mt-4">
          <div className="col-12">
            <div className="card">
              <div className="card-header bg-primary text-white">
                <h4 className="mb-0">User Role Management</h4>
              </div>
              <div className="card-body">
                {/* Action Buttons */}
                <div className="d-flex gap-2 mb-3">
                  <button
                    className="btn btn-primary"
                    onClick={handleNew}
                  >
                    <i className="bi bi-plus-circle me-2"></i>
                    New
                  </button>
                  <button className="btn btn-danger" onClick={handleClose}>
                    <i className="bi bi-x-circle me-2"></i>
                    Close
                  </button>
                </div>

                {/* Roles Table */}
                <div className="table-responsive">
                  <table className="table table-bordered table-striped table-hover">
                    <thead className="table-primary">
                      <tr>
                        <th>S.No</th>
                        <th>Role Name</th>
                        <th>User Name</th>
                        <th>Non-Teaching Staff</th>
                        <th>Modules Access</th>
                      </tr>
                    </thead>
                    <tbody>
                      {roles.filter(role => role.role_name && role.role_name.trim() !== "").length > 0 ? (
                        roles.filter(role => role.role_name && role.role_name.trim() !== "").map((role, index) => (
                          <tr key={role.id}>
                            <td>{index + 1}</td>
                            <td>{role.role_name}</td>
                            <td>{role.user_name}</td>
                            <td>
                              {role.reference_id && role.reference_id !== 0
                                ? nonTeachingStaffMap[role.reference_id] || "N/A"
                                : "N/A"}
                            </td>
                            <td>
                              {role.accessible_modules && role.accessible_modules.length > 0
                                ? role.accessible_modules.join(", ")
                                : "All Modules"}
                            </td>
                          </tr>
                        ))
                      ) : (
                        <tr>
                          <td colSpan="5" className="text-center">
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
    </div>
  );
};

export default CreateAdminUser;
