import React, { useRef, useState, useEffect, useMemo } from "react";
import { useNavigate } from "react-router-dom"; // Import useNavigate hook
import "bootstrap/dist/css/bootstrap.min.css";
import SelectStudentModal from "../AdminAttendanceEntry/SelectStudentModal";
import Select from "react-select";
import { ApiUrl } from "../../../ApiUrl";
import ReactPaginate from "react-paginate";
import jsPDF from "jspdf";
import autoTable from "jspdf-autotable";

const AdmAttendanceEntry = () => {

  const [employeeData, setEmployeeData] = useState([]);
  const [employeeTypeOptions, setEmployeeTypeOptions] = useState([]);
  const navigate = useNavigate(); // Initialize the navigate function
  const [editData, setEditData] = useState(null);
  const [searchParams, setSearchParams] = useState({
    employeeCode: "",
    firstName: "",
    middleName: "",
    lastName: "",
    employeeType: null, // for react-select
  });

  // Function to properly format name with correct prefix capitalization
  const formatEmployeeName = (name) => {
    if (!name) return "";

    // Split name into parts
    const parts = name.trim().split(/\s+/);
    if (parts.length === 0) return "";

    // Check if first part is a prefix
    const firstPart = parts[0].toLowerCase();
    const prefixMap = {
      'mr': 'Mr.',
      'mr.': 'Mr.',
      'ms': 'Ms',
      'ms.': 'Ms',
      'mrs': 'Mrs',
      'mrs.': 'Mrs',
      'dr': 'Dr.',
      'dr.': 'Dr.'
    };

    // If first part is a prefix, format it properly
    if (prefixMap[firstPart]) {
      const formattedPrefix = prefixMap[firstPart];
      const restOfName = parts.slice(1).map(part =>
        part.charAt(0).toUpperCase() + part.slice(1).toLowerCase()
      ).join(' ');
      return `${formattedPrefix} ${restOfName}`;
    }

    // If no prefix found, just capitalize each word
    return parts.map(part =>
      part.charAt(0).toUpperCase() + part.slice(1).toLowerCase()
    ).join(' ');
  };



  const dateFromRef = useRef(null);
  const dateToRef = useRef(null);
  const messageTypeRef = useRef(null);
  const studentNameRef = useRef(null);
  const initiatedByRef = useRef(null);
  const sectionRef = useRef(null);
  const classRef = useRef(null);
  const itemsPerPage = 10; // You can change this value
  const [currentPage, setCurrentPage] = useState(0);
  const [searchQuery, setSearchQuery] = useState("");

  const filteredEmployeeData = useMemo(() => {
    if (!searchQuery) return employeeData;
    const lowerQuery = searchQuery.toLowerCase().trim();
    return employeeData.filter((employee) => {
      const searchStr = `
        ${employee.employee_code || ""}
        ${formatEmployeeName(employee.employee_name) || ""}
        ${employee.date_of_birth || ""}
        ${employee.phone_number || ""}
        ${employee.email || ""}
        ${employee.date_of_joining || ""}
      `.toLowerCase();

      const empType = (employee.employee_type || "").toLowerCase();
      let typeMatch = false;

      // Handle the specific issue: searching "teaching" returns "non teaching"
      if (lowerQuery.includes("teach") && !lowerQuery.includes("non")) {
        // If query relates to 'teach' but not 'non', only match types that START with 'teach'
        typeMatch = empType.startsWith("teach");
      } else {
        typeMatch = empType.includes(lowerQuery);
      }

      return searchStr.includes(lowerQuery) || typeMatch;
    });
  }, [employeeData, searchQuery]);

  // Calculate total pages
  const pageCount = Math.ceil(filteredEmployeeData.length / itemsPerPage);

  // Pagination Safety Guard (0-indexed)
  useEffect(() => {
    if (pageCount > 0 && currentPage >= pageCount) {
      setCurrentPage(pageCount - 1); // Fallback to last valid page
    } else if (pageCount === 0 && currentPage !== 0) {
      setCurrentPage(0); // Reset to page 0 if data is completely empty
    }
  }, [pageCount, currentPage]);

  // Reset pagination precisely when global user search query changes
  useEffect(() => {
    setCurrentPage(0);
  }, [searchQuery]);

  // Get current page data
  const getCurrentPageData = () => {
    const start = currentPage * itemsPerPage;
    const end = start + itemsPerPage;
    return filteredEmployeeData.slice(start, end);
  };

  // Handle page change
  const handlePageClick = ({ selected }) => {
    setCurrentPage(selected);
  };

  const handleClear = () => {
    // Clear all search fields
    setSearchParams({
      employeeCode: "",
      firstName: "",
      middleName: "",
      lastName: "",
      employeeType: null,
    });
    setSearchQuery("");

    // Clear the employee data table
    setEmployeeData([]);
    setCurrentPage(0);
  };

  const handleClose = () => {
    // Navigate back to admin dashboard or home
    navigate("/admin/dashboard");
  };

  const exportToPDF = () => {
    if (!employeeData || employeeData.length === 0) {
      alert("No employee data available to export!");
      return;
    }

    const doc = new jsPDF({ orientation: "portrait", unit: "mm", format: "a4" });
    const pageWidth = doc.internal.pageSize.getWidth();
    const pageHeight = doc.internal.pageSize.getHeight();

    const primaryRGB = [13, 110, 253];
    const sectionBg = [33, 45, 62];
    const labelBg = [232, 240, 255];
    const borderRGB = [189, 208, 255];

    const drawPageHeader = () => {
      doc.setFillColor(...primaryRGB);
      doc.rect(0, 0, pageWidth, 24, "F");
      doc.setTextColor(255, 255, 255);
      doc.setFontSize(14);
      doc.setFont("helvetica", "bold");
      doc.text("EMPLOYEE REGISTRATION REPORT", pageWidth / 2, 11, { align: "center" });
      doc.setFontSize(7.5);
      doc.setFont("helvetica", "normal");
      const now = new Date();
      const dateStr = now.toLocaleDateString("en-IN", { day: "2-digit", month: "long", year: "numeric" });
      doc.text(
        `Generated: ${dateStr}  |  Total Employees: ${employeeData.length}`,
        pageWidth / 2,
        19,
        { align: "center" }
      );
      doc.setDrawColor(...borderRGB);
      doc.setLineWidth(0.5);
      doc.line(0, 24, pageWidth, 24);
    };

    drawPageHeader();
    let yPos = 28;

    const KNOWN_FIELDS = [
      ["employee_code", "Employee Code"],
      ["employee_name", "Employee Name"],
      ["employee_type", "Employee Type"],
      ["date_of_birth", "Date of Birth"],
      ["phone_number", "Mobile No"],
      ["email", "Email"],
      ["date_of_joining", "Date of Joining"],
      ["gender", "Gender"],
      ["gender_name", "Gender"],
      ["aadhaar_no", "Aadhaar No"],
      ["pan_no", "PAN No"],
      ["blood_group", "Blood Group"],
      ["nationality", "Nationality"],
      ["religion", "Religion"],
      ["caste", "Caste"],
      ["designation", "Designation"],
      ["department", "Department"],
      ["department_name", "Department"],
      ["qualification", "Qualification"],
      ["experience", "Experience"],
      ["salary", "Salary"],
      ["bank_name", "Bank Name"],
      ["account_number", "Account Number"],
      ["ifsc_code", "IFSC Code"],
      ["address", "Address"],
      ["city", "City"],
      ["state", "State"],
      ["country", "Country"],
      ["pincode", "Pincode"],
      ["present_address", "Present Address"],
      ["permanent_address", "Permanent Address"],
      ["emergency_contact", "Emergency Contact"],
      ["emergency_contact_name", "Emergency Contact Name"],
      ["marital_status", "Marital Status"],
      ["spouse_name", "Spouse Name"],
      ["father_name", "Father Name"],
      ["mother_name", "Mother Name"],
      ["date_of_leaving", "Date of Leaving"],
      ["leaving_reason", "Leaving Reason"],
      ["status", "Status"],
    ];

    const EXCLUDE_KEYS = new Set(["id", "organization", "branch", "image", "photo", "profile_pic"]);
    const knownKeySet = new Set(KNOWN_FIELDS.map(([k]) => k));

    const addSection = (title, rows) => {
      const filtered = rows.filter(([, v]) => v !== undefined && v !== null && v !== "");
      if (filtered.length === 0) return;

      if (yPos > pageHeight - 22) {
        doc.addPage();
        drawPageHeader();
        yPos = 28;
      }

      doc.setFillColor(...sectionBg);
      doc.rect(10, yPos, pageWidth - 20, 6, "F");
      doc.setTextColor(255, 255, 255);
      doc.setFontSize(7.5);
      doc.setFont("helvetica", "bold");
      doc.text(title, 14, yPos + 4.2);
      yPos += 6;

      const pairedRows = [];
      for (let i = 0; i < filtered.length; i += 2) {
        pairedRows.push([
          filtered[i][0],
          String(filtered[i][1] ?? "—"),
          filtered[i + 1] ? filtered[i + 1][0] : "",
          filtered[i + 1] ? String(filtered[i + 1][1] ?? "—") : "",
        ]);
      }

      autoTable(doc, {
        startY: yPos,
        margin: { left: 10, right: 10, top: 28 },
        body: pairedRows,
        theme: "grid",
        styles: { fontSize: 7.5, cellPadding: 1.8, valign: "middle", textColor: [33, 37, 41] },
        columnStyles: {
          0: { fontStyle: "bold", fillColor: labelBg, cellWidth: 38, textColor: [13, 71, 161] },
          1: { cellWidth: 52 },
          2: { fontStyle: "bold", fillColor: labelBg, cellWidth: 38, textColor: [13, 71, 161] },
          3: { cellWidth: 52 },
        },
        tableWidth: pageWidth - 20,
        showHead: "never",
        tableLineColor: borderRGB,
        tableLineWidth: 0.2,
        didDrawPage: () => {
          drawPageHeader();
        },
      });

      yPos = doc.lastAutoTable.finalY + 3;
    };

    employeeData.forEach((employee, idx) => {
      if (idx > 0 && yPos > pageHeight - 35) {
        doc.addPage();
        drawPageHeader();
        yPos = 28;
      }

      // Employee title bar
      doc.setFillColor(...primaryRGB);
      doc.roundedRect(10, yPos, pageWidth - 20, 9, 1.5, 1.5, "F");
      doc.setTextColor(255, 255, 255);
      doc.setFontSize(9);
      doc.setFont("helvetica", "bold");
      const empName = formatEmployeeName(employee.employee_name);
      const titleText = `${idx + 1}. ${empName || "N/A"}   |   Code: ${employee.employee_code || "N/A"}   |   Type: ${employee.employee_type || "N/A"}`;
      doc.text(titleText, 14, yPos + 6);
      yPos += 12;

      // Build rows from known fields present in this employee record
      const mainRows = KNOWN_FIELDS
        .filter(([k]) => k in employee && !EXCLUDE_KEYS.has(k))
        .map(([k, label]) => [label, employee[k]]);

      // Capture any extra fields not in KNOWN_FIELDS
      const extraRows = Object.entries(employee)
        .filter(([k]) => !knownKeySet.has(k) && !EXCLUDE_KEYS.has(k) && k !== "employee_type_id")
        .map(([k, v]) => [
          k.replace(/_/g, " ").replace(/\b\w/g, (l) => l.toUpperCase()),
          v,
        ]);

      const allRows = [...mainRows, ...extraRows];

      if (allRows.length > 0) {
        addSection("EMPLOYEE INFORMATION", allRows);
      }

      // Divider between employees
      if (idx < employeeData.length - 1 && yPos < pageHeight - 10) {
        doc.setDrawColor(...borderRGB);
        doc.setLineWidth(0.4);
        doc.line(10, yPos, pageWidth - 10, yPos);
        yPos += 6;
      }
    });

    // Page numbers
    const totalPages = doc.internal.getNumberOfPages();
    for (let i = 1; i <= totalPages; i++) {
      doc.setPage(i);
      doc.setDrawColor(200, 200, 200);
      doc.setLineWidth(0.2);
      doc.line(10, pageHeight - 8, pageWidth - 10, pageHeight - 8);
      doc.setFontSize(7);
      doc.setTextColor(128, 128, 128);
      doc.setFont("helvetica", "normal");
      doc.text(
        `Page ${i} of ${totalPages}  •  Acadix School Management System`,
        pageWidth / 2,
        pageHeight - 3,
        { align: "center" }
      );
    }

    const fileName = `Employee_Registration_Report_${new Date().toISOString().slice(0, 10)}.pdf`;
    doc.save(fileName);
  };

  const handleNew = () => {
    // Clear any existing employee data from localStorage
    localStorage.removeItem("employeeId");
    localStorage.removeItem("employeeType");
    localStorage.removeItem("employeeTypeId");
    sessionStorage.removeItem("tempFormData");
    sessionStorage.removeItem("tempFrontCover");

    navigate("/AdmStaffDetails");
  };

  useEffect(() => {
    const fetchEmployeeTypes = async () => {
      try {
        const response = await fetch(
          `${ApiUrl.apiurl}Staff/EmployeeTypeList/`
        );
        const result = await response.json();

        if (response.ok && result.data) {
          // Map API response to react-select format
          const formattedOptions = result.data.map((item) => ({
            value: item.id,
            label: item.employee_type_description,
          }));
          setEmployeeTypeOptions(formattedOptions);
        } else {
          console.error("Failed to load employee types:", result);
        }
      } catch (error) {
        console.error("Error fetching employee types:", error);
      }
    };

    fetchEmployeeTypes();
  }, []);


  const fetchEmployeeData = async () => {
    try {
      const orgId = localStorage.getItem("orgId");
      const branchId = localStorage.getItem("branchId");

      const params = new URLSearchParams({
        organization_id: orgId,
        branch_id: branchId,
      });

      // Optional search params
      if (searchParams.employeeCode)
        params.append("employee_code", searchParams.employeeCode);
      if (searchParams.firstName)
        params.append("first_name", searchParams.firstName);
      if (searchParams.middleName)
        params.append("middle_name", searchParams.middleName);
      if (searchParams.lastName)
        params.append("last_name", searchParams.lastName);
      if (searchParams.employeeType?.value)
        params.append("employee_type", searchParams.employeeType.value);

      const response = await fetch(
        `${ApiUrl.apiurl}STAFF/RegistrationstaffList/?${params.toString()}`
      );

      const result = await response.json();
      if (response.ok && result.data) {
        console.log("Employee Data:", result.data); // Debug log
        setEmployeeData(result.data);
      } else {
        console.error("Failed to fetch employee data:", result);
      }
    } catch (error) {
      console.error("Error fetching employee data:", error);
    }
  };

  useEffect(() => {
    fetchEmployeeData(); // Load all data when page opens
  }, []);


  // const handleEdit = async (employeeId) => {
  //   try {
  //     const response = await fetch(
  //       `${ApiUrl.apiurl}STAFF/registrationBasicDetailsRetreive/${employeeId}/`
  //     );
  //     const result = await response.json();

  //     if (response.ok && result.data) {
  //       setEditData(result.data); // Set response in state
  //       navigate("/AdmStaffDetails", {
  //         state: { employeeDetails: result.data },
  //       }); // Pass via location state
  //     } else {
  //       console.error("Failed to fetch employee details:", result);
  //     }
  //   } catch (error) {
  //     console.error("Error fetching employee details:", error);
  //   }
  // };

  const handleEdit = async (employeeId) => {
    try {
      const response = await fetch(
        `${ApiUrl.apiurl}STAFF/RegistrationBasicDetailsRetrieve/?organization_id=${localStorage.getItem("orgId")}&branch_id=${localStorage.getItem("branchId")}&employee_id=${employeeId}`
      );
      const result = await response.json();

      if (response.ok && result.data) {
        // Optional if needed
        localStorage.setItem("employeeId", result.data.id);
        localStorage.setItem("employeeType", result.data.employee_type);
        localStorage.setItem("employeeTypeId", result.data.employee_type_id); //  Save this

        //  Set response in state and navigate
        setEditData(result.data);
        navigate("/AdmStaffDetails", {
          state: { employeeDetails: result.data },
        });
      } else {
        console.error("Failed to fetch employee details:", result);
      }
    } catch (error) {
      console.error("Error fetching employee details:", error);
    }
  };



  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card p-0">
            <div className="card-body">
              <p
                style={{
                  marginBottom: "0px",
                  textAlign: "center",
                  fontSize: "20px",
                  fontWeight: "700",
                }}
              >
                EMPLOYEE SEARCH
              </p>
              <div className="row mb-3 mt-3 mx-0">
                <div className="col-12 d-flex flex-wrap gap-2">
                  <button
                    type="button"
                    className="btn btn-primary me-2"
                    style={{
                      width: "150px",
                    }}
                    onClick={handleNew} // Add the onClick event to trigger navigation
                  >
                    New
                  </button>
                  <button
                    type="button"
                    className="btn btn-primary me-2"
                    style={{
                      width: "150px",
                    }}
                    onClick={fetchEmployeeData}
                  >
                    Search
                  </button>
                  <button
                    type="button"
                    className="btn btn-secondary me-2"
                    style={{
                      width: "150px",
                    }}
                    onClick={handleClear}
                  >
                    Clear
                  </button>
                  <button
                    type="button"
                    className="btn btn-danger me-2"
                    style={{
                      width: "150px",
                    }}
                    onClick={handleClose}
                  >
                    Close
                  </button>
                  <button
                    type="button"
                    className="btn btn-primary me-2"
                    style={{
                      width: "150px",
                    }}
                    onClick={exportToPDF}
                  >
                    Export To PDF
                  </button>
                </div>
              </div>

              <div className="row mt-3 mx-2">
                <div className="col-12 custom-section-box">
                  <div className="d-flex flex-column flex-md-row align-items-start align-items-md-center">
                    <div className="row flex-grow-1 mt-3  mb-3">
                      <div className="col-md-3 mb-3">
                        <label htmlFor="employee-code" className="form-label">
                          Employee Code
                        </label>
                        <div className="d-flex align-items-center">
                          <input
                            type="text"
                            id="employee-code"
                            className="form-control detail"
                            placeholder="Enter employee code"
                            value={searchParams.employeeCode}
                            onChange={(e) =>
                              setSearchParams({
                                ...searchParams,
                                employeeCode: e.target.value,
                              })
                            }
                          />
                        </div>
                      </div>

                      <div className="col-12 col-md-5 mb-3 ">
                        <label htmlFor="student-name" className="form-label">
                          Employee Name
                        </label>
                        <div className="d-flex align-items-center">
                          <input
                            type="text"
                            className="form-control detail ms-2"
                            placeholder="Enter First name"
                            value={searchParams.firstName}
                            onChange={(e) =>
                              setSearchParams({
                                ...searchParams,
                                firstName: e.target.value,
                              })
                            }
                          />
                          <input
                            type="text"
                            className="form-control detail ms-2"
                            placeholder="Enter Middle name"
                            value={searchParams.middleName}
                            onChange={(e) =>
                              setSearchParams({
                                ...searchParams,
                                middleName: e.target.value,
                              })
                            }
                          />
                          <input
                            type="text"
                            className="form-control detail ms-2"
                            placeholder="Enter Last name"
                            value={searchParams.lastName}
                            onChange={(e) =>
                              setSearchParams({
                                ...searchParams,
                                lastName: e.target.value,
                              })
                            }
                          />
                        </div>
                      </div>
                      <div className="col-12 col-md-3 mb-3">
                        <label htmlFor="employee-type" className="form-label">
                          Employee Type
                        </label>
                        <Select
                          inputId="employee-type"
                          className="detail"
                          classNamePrefix="employee-type-select"
                          options={employeeTypeOptions}
                          value={searchParams.employeeType}
                          onChange={(selectedOption) =>
                            setSearchParams({
                              ...searchParams,
                              employeeType: selectedOption,
                            })
                          }
                        />
                      </div>

                      {/* Full-width Search Bar inside container */}
                      <div className="col-12 mt-4 mb-2">
                        <div className="input-group">
                          <input
                            type="text"
                            className="form-control detail"
                            placeholder="Search: name, employee code, type, email, phone..."
                            value={searchQuery}
                            onChange={(e) => setSearchQuery(e.target.value)}
                          />
                          {searchQuery && (
                            <button
                              className="btn btn-outline-secondary"
                              type="button"
                              onClick={() => setSearchQuery("")}
                            >
                              X
                            </button>
                          )}
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>

              <div className="row">
                <div className="col-12">
                  <div className="table-responsive">
                    <table className="table table-bordered">
                      <thead>
                        <tr>
                          <th>Sr.No</th>
                          <th>Employee Code</th>
                          <th>Name</th>
                          <th>Employee Type</th>
                          <th>Date Of Birth</th>
                          <th>Mobile No</th>
                          <th>Email ID</th>
                          <th>Date Of Joining</th>
                          <th>Edit</th>
                        </tr>
                      </thead>
                      <tbody>
                        {getCurrentPageData().length > 0 ? (
                          getCurrentPageData().map((employee, index) => (
                            <tr key={employee.employee_id}>
                              <td>{currentPage * itemsPerPage + index + 1}</td>
                              <td>{employee.employee_code}</td>
                              <td>{formatEmployeeName(employee.employee_name)}</td>
                              <td>{employee.employee_type}</td>
                              <td>{employee.date_of_birth}</td>
                              <td>{employee.phone_number}</td>
                              <td>{employee.email}</td>
                              <td>{employee.date_of_joining}</td>
                              <td>
                                <button
                                  className="btn btn-primary btn-sm"
                                  onClick={() => handleEdit(employee.id)}
                                >
                                  Edit
                                </button>
                              </td>
                            </tr>
                          ))
                        ) : (
                          <tr>
                            <td colSpan={9} className="text-center">
                              No Data Found
                            </td>
                          </tr>
                        )}
                      </tbody>
                    </table>
                  </div>

                  {/* Pagination */}
                  <ReactPaginate
                    previousLabel={"Previous"}
                    nextLabel={"Next"}
                    breakLabel={"..."}
                    breakClassName={"page-item"}
                    breakLinkClassName={"page-link"}
                    pageCount={pageCount}
                    marginPagesDisplayed={2}
                    pageRangeDisplayed={5}
                    onPageChange={handlePageClick}
                    containerClassName={
                      "pagination justify-content-center mt-3"
                    }
                    pageClassName={"page-item"}
                    pageLinkClassName={"page-link"}
                    previousClassName={"page-item"}
                    previousLinkClassName={"page-link"}
                    nextClassName={"page-item"}
                    nextLinkClassName={"page-link"}
                    activeClassName={"active"}
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AdmAttendanceEntry;
