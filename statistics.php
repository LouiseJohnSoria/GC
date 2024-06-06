<?php include 'server/server.php' ?>
<?php 
	$query = "SELECT * FROM tbl_employee WHERE `status` != 3";
    $result = $conn->query($query);
	$total = $result->num_rows;

    $tbl_employee = array();
	while($row = $result->fetch_assoc()){
		$statistics[] = $row; 
	}

	$query1 = "SELECT * FROM tbl_employee WHERE gender='Male' AND `status`!=3";
    $result1 = $conn->query($query1);
    $male = $result1->num_rows;
    
    $query2 = "SELECT * FROM tbl_employee WHERE gender='Female' AND `status`!=3";
    $result2 = $conn->query($query2);
    $female = $result2->num_rows;


	// $query2 = "SELECT * FROM tblblotter WHERE `status`='Scheduled'";
    // $result2 = $conn->query($query2);
	// $female = $result2->num_rows;

	// $query3 = "SELECT * FROM tblblotter WHERE `status`='Settled'";
    // $result3 = $conn->query($query3);
	// $settled = $result3->num_rows;

	// Ensure to close the database connection after use to free up resources
$conn->close();

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'templates/header.php' ?>
	<title>Employee Statistics</title>
     <!-- Include DataTables CSS and JS files -->
     <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<!-- Include DataTables Buttons extension CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">

    <!-- Include jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Include DataTables library -->
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <!-- Include DataTables Buttons extension -->
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <style>
        /* Adjust column widths */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        /* Add ellipsis for overflowed text */
        .truncate {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        /* Define the initial scale for cards */
	  .card-stats {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0); /* Initial box-shadow */
        }

        /* Apply the scaling effect and glowing effect when hovering over the card */
        .card-stats:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5); /* Adjust glow effect as needed */
        }

        /* Apply the scaling effect and glowing effect when the card is clicked */
        .card-stats:active {
            transform: scale(1.1);
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.8); /* Intensify glow effect as needed */
        }
        .dropdown-submenu {
  position: relative;
}

.dropdown-submenu .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -1px;
}
    </style>
