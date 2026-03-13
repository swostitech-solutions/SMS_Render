import React, { useState, useEffect, useMemo } from "react";
import Select from "react-select";
import { ApiUrl } from "../../../ApiUrl";
import { useNavigate } from "react-router-dom";
import ReactPaginate from "react-paginate";
import * as XLSX from "xlsx";

function AdmFeeReport() {
  const navigate = useNavigate();

  // Filter States
  const [selectedSession, setSelectedSession] = useState(null);
  const [selectedCourse, setSelectedCourse] = useState(null);
  const [selectedDepartment, setSelectedDepartment] = useState(null);
  const [selectedAcademicYear, setSelectedAcademicYear] = useState(null);
  const [selectedSemester, setSelectedSemester] = useState(null);
  const [selectedSection, setSelectedSection] = useState(null);

  // Options States
  const [sessions, setSessions] = useState([]);
  const [courses, setCourses] = useState([]);
  const [departments, setDepartments] = useState([]);
  const [academicYears, setAcademicYears] = useState([]);
  const [semesters, setSemesters] = useState([]);
  const [sections, setSections] = useState([]);

  // Data States
  const [reportData, setReportData] = useState([]);
  const [showTable, setShowTable] = useState(false);
  
  // Pagination
  const [currentPage, setCurrentPage] = useState(0);
  const itemsPerPage = 10;

  // Initialization: Fetch Sessions
  useEffect(() => {
    const fetchSessions = async () => {
      try {
        const token = localStorage.getItem("accessToken");
        const branch_id = sessionStorage.getItem("branch_id");
        const organization_id = sessionStorage.getItem("organization_id");

        if (!branch_id || !organization_id) return;

        const response = await fetch(
          `${ApiUrl.apiurl}Batch/GetBatch/?organization_id=${organization_id}&branch_id=${branch_id}`,
          {
            method: "GET",
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          }
        );

        const data = await response.json();
        if (Array.isArray(data)) {
          setSessions(data.map((item) => ({ value: item.id, label: item.batch_description })));
        }
      } catch (error) {
        console.error("Error fetching sessions:", error);
      }
    };
    fetchSessions();
  }, []);

  // Fetch Courses based on Session
  useEffect(() => {
    const fetchCourses = async () => {
      if (!selectedSession?.value) {
        setCourses([]);
        return;
      }
      try {
        const token = localStorage.getItem("accessToken");
        const organization_id = sessionStorage.getItem("organization_id");
        const branch_id = sessionStorage.getItem("branch_id");
        const response = await fetch(
          `${ApiUrl.apiurl}Course/GetCourse/?organization_id=${organization_id}&branch_id=${branch_id}&batch_id=${selectedSession.value}`,
          { headers: { Authorization: `Bearer ${token}` } }
        );
        const data = await response.json();
        if (Array.isArray(data)) {
          setCourses(data.map((item) => ({ value: item.id, label: item.course_name })));
        }
      } catch (error) {
        console.error("Error fetching courses:", error);
      }
    };
    fetchCourses();
  }, [selectedSession]);

  // Fetch Departments
  useEffect(() => {
    const fetchDepartments = async () => {
      if (!selectedSession?.value || !selectedCourse?.value) {
        setDepartments([]);
        return;
      }
      try {
        const token = localStorage.getItem("accessToken");
        const organization_id = sessionStorage.getItem("organization_id");
        const branch_id = sessionStorage.getItem("branch_id");
        const response = await fetch(
          `${ApiUrl.apiurl}Department/GetDepartment/?organization_id=${organization_id}&branch_id=${branch_id}&batch_id=${selectedSession.value}&course_id=${selectedCourse.value}`,
          { headers: { Authorization: `Bearer ${token}` } }
        );
        const data = await response.json();
        const deps = Array.isArray(data) ? data : data.data || [];
        setDepartments(deps.map((item) => ({
          value: item.id || item.department_id,
          label: item.department_description || item.department_name || item.description || "Unnamed",
        })));
      } catch (error) {
        console.error("Error fetching departments:", error);
      }
    };
    fetchDepartments();
  }, [selectedSession, selectedCourse]);

  // Fetch Academic Years
  useEffect(() => {
    const fetchAcademicYears = async () => {
      if (!selectedSession || !selectedCourse || !selectedDepartment) {
        setAcademicYears([]);
        return;
      }
      try {
        const token = localStorage.getItem("accessToken");
        const organization_id = sessionStorage.getItem("organization_id");
        const branch_id = sessionStorage.getItem("branch_id");
        const url = `${ApiUrl.apiurl}AcademicYear/GetAcademicYear/?organization_id=${organization_id}&branch_id=${branch_id}&batch_id=${selectedSession.value}&course_id=${selectedCourse.value}&department_id=${selectedDepartment.value}`;
        const response = await fetch(url, { headers: { Authorization: `Bearer ${token}` } });
        const data = await response.json();
        const years = Array.isArray(data) ? data : data.data || [];
        setAcademicYears(years.map((item) => ({
          value: item.id || item.academic_year_id,
          label: item.academic_year_description || item.academic_year_code,
        })));
      } catch (error) {
        console.error("Error:", error);
      }
    };
    fetchAcademicYears();
  }, [selectedSession, selectedCourse, selectedDepartment]);

  // Fetch Semesters
  useEffect(() => {
    const fetchSemesters = async () => {
      if (!selectedSession || !selectedCourse || !selectedDepartment) {
        setSemesters([]);
        return;
      }
      try {
        const token = localStorage.getItem("accessToken");
        const organization_id = sessionStorage.getItem("organization_id");
        const branch_id = sessionStorage.getItem("branch_id");
        const url = `${ApiUrl.apiurl}Semester/GetSemesterByDepartment/?organization_id=${organization_id}&branch_id=${branch_id}&batch_id=${selectedSession.value}&course_id=${selectedCourse.value}&department_id=${selectedDepartment.value}`;
        
        let urlWithAca = url;
        if (selectedAcademicYear) {
          urlWithAca += `&academic_year_id=${selectedAcademicYear.value}`;
        }
        
        const response = await fetch(urlWithAca, { headers: { Authorization: `Bearer ${token}` } });
        const data = await response.json();
        setSemesters((Array.isArray(data) ? data : []).map((item) => ({
          value: item.id,
          label: item.semester_description || item.semester_code,
        })));
      } catch (error) {
        console.error("Error:", error);
      }
    };
    fetchSemesters();
  }, [selectedSession, selectedCourse, selectedDepartment, selectedAcademicYear]);

  // Fetch Sections
  useEffect(() => {
    const fetchSections = async () => {
      if (!selectedSession || !selectedCourse || !selectedDepartment || !selectedAcademicYear || !selectedSemester) {
        setSections([]);
        return;
      }
      try {
        const token = localStorage.getItem("accessToken");
        const organization_id = sessionStorage.getItem("organization_id");
        const branch_id = sessionStorage.getItem("branch_id");
        const url = `${ApiUrl.apiurl}Section/GetSection/?organization_id=${organization_id}&branch_id=${branch_id}&batch_id=${selectedSession.value}&course_id=${selectedCourse.value}&department_id=${selectedDepartment.value}&academic_year_id=${selectedAcademicYear.value}&semester_id=${selectedSemester.value}`;
        const response = await fetch(url, { headers: { Authorization: `Bearer ${token}` } });
        const data = await response.json();
        const secs = Array.isArray(data) ? data : data.data || [];
        setSections(secs.map((item) => ({
          value: item.id || item.section_id,
          label: item.section_name || item.section_description,
        })));
      } catch (error) {
        console.error("Error:", error);
      }
    };
    fetchSections();
  }, [selectedSession, selectedCourse, selectedDepartment, selectedAcademicYear, selectedSemester]);

  const handleSearch = async () => {
    const organization_id = sessionStorage.getItem("organization_id");
    const branch_id = sessionStorage.getItem("branch_id");

    const params = new URLSearchParams({
      organization_id,
      branch_id,
    });

    if (selectedSession) params.append("batch_id", selectedSession.value);
    if (selectedCourse) params.append("course_id", selectedCourse.value);
    if (selectedDepartment) params.append("department_id", selectedDepartment.value);
    if (selectedSemester) params.append("semester_id", selectedSemester.value);
    if (selectedSection) params.append("section_id", selectedSection.value);
    params.append("show_fees", "A");

    // Using the same endpoint as AdmFeeLedger for simplified table view
    const apiUrl = `${ApiUrl.apiurl}FeeLedger/GetFeeLedgerBasedOnCondition/?${params.toString()}`;

    try {
      const response = await fetch(apiUrl, {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${localStorage.getItem("accessToken")}`,
        },
      });

      const result = await response.json();

      if (response.ok && result.message === "success!!") {
        setReportData(result.data);
        setShowTable(true);
        setCurrentPage(0);
      } else {
        setReportData([]);
        setShowTable(false);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
      setReportData([]);
      setShowTable(false);
    }
  };

  const handleClear = () => {
    setSelectedSession(null);
    setSelectedCourse(null);
    setSelectedDepartment(null);
    setSelectedAcademicYear(null);
    setSelectedSemester(null);
    setSelectedSection(null);
    setShowTable(false);
    setReportData([]);
    setCurrentPage(0);
  };

  const dynamicHeaders = useMemo(() => {
    const headersMap = {};
    
    reportData.forEach((student) => {
      if (student.semester_wise_details) {
        Object.keys(student.semester_wise_details).forEach((sem) => {
          if (!headersMap[sem]) headersMap[sem] = new Set();
          Object.keys(student.semester_wise_details[sem]).forEach((elem) => {
            if (elem !== "DISCOUNT") {
              headersMap[sem].add(elem);
            }
          });
        });
      }
    });

    const headers = [];
    const sems = Object.keys(headersMap).sort();
    
    sems.forEach((sem) => {
      const elems = Array.from(headersMap[sem]).sort();
      elems.forEach((elem) => {
        headers.push({ sem, elem }); 
      });
    });

    return headers;
  }, [reportData]);

  const exportToExcel = () => {
    if (reportData.length > 0) {
      const exportRows = reportData.map((item, index) => {
        const row = {
          "Sl No": index + 1,
          "Student Name": item.student_name || "",
          "Session": item.batch_name || "",
          "Course": item.course_name || "",
          "Section": item.section_name || "",
          "Father Name": item.fatherName || "",
          "Mother Name": item.motherName || "",
        };

        dynamicHeaders.forEach(({sem, elem}) => {
          const detail = item.semester_wise_details?.[sem]?.[elem];
          row[`${sem} - ${elem} (Amount)`] = detail ? detail.amount : 0;
          row[`${sem} - ${elem} (Paid)`] = detail ? detail.paid : 0;
          row[`${sem} - ${elem} (Balance)`] = detail ? detail.balance : 0;
        });

        row["Total Fees"] = item.total_fees || 0;
        row["Fees Paid"] = item.total_paid || 0;
        row["Discount"] = item.discount_fees || 0;
        row["Balance"] = item.remaining_fees || 0;

        return row;
      });

      const ws = XLSX.utils.json_to_sheet(exportRows);
      const wb = XLSX.utils.book_new();
      XLSX.utils.book_append_sheet(wb, ws, "FeeReports");
      XLSX.writeFile(wb, "Fee_Report_Data.xlsx");
    } else {
      alert("No data available to export!");
    }
  };

  const handlePageClick = (data) => setCurrentPage(data.selected);
  const offset = currentPage * itemsPerPage;
  const currentItems = reportData.slice(offset, offset + itemsPerPage);
  const pageCount = Math.ceil(reportData.length / itemsPerPage);

  return (
    <div className="container-fluid">
      <div className="row">
        <div className="col-12">
          <div className="card">
            <div className="card-body">
              <p style={{ marginBottom: "0px", textAlign: "center", fontSize: "20px", fontWeight: "700" }}>
                FEE REPORT
              </p>

              <div className="row mb-3 mt-3 mx-0">
                <div className="col-12 d-flex flex-wrap gap-2">
                  <button type="button" className="btn btn-primary" style={{ width: "150px" }} onClick={handleSearch}>
                    Search
                  </button>
                  <button type="button" className="btn btn-secondary" style={{ width: "150px" }} onClick={handleClear}>
                    Clear
                  </button>
                  <button type="button" className="btn btn-danger" style={{ width: "150px" }} onClick={() => navigate("/admin/dashboard")}>
                    Close
                  </button>
                  <button type="button" className="btn btn-success" style={{ width: "150px" }} onClick={exportToExcel}>
                    Export to Excel
                  </button>
                </div>
              </div>

              <div className="row mt-3 mx-2">
                <div className="col-12 custom-section-box">
                  <div className="row flex-grow-1">
                    
                    <div className="col-12 col-md-4 mb-3">
                      <label className="form-label">Session</label>
                      <Select
                        className="react-select detail"
                        classNamePrefix="react-select"
                        options={sessions}
                        value={selectedSession}
                        onChange={(opt) => {
                          setSelectedSession(opt);
                          setSelectedCourse(null);
                          setSelectedDepartment(null);
                          setSelectedAcademicYear(null);
                          setSelectedSemester(null);
                          setSelectedSection(null);
                        }}
                        placeholder="Select Session"
                        isClearable
                      />
                    </div>

                    <div className="col-12 col-md-4 mb-3">
                      <label className="form-label">Course</label>
                      <Select
                        className="react-select detail"
                        classNamePrefix="react-select"
                        options={courses}
                        value={selectedCourse}
                        onChange={(opt) => {
                          setSelectedCourse(opt);
                          setSelectedDepartment(null);
                          setSelectedAcademicYear(null);
                          setSelectedSemester(null);
                          setSelectedSection(null);
                        }}
                        placeholder="Select Course"
                        isClearable
                        isDisabled={!selectedSession}
                      />
                    </div>

                    <div className="col-12 col-md-4 mb-3">
                      <label className="form-label">Department</label>
                      <Select
                        className="react-select detail"
                        classNamePrefix="react-select"
                        options={departments}
                        value={selectedDepartment}
                        onChange={(opt) => {
                          setSelectedDepartment(opt);
                          setSelectedAcademicYear(null);
                          setSelectedSemester(null);
                          setSelectedSection(null);
                        }}
                        placeholder="Select Department"
                        isClearable
                        isDisabled={!selectedCourse}
                      />
                    </div>

                    <div className="col-12 col-md-4 mb-3">
                      <label className="form-label">Academic Year</label>
                      <Select
                        className="react-select detail"
                        classNamePrefix="react-select"
                        options={academicYears}
                        value={selectedAcademicYear}
                        onChange={(opt) => {
                          setSelectedAcademicYear(opt);
                          setSelectedSemester(null);
                          setSelectedSection(null);
                        }}
                        placeholder="Select Academic Year"
                        isClearable
                        isDisabled={!selectedDepartment}
                      />
                    </div>

                    <div className="col-12 col-md-4 mb-3">
                      <label className="form-label">Semester</label>
                      <Select
                        className="react-select detail"
                        classNamePrefix="react-select"
                        options={semesters}
                        value={selectedSemester}
                        onChange={(opt) => {
                          setSelectedSemester(opt);
                          setSelectedSection(null);
                        }}
                        placeholder="Select Semester"
                        isClearable
                        isDisabled={!selectedAcademicYear}
                      />
                    </div>

                    <div className="col-12 col-md-4 mb-3">
                      <label className="form-label">Section</label>
                      <Select
                        className="react-select detail"
                        classNamePrefix="react-select"
                        options={sections}
                        value={selectedSection}
                        onChange={setSelectedSection}
                        placeholder="Select Section"
                        isClearable
                        isDisabled={!selectedSemester}
                      />
                    </div>

                  </div>
                </div>
              </div>

              {showTable && (
                <div className="fee-details-table mt-4 mx-2">
                  <div className="table-responsive">
                    <table className="table table-bordered align-middle text-center">
                      <thead className="table-light">
                        <tr>
                          <th rowSpan="2">Sr No</th>
                          <th rowSpan="2" style={{ minWidth: "150px" }}>Student Name</th>
                          <th rowSpan="2">Session</th>
                          <th rowSpan="2">Course</th>
                          <th rowSpan="2">Section</th>
                          <th rowSpan="2" style={{ minWidth: "150px" }}>Father Name</th>
                          <th rowSpan="2" style={{ minWidth: "150px" }}>Mother Name</th>
                          {dynamicHeaders.map((header, idx) => (
                            <th key={idx} colSpan="3" className="border-bottom">
                              {header.sem} <br/> <small className="text-muted">{header.elem}</small>
                            </th>
                          ))}
                          <th rowSpan="2">Total Fees</th>
                          <th rowSpan="2">Fees Paid</th>
                          <th rowSpan="2">Discount</th>
                          <th rowSpan="2">Balance</th>
                        </tr>
                        <tr>
                          {dynamicHeaders.map((_, idx) => (
                            <React.Fragment key={`sub-${idx}`}>
                              <th style={{ minWidth: "80px" }}>Total</th>
                              <th style={{ minWidth: "80px" }}>Paid</th>
                              <th style={{ minWidth: "80px" }}>Bal</th>
                            </React.Fragment>
                          ))}
                        </tr>
                      </thead>
                      <tbody>
                        {reportData.length > 0 ? (
                          currentItems.map((item, index) => (
                            <tr key={index}>
                              <td>{offset + index + 1}</td>
                              <td>{item.student_name || "-"}</td>
                              <td>{item.batch_name || "-"}</td>
                              <td>{item.course_name || "-"}</td>
                              <td>{item.section_name || "-"}</td>
                              <td>{item.fatherName || "-"}</td>
                              <td>{item.motherName || "-"}</td>
                              {dynamicHeaders.map((header, idx) => {
                                const detail = item.semester_wise_details?.[header.sem]?.[header.elem];
                                return (
                                  <React.Fragment key={`data-${idx}`}>
                                    <td>{detail ? detail.amount : "-"}</td>
                                    <td>{detail ? detail.paid : "-"}</td>
                                    <td>{detail ? detail.balance : "-"}</td>
                                  </React.Fragment>
                                );
                              })}
                              <td>{item.total_fees || 0}</td>
                              <td>{item.total_paid || 0}</td>
                              <td>{item.discount_fees || 0}</td>
                              <td>{item.remaining_fees || 0}</td>
                            </tr>
                          ))
                        ) : (
                          <tr>
                            <td colSpan={11 + dynamicHeaders.length * 3} className="text-center">No fee records found.</td>
                          </tr>
                        )}
                      </tbody>
                    </table>
                  </div>
                  {reportData.length > 0 && (
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
                      containerClassName={"pagination justify-content-center mt-3"}
                      pageClassName={"page-item"}
                      pageLinkClassName={"page-link"}
                      previousClassName={"page-item"}
                      previousLinkClassName={"page-link"}
                      nextClassName={"page-item"}
                      nextLinkClassName={"page-link"}
                      activeClassName={"active"}
                    />
                  )}
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default AdmFeeReport;
