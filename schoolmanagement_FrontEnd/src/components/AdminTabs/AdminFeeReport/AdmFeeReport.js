import React, { useState, useEffect } from "react";
import Select from "react-select";
import { ApiUrl } from "../../../ApiUrl";
import { useNavigate } from "react-router-dom";
import ReactPaginate from "react-paginate";
import * as XLSX from "xlsx";
import jsPDF from "jspdf";
import "jspdf-autotable";

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
  const [receiptsData, setReceiptsData] = useState([]);
  const [showTable, setShowTable] = useState(false);
  
  // Pagination
  const [currentPage, setCurrentPage] = useState(0);
  const receiptsPerPage = 10;

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
      view_receipt: true,
      view_cancel_receipt: false
    });

    if (selectedSession) params.append("batch_id", selectedSession.value);
    if (selectedCourse) params.append("course_id", selectedCourse.value);
    if (selectedDepartment) params.append("department_id", selectedDepartment.value);
    if (selectedAcademicYear) params.append("academic_year_id", selectedAcademicYear.value);
    if (selectedSemester) params.append("semester_id", selectedSemester.value);
    if (selectedSection) params.append("section_id", selectedSection.value);

    // Using the same endpoint as AdmFeeSearch
    const apiUrl = `${ApiUrl.apiurl}FeeReceipt/GetFilterFeeReceipts/?${params.toString()}`;

    try {
      const response = await fetch(apiUrl, {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${localStorage.getItem("accessToken")}`,
        },
      });

      const result = await response.json();

      if (response.ok && Array.isArray(result.data)) {
        setReceiptsData(result.data);
        setShowTable(true);
        setCurrentPage(0);
      } else {
        setReceiptsData([]);
        setShowTable(false);
      }
    } catch (error) {
      console.error("Error fetching data:", error);
      setReceiptsData([]);
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
    setReceiptsData([]);
    setCurrentPage(0);
  };

  const exportToExcel = () => {
    if (receiptsData.length > 0) {
      const ws = XLSX.utils.json_to_sheet(receiptsData);
      const wb = XLSX.utils.book_new();
      XLSX.utils.book_append_sheet(wb, ws, "FeeReports");
      XLSX.writeFile(wb, "Fee_Report_Data.xlsx");
    } else {
      alert("No data available to export!");
    }
  };

  const handleReceiptLinkClick = async (receiptNo) => {
    const orgId = sessionStorage.getItem("organization_id");
    const branchId = sessionStorage.getItem("branch_id");

    if (!orgId || !branchId) {
      alert("Organization or Branch ID missing.");
      return;
    }

    try {
      const response = await fetch(
        `${ApiUrl.apiurl}FeeReceipt/GetFeeReceiptsBasedOnReceiptNo/?organization_id=${orgId}&branch_id=${branchId}&receipt_no=${receiptNo}`
      );
      const result = await response.json();

      if (response.ok && result.receipt_data) {
        const data = result.receipt_data;
        const doc = new jsPDF("portrait", "mm", "a4");

        // LOGO LOAD
        const toBase64 = (url) =>
          new Promise((resolve, reject) => {
            const img = new Image();
            img.crossOrigin = "Anonymous";
            img.onload = () => {
              const canvas = document.createElement("canvas");
              canvas.width = img.width;
              canvas.height = img.height;
              canvas.getContext("2d").drawImage(img, 0, 0);
              resolve(canvas.toDataURL("image/jpeg"));
            };
            img.onerror = reject;
            img.src = url;
          });

        try {
          const sparshLogo = await toBase64("/Assets/sparsh.jpeg");
          doc.addImage(sparshLogo, "JPEG", 10, 10, 20, 20);
        } catch { }

        // HEADER
        const pageWidth = doc.internal.pageSize.getWidth();
        doc.setFont("Helvetica", "bold");
        doc.setFontSize(16);
        const headerText = "Sparsh College of Nursing and Allied Sciences";
        const textWidth =
          (doc.getStringUnitWidth(headerText) * doc.internal.getFontSize()) /
          doc.internal.scaleFactor;
        doc.text(headerText, (pageWidth - textWidth) / 2, 22);
        doc.setFontSize(12);
        doc.text("Fee Receipt", pageWidth / 2, 30, { align: "center" });

        // RECEIPT DETAILS
        const receiptDetails = [
          ["Receipt No", data.receipt_no, "Section", data.section_name],
          [
            "Receipt Date",
            data.receipt_date?.split("T")[0],
            "Father's Name",
            data.father_name,
          ],
          [
            "Student Name",
            Array.isArray(data.student_name)
              ? data.student_name.join(" ")
              : typeof data.student_name === "object" &&
                data.student_name !== null
                ? Object.values(data.student_name).join(" ")
                : data.student_name || "",
            "Fee Period",
            Array.isArray(data.fee_semesters)
              ? data.fee_semesters.join(", ")
              : typeof data.fee_semesters === "object" &&
                data.fee_semesters !== null
                ? Object.values(data.fee_semesters).join(", ")
                : data.fee_semesters || "",
          ],
          ["Admission No", data.admission_no, "Amount", Number(data.amount || 0).toFixed(2)],
          ["Class", `${data.course_name || ""} - ${data.semester_name || ""}`, "", ""],
        ];

        doc.autoTable({
          startY: 35,
          body: receiptDetails,
          theme: "grid",
          styles: { fontSize: 11, fontStyle: "bold" },
          margin: { left: 15 },
          tableWidth: 180,
        });

        // FEE ELEMENT TABLE
        const feeElements = Object.values(data.payment_element_list || {}).map(
          (el, index) => [index + 1, el.element_name, Number(el.amount || 0).toFixed(2)]
        );
        feeElements.push(["", "Total", Number(data.amount || 0).toFixed(2)]);

        doc.autoTable({
          startY: doc.lastAutoTable.finalY + 8,
          head: [["Sr. No.", "Element", "Amount"]],
          body: feeElements,
          theme: "grid",
          styles: { fontSize: 11, fontStyle: "bold" },
          columnStyles: { 2: { halign: "right" } },
          margin: { left: 15 },
          tableWidth: 180,
        });

        // PAYMENT METHOD TABLE
        const paymentData = [
          [
            data.payment_method || "-",
            data.payment_reference || "-",
            data.remarks || "-",
            Number(data.amount || 0).toFixed(2),
          ],
        ];

        doc.autoTable({
          startY: doc.lastAutoTable.finalY + 8,
          head: [["Payment Method", "Payment Reference", "Remark", "Amount"]],
          body: paymentData,
          theme: "grid",
          styles: { fontSize: 11, fontStyle: "bold" },
          columnStyles: { 3: { halign: "right" } },
          margin: { left: 15 },
          tableWidth: 180,
        });

        // SUMMARY TABLE
        const summary = [
          ["Total Session Fee", Number(data.total_academic_year_fees || 0).toFixed(2)],
          ["Total Paid", Number(data.total_paid || 0).toFixed(2)],
          ["Total Balance", Number(data.remaining_amount || 0).toFixed(2)],
        ];

        doc.autoTable({
          startY: doc.lastAutoTable.finalY + 8,
          body: summary,
          theme: "grid",
          styles: { fontSize: 11, fontStyle: "bold" },
          columnStyles: { 1: { halign: "right" } },
          margin: { left: 15 },
          tableWidth: 180,
        });

        // OPEN PDF
        const pdfBlob = doc.output("blob");
        window.open(URL.createObjectURL(pdfBlob), "_blank");
      } else {
        alert(result.message || "Failed to fetch receipt details.");
      }
    } catch (error) {
      console.error("Error fetching receipt details:", error);
      alert("An error occurred. Please try again.");
    }
  };

  const handlePageClick = (data) => setCurrentPage(data.selected);
  const offset = currentPage * receiptsPerPage;
  const currentReceipts = receiptsData.slice(offset, offset + receiptsPerPage);
  const pageCount = Math.ceil(receiptsData.length / receiptsPerPage);

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
                    <table className="table table-bordered">
                      <thead>
                        <tr>
                          <th>Sr No</th>
                          <th>Session</th>
                          <th>Academic Year</th>
                          <th>Course</th>
                          <th>Current Semester</th>
                          <th>Fee Period</th>
                          <th>Name</th>
                          <th>Father's Name</th>
                          <th>Section</th>
                          <th>Bar Code No</th>
                          <th>College Admission No</th>
                          <th>Receipt Date</th>
                          <th>Receipt Amount</th>
                          <th>Discount Amount</th>
                          <th>Receipt No</th>
                        </tr>
                      </thead>
                      <tbody>
                        {receiptsData.length > 0 ? (
                          currentReceipts.map((receipt, index) => (
                            <tr key={index}>
                              <td>{offset + index + 1}</td>
                              <td>{receipt.batch_description || receipt.batch || "-"}</td>
                              <td>{receipt.academic_year_code || receipt.academic_year || "-"}</td>
                              <td>{receipt.course_name || "-"}</td>
                              <td>{receipt.current_semester_name || "-"}</td>
                              <td>{receipt.semester_description || receipt.semester_name || "-"}</td>
                              <td>{receipt.student_name || "-"}</td>
                              <td>{receipt.father_name || "-"}</td>
                              <td>{receipt.section_name || "-"}</td>
                              <td>{receipt.barcode || "-"}</td>
                              <td>{receipt.college_admission_no || "-"}</td>
                              <td>{receipt.receiptDate ? new Date(receipt.receiptDate).toLocaleDateString() : receipt.receipt_date ? new Date(receipt.receipt_date).toLocaleDateString() : "-"}</td>
                              <td>{receipt.amount || 0}</td>
                              <td>{receipt.discount_amount || 0}</td>
                              <td>
                                <a
                                  href="#"
                                  onClick={(e) => {
                                    e.preventDefault();
                                    handleReceiptLinkClick(receipt.receipt_no);
                                  }}
                                >
                                  RC{receipt.receipt_no || "-"}
                                </a>
                              </td>
                            </tr>
                          ))
                        ) : (
                          <tr>
                            <td colSpan="15" className="text-center">No fee records found.</td>
                          </tr>
                        )}
                      </tbody>
                    </table>
                  </div>
                  {receiptsData.length > 0 && (
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