</head>
<body>
<?php include 'templates/loading_screen.php' ?>
	<div class="wrapper">
		<!-- Main Header -->
		<?php include 'templates/main-header.php' ?>
		<!-- End Main Header -->

		<!-- Sidebar -->
		<?php include 'templates/sidebar.php' ?>
		<!-- End Sidebar -->

		<div class="main-panel">
			<div class="content">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white fw-bold">Employee Statistics</h2>
							</div>
						</div>
					</div>
				</div>	
				<br>
				<div class="row">
    <div class="col-md-3 offset-md-2">
        <div class="card card-stats card-success card-round" style="width: 100%; min-height: 100px;">
            <div class="card-body">
                <div class="row">
                    <div class="col-3">
                        <div class="icon-big text-center">
                            <a href="javascript:void(0)" id="employees" class="card-link text-light">
                                <i class="bi bi-people-fill"></i>
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                                    <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5.784 6A2.24 2.24 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.3 6.3 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1zM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="col-3 col-stats"></div>
                    <div class="col-6 col-stats">
                        <div class="numbers mt-1">
                            <h4 class="fw-bold text-uppercase">Employees</h4>
                            <h2 class="fw-bold text-uppercase" id="employeesCount">0</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-md-3">
        <div class="card card-stats card-primary card-round" style="width: 100%; min-height: 100px;">
            <div class="card-body">
                <div class="row">
                    <div class="col-3">
                        <div class="icon-big text-center">
                            <a href="javascript:void(0)" id="male" class="card-link text-light">
                                <i class="bi bi-person-standing"></i>
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-standing" viewBox="0 0 16 16">
                                    <path d="M8 3a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3M6 6.75v8.5a.75.75 0 0 0 1.5 0V10.5a.5.5 0 0 1 1 0v4.75a.75.75 0 0 0 1.5 0v-8.5a.25.25 0 1 1 .5 0v2.5a.75.75 0 0 0 1.5 0V6.5a3 3 0 0 0-3-3H7a3 3 0 0 0-3 3v2.75a.75.75 0 0 0 1.5 0v-2.5a.25.25 0 0 1 .5 0"/>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="col-3 col-stats"></div>
                    <div class="col-6 col-stats">
                        <div class="numbers">
                            <h4 class="fw-bold text-uppercase">Male</h4>
                            <h2 class="fw-bold text-uppercase" id="maleCount">0</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-3">
        <div class="card card-stats card-warning card-round" style="width: 100%; min-height: 100px;">
            <div class="card-body">
                <div class="row">
                    <div class="col-3">
                        <div class="icon-big text-center">
                            <a href="javascript:void(0)" id="female" class="card-link text-light">
                                <i class="bi bi-person-standing-dress"></i>
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-standing-dress" viewBox="0 0 16 16">
                                    <path d="M8 3a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3m-.5 12.25V12h1v3.25a.75.75 0 0 0 1.5 0V12h1l-1-5v-.215a.285.285 0 0 1 .56-.078l.793 2.777a.711.711 0 1 0 1.364-.405l-1.065-3.461A3 3 0 0 0 8.784 3.5H7.216a3 3 0 0 0-2.868 2.118L3.283 9.079a.711.711 0 1 0 1.365.405l.793-2.777a.285.285 0 0 1 .56.078V7l-1 5h1v3.25a.75.75 0 0 0 1.5 0Z"/>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="col-3 col-stats"></div>
                    <div class="col-6 col-stats">
                        <div class="numbers mt-1">
                            <h4 class="fw-bold text-uppercase">Female</h4>
                            <h2 class="fw-bold text-uppercase" id="femaleCount">0</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


   
				<div class="page-inner">
				<?php if(isset($_SESSION['message'])): ?>
							<div class="alert alert-<?php echo $_SESSION['success']; ?> <?= $_SESSION['success']=='danger' ? 'bg-danger text-light' : null ?>" role="alert">
								<?php echo $_SESSION['message']; ?>
							</div>
						<?php unset($_SESSION['message']); ?>
						<?php endif ?>
					<div class="row mt--2">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">
                                            
                                        <div class="container">
                                        <div class="dropdown">
                                            <select id="statusFilter" class="form-control">
                                                <option value="All">All</option>
                                                <option value="Fit">Fit</option>
                                                <!-- <option value="Unfit">Unfit</option> -->
                                                <option value="On-Leave">On-Leave</option>
                                                <option value="On Official Time">On Official Time</option>
                                                <option value="On Official Business">On Official Business</option>
                                                <optgroup label="Health Condition">
                                                <option value="PWD">PWD</option>
                                                <option value="Fever">Fever</option>
                                                <option value="Asthma">Asthma</option>
                                                <option value="Pregnant">Pregnant</option>
                                                <option value="Allergies">Allergies</option>
                                                <option value="Heart Disease">Heart Disease</option>
                                                <option value="Cancer">Cancer</option>
                                                <option value="Cardiovascular Disease">Cardiovascular Disease</option>
                                                <option value="Diabetes">Diabetes</option>
                                                <option value="Hypertension">Hypertension</option>
                                                <option value="Injuries">Injuries</option>
                                                <option value="Stroke">Stroke</option>
                                                </optgroup>
                                            </select>
                                        </div>
                                        </div>
                                   
                            </div>
										<!-- <?php if(isset($_SESSION['username'])):?>
											<div class="card-tools">
												<a href="#add" data-toggle="modal" class="btn btn-info btn-border btn-round btn-sm">
													<i class="fa fa-plus"></i>
													Modal if ever
												</a>
											</div>
										<?php endif?> -->
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table id="residenttable" class="display table table-hover">
                                        <thead>
                                                        <tr>
                                                            
                                                            <th scope="col">Employee ID</th>
                                                            <th scope="col">Full Name</th>
                                                            <th scope="col">Department</th>
                                                            <th scope="col">Contact</th>
                                                            <th scope="col">Age</th>
                                                            <th scope="col">Sex</th>
                                                            <th scope="col">Status</th>
                                                            <th scope="col">Team</th>

                                                            

                                                        </tr>
                                                    </thead>
											<tbody>
												<?php if(!empty($statistics)): ?>
													<?php foreach($statistics as $row): ?>
                                                        <tr>
                                                                    
                                                                    <td><?= $row['emp_id_no'] ?></td>
                                                                    <td>
                                                                        <?= ucwords($row['lname'] . ', ' . $row['fname'] . ' ' . $row['mname']) ?>
                                                                    </td>
                                                                    <td><?= $row['dept'] ?></td>
                                                                    <td><?= $row['contact'] ?></td>
                                                                    <td><?= $row['age'] ?></td>
                                                                    <td><?= $row['gender'] ?></td>
                                                                    <td><?= $row['stat'] ?></td>
                                                                    <td><?= $row['team'] ?></td>


                                                                    <?php if (isset($_SESSION['username'])) : ?>
                                                                        <?php if ($_SESSION['role'] == 'administrator') : ?>
                                                                        <?php endif ?>

                                                                        <!-- <td>
                                                                            <div class="form-button-action">
                                                                                <a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary" title="Edit Employee" onclick="editEmployee(this)" data-id="<?= $row['id'] ?>" data-fname="<?= $row['fname'] ?>" data-mname="<?= $row['mname'] ?>" data-lname="<?= $row['lname'] ?>" data-employee-id="<?= $row['emp_id_no'] ?>" data-department="<?= $row['dept'] ?>" data-contact="<?= $row['contact'] ?>" data-statedit="<?= $row['stat'] ?>" data-age="<?= $row['age'] ?>" data-gender="<?= $row['gender'] ?>" data-sports="<?= $row['sports'] ?>" data-team="<?= $row['team'] ?>">
                                                                                    <?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?>
                                                                                        <i class="fa fa-edit"></i>
                                                                                    <?php endif ?>
                                                                                </a>
                                                                                <?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?> -->
                                                                                    <!-- <a type="button" data-toggle="tooltip" href="model/remove_employee.php?id=<?= $row['id'] ?>" onclick="return confirm('Are you sure you want to archive this employee?');" class="btn btn-link btn-danger" data-original-title="Remove">
                                                                                        <i class="fa fa-times"></i>
                                                                                    </a> -->
                                                                                    <!-- <a href="#" class="btn btn-link btn-danger" data-toggle="modal" data-target="#archiveEmployee<?= $row['id'] ?>">
                                                                                        <i class="fa fa-times"></i>
                                                                                    </a> -->
                                                                                <!-- <?php endif ?>
                                                                            </div>
                                                                        </td> -->


                                                                        <!-- Archive Employee -->
                                                                        <!-- <div class="modal fade" id="archiveEmployee<?= $row['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                                            <div class="modal-dialog" role="document">
                                                                                <div class="modal-content">
                                                                                    <?php if (isset($_SESSION['username'])) : ?>
                                                                                        <form method="POST" action="model/remove_employee.php?id=<?= $row['id'] ?>">
                                                                                            <div class="modal-header">
                                                                                                <h5 class="modal-title" id="exampleModalLabel">Warning!</h5>
                                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                    <span aria-hidden="true">&times;</span>
                                                                                                </button>
                                                                                            </div>
                                                                                            <div class="modal-body">
                                                                                                <div class="form-group form-floating-label">
                                                                                                    <label>Are you sure you want to archive this employee?</label>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="modal-footer">
                                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                                                                <button type="submit" class="btn btn-danger" name="emp_delete_multiple_btn">Archive</button>
                                                                                            </div>
                                                                                        </form>
                                                                                    <?php endif ?>
                                                                                </div>
                                                                            </div>
                                                                        </div> -->
                                                                    <?php endif ?>

                                                                </tr>
													<?php endforeach ?>
												<?php endif ?>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php include 'templates/footer.php' ?>
	<script src="assets/js/plugin/datatables/datatables.min.js"></script>
    <script>
$(document).ready(function() {
    // Initialize DataTable and store original data
    var oTable = $('#residenttable').DataTable({
        "order": [[4, "asc"]],
        dom: '<"row"<"col-md-6"l><"col-md-6"fB>>rtip',
        buttons: [
            {
                extend: 'copy',
                text: 'Copy',
                className: 'btn btn-secondary btn-sm'
            },
            {
                extend: 'csv',
                text: 'CSV',
                className: 'btn btn-secondary btn-sm',
                title: function () {
                    var filename = prompt('Enter the file name for CSV export:');
                    return filename ? filename : null;
                },
                action: function (e, dt, button, config) {
                    var filename = config.title();
                    if (filename) {
                        $.fn.dataTable.ext.buttons.csvHtml5.action.call(this, e, dt, button, $.extend({}, config, { title: filename }));
                    }
                }
            },
            {
                extend: 'excel',
                text: 'Excel',
                className: 'btn btn-secondary btn-sm',
                title: function () {
                    var filename = prompt('Enter the file name for Excel export:');
                    return filename ? filename : null;
                },
                action: function (e, dt, button, config) {
                    var filename = config.title();
                    if (filename) {
                        $.fn.dataTable.ext.buttons.excelHtml5.action.call(this, e, dt, button, $.extend({}, config, { title: filename }));
                    }
                }
            },
            {
                extend: 'pdf',
                text: 'PDF',
                className: 'btn btn-secondary btn-sm',
                title: function () {
                    var filename = prompt('Enter the file name for PDF export:');
                    return filename ? filename : null;
                },
                action: function (e, dt, button, config) {
                    var filename = config.title();
                    if (filename) {
                        $.fn.dataTable.ext.buttons.pdfHtml5.action.call(this, e, dt, button, $.extend({}, config, { title: filename }));
                    }
                }
            },
            {
                extend: 'print',
                text: 'Print',
                className: 'btn btn-secondary btn-sm'
            }
        ]
    });
    var originalData = oTable.rows().data().toArray();

    function updateCounts(filteredData) {
        var employeesCount = filteredData.length;
        var maleCount = 0;
        var femaleCount = 0;

        filteredData.forEach(function(rowData) {
            if (rowData[5] === 'Male') {
                maleCount++;
            } else if (rowData[5] === 'Female') {
                femaleCount++;
            }
        });

        console.log("Filtered Data:", filteredData);
        console.log("Employees Count:", employeesCount);
        console.log("Male Count:", maleCount);
        console.log("Female Count:", femaleCount);

        $("#employeesCount").text(employeesCount);
        $("#maleCount").text(maleCount);
        $("#femaleCount").text(femaleCount);
    }

    function filterTable(gender, status) {
        var filteredData = originalData.filter(function(rowData) {
            return (gender === 'All' || rowData[5] === gender) && (status === 'All' || rowData[6] === status);
        });

        console.log("Filtered Data:", filteredData);

        oTable.clear().rows.add(filteredData).draw();
        updateCounts(filteredData);
    }

    $('#employees').click(function() {
        var statusFilter = $('#statusFilter').val();
        filterTable('All', statusFilter);
    });

    $('#male').click(function() {
        var statusFilter = $('#statusFilter').val();
        filterTable('Male', statusFilter);
    });

    $('#female').click(function() {
        var statusFilter = $('#statusFilter').val();
        filterTable('Female', statusFilter);
    });

    $("#statusFilter").change(function() {
        var genderFilter = 'All';
        if ($('#male').hasClass('active')) {
            genderFilter = 'Male';
        } else if ($('#female').hasClass('active')) {
            genderFilter = 'Female';
        }
        var statusFilter = $(this).val();
        filterTable(genderFilter, statusFilter);
    });

    // Initial counts update
    updateCounts(originalData);
});

</script>


<!-- Include jQuery and DataTables library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<script>
$(document).ready(function() {
    // Event listener for Count Data button
    $("#countButton").on('click', function() {
        var table = $('#residenttable').DataTable();
        var filteredData = table.rows({ search: 'applied' }).data();
        var rowCount = filteredData.count();
        $("#dataCount").text("Total Data Count: " + rowCount);
        $('#countModal').modal('show');
    });

    // Event listener for Generate Report button
    $('#generateReportBtn').click(function() {
        var filteredData = $('#residenttable').DataTable().rows().data().toArray();
        var csvData = "Employee ID,Full Name,Department,Contact,Age,Gender,Status,Team\n"; // Add "Team" header
        filteredData.forEach(function(row) {
            // Join row data with commas and add a new line
            csvData += row.join(',') + '\n';
        });
        // Initiate download with formatted CSV data
        initiateDownload(csvData);
    });

    // Function to initiate download of the generated report
    function initiateDownload(data) {
        var downloadLink = document.createElement('a');
        downloadLink.href = 'data:text/csv;charset=utf-8,' + encodeURIComponent(data);
        downloadLink.download = 'employee_report.csv';
        document.body.appendChild(downloadLink);
        downloadLink.click();
        document.body.removeChild(downloadLink);
    }
});
</script>

<!-- Include the provided JavaScript code -->
<!-- <script>
$(document).ready(function() {
    // Destroy existing DataTable instance if it exists
    if ($.fn.DataTable.isDataTable('#residenttable')) {
        $('#residenttable').DataTable().destroy();
    }

    // Initialize DataTable with buttons positioned beside the dropdown filter
    $('#residenttable').DataTable({
        dom: '<"row"<"col-md-6"l><"col-md-6"fB>>rtip',
        buttons: [
            {
                extend: 'copy',
                text: 'Copy',
                className: 'btn btn-secondary btn-sm'
            },
            {
                extend: 'csv',
                text: 'CSV',
                className: 'btn btn-secondary btn-sm'
            },
            {
                extend: 'excel',
                text: 'Excel',
                className: 'btn btn-secondary btn-sm'
            },
            {
                extend: 'pdf',
                text: 'PDF',
                className: 'btn btn-secondary btn-sm'
            },
            {
                extend: 'print',
                text: 'Print',
                className: 'btn btn-secondary btn-sm'
            }
        ]
    });
});
</script> -->
<!-- Include DataTables Buttons extension JS -->
<script src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>

<!-- Additional code to manage counts -->
<script>
$(document).ready(function() {
    // Function to update counts based on current filter
    function updateCounts() {
        var table = $('#residenttable').DataTable();
        var filteredData = table.rows({ search: 'applied' }).data();
        var totalEmployees = filteredData.count();
        var maleCount = filteredData.filter(function(row) { return row[5] === 'Male'; }).count();
        var femaleCount = filteredData.filter(function(row) { return row[5] === 'Female'; }).count();
        
        $("#employeesCount").text(totalEmployees);
        $("#maleCount").text(maleCount);
        $("#femaleCount").text(femaleCount);
    }

    // Call updateCounts whenever the table is drawn
    $('#residenttable').on('draw.dt', function() {
        updateCounts();
    });
});
</script>

<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>

</body>
</html>