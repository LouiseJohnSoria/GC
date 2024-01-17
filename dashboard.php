<?php include 'server/server.php' ?>
<?php

$query = "SELECT * FROM tbl_employee WHERE `status`!=3";
$result = $conn->query($query);
$total = $result->num_rows;

$query1 = "SELECT * FROM tbl_employee WHERE gender='Male' AND `status`!=3";
$result1 = $conn->query($query1);
$male = $result1->num_rows;

$query2 = "SELECT * FROM tbl_employee WHERE gender='Female' AND `status`!=3";
$result2 = $conn->query($query2);
$female = $result2->num_rows;

$query3 = "SELECT * FROM tbl_users";
$result3 = $conn->query($query3);
$users = $result3->num_rows;

$query4 = "SELECT * FROM tbl_teams";
$result4 = $conn->query($query4);
$teams = $result4->num_rows;

$query5 = "SELECT * FROM tbl_employee WHERE sports IS NOT NULL AND `status`!=3";
$result5 = $conn->query($query5);
$has_sports = $result5->num_rows;

$query6 = "SELECT * FROM tbl_employee WHERE sports IS NULL AND `status`!=3";
$result6 = $conn->query($query6);
$no_sports = $result6->num_rows;

$Leave = "On-Leave";
$Normal = "Normal";
$Health = "Health-Issue";

$query7 = "SELECT * FROM tbl_employee WHERE stat = '$Leave'  AND `status`!=3";
$result7 = $conn->query($query7);
$Leave = $result7->num_rows;

$query8 = "SELECT * FROM tbl_employee WHERE stat = '$Normal'  AND `status`!=3";
$result8 = $conn->query($query8);
$Normal = $result8->num_rows;

$query9 = "SELECT * FROM tbl_employee WHERE  stat = '$Health'  AND `status`!=3";
$result9 = $conn->query($query9);
$Health = $result9->num_rows;

$query9 = "SELECT * FROM tbl_sports WHERE type IS NULL  ";
$result9 = $conn->query($query9);
$sports = $result9->num_rows;


// for team leader
$team = $_SESSION['team_assigned'];
$gender = isset($_POST['gender']);
$query7 = "SELECT * FROM tbl_employee WHERE team='$team' AND `status`!=3";
$query8 = "SELECT * FROM tbl_employee WHERE gender='Male' AND team='$team' AND `status`!=3";
$query9 = "SELECT * FROM tbl_employee WHERE gender='Female' AND team='$team' AND `status`!=3";
$query10 = "SELECT * FROM tbl_employee WHERE team='$team' AND sports IS NOT NULL AND `status`!=3";
$query11 = "SELECT * FROM tbl_employee WHERE team='$team' AND sports='None' AND `status`!=3";

// members
$result7 = $conn->query($query7);
$total_members = $result7->num_rows;

// male
$result8 = $conn->query($query8);
$total_male = $result8->num_rows;

// female
$result9 = $conn->query($query9);
$total_female = $result9->num_rows;

// has sports
$result10 = $conn->query($query10);
$total_has_sports = $result10->num_rows;

// no sports
$result11 = $conn->query($query11);
$total_no_sports = $result11->num_rows;

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<?php include 'templates/header.php' ?>
	<title>Dashboard - Team Management System</title>
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
								<h2 class="text-white fw-bold">Dashboard</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--2">
					<?php if (isset($_SESSION['message'])) : ?>
						<div class="alert alert-<?= $_SESSION['success']; ?> <?= $_SESSION['success'] == 'danger' ? 'bg-danger text-light' : null ?>" role="alert">
							<?php echo $_SESSION['message']; ?>
						</div>
						<?php unset($_SESSION['message']); ?>
					<?php endif ?>
					<div class="row">
						<div class="col-md-4">
							<div class="card card-stats card-success card-round">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<div class="icon-big text-center">
												<i class="fa fa-users"></i>
											</div>
										</div>
										<div class="col-3 col-stats">
										</div>
										<div class="col-6 col-stats">
											<div class="numbers mt-4">
												<?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?>
													<h2 class="fw-bold text-uppercase">Employees</h2>
													<h3 class="fw-bold text-uppercase"><?= number_format($total) ?></h3>

												<?php else : ?>
													<h2 class="fw-bold text-uppercase">Members</h2>
													<h3 class="fw-bold text-uppercase"><?= number_format($total_members) ?></h3>
												<?php endif ?>

											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<!-- <a href="resident_info.php?state=all" class="card-link text-light">Total Employees </a> -->
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-stats card-primary card-round">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<div class="icon-big text-center">
												<i class="fa fa-male"></i><i class="fa fa-mars"></i>
											</div>
										</div>
										<div class="col-3 col-stats">
										</div>
										<div class="col-6 col-stats">
											<div class="numbers mt-4">
												<h2 class="fw-bold text-uppercase">Male</h2>
												<?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?>
													<h3 class="fw-bold"><?= number_format($male) ?></h3>
												<?php else : ?>
													<h3 class="fw-bold"><?= number_format($total_male) ?></h3>
												<?php endif ?>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<!-- <a href="resident_info.php?state=male" class="card-link text-light">Total Male </a> -->
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-stats card-danger card-round">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<div class="icon-big text-center">
												<i class="fa fa-female"></i><i class="fa fa-venus"></i>
											</div>
										</div>
										<div class="col-3 col-stats">
										</div>
										<div class="col-6 col-stats">
											<div class="numbers mt-4">
												<h2 class="fw-bold text-uppercase">Female</h2>
												<?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?>
													<h3 class="fw-bold"><?= number_format($female) ?></h3>
												<?php else : ?>
													<h3 class="fw-bold"><?= number_format($total_female) ?></h3>
												<?php endif ?>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<!-- <a href="resident_info.php?state=female" class="card-link text-light">Total Female </a> -->
								</div>
							</div>
						</div>
					</div>

					<?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'team leader') : ?>
						<div class="row">
							<div class="col-md-4">
								<div class="card card-stats card-success card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
													<i class="fa fa-check-square"></i>
												</div>
											</div>
											<div class="col-3 col-stats">
											</div>
											<div class="col-6 col-stats">
												<div class="numbers mt-4">
													<h2 class="fw-bold text-uppercase">With Sport</h2>
													<?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?>
														<h3 class="fw-bold"><?= number_format($has_sports) ?></h3>
													<?php else : ?>
														<h3 class="fw-bold"><?= number_format($total_has_sports) ?></h3>
													<?php endif ?>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<!-- <a href="resident_info.php?state=all" class="card-link text-light">Total Employees </a> -->
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="card card-stats card-danger card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
													<i class="fa fa-minus-square"></i>
												</div>
											</div>
											<div class="col-3 col-stats">
											</div>
											<div class="col-6 col-stats">
												<div class="numbers mt-4">
													<h2 class="fw-bold text-uppercase">No Sport</h2>
													<?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?>
														<h3 class="fw-bold"><?= number_format($no_sports) ?></h3>
													<?php else : ?>
														<h3 class="fw-bold"><?= number_format($total_no_sports) ?></h3>
													<?php endif ?>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<!-- <a href="resident_info.php?state=male" class="card-link text-light">Total Male </a> -->
									</div>
								</div>
							</div>

						</div>
					<?php endif ?>

					<?php if (isset($_SESSION['username']) && $_SESSION['role'] == 'administrator') : ?>
						<div class="row">
							<div class="col-md-4">
								<div class="card card-stats card-success card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
													<i class="fas fa-sitemap"></i>
												</div>
											</div>
											<div class="col-3 col-stats">
											</div>
											<div class="col-6 col-stats">
												<div class="numbers mt-4">
													<h2 class="fw-bold text-uppercase">Teams</h2>
													<h3 class="fw-bold text-uppercase"><?= number_format($teams) ?></h3>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<!-- <a href="resident_info.php?state=voters" class="card-link text-light">Total Teams </a> -->
									</div>
								</div>
							</div>
							
							
							<div class="col-md-4">
								<div class="card card-stats card-primary card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
												<i class='fas fa-table-tennis'></i>
												</div>
											</div>
											<div class="col-3 col-stats">
											</div>
											<div class="col-6 col-stats">
												<div class="numbers mt-4">
													<h2 class="fw-bold text-uppercase">Sports</h2>
													<h3 class="fw-bold text-uppercase"><?= number_format($sports) ?></h3>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<!-- <a href="resident_info.php?state=non_voters" class="card-link text-light">Total Non Voters </a> -->
									</div>
								</div>
							</div>

							<div class="col-md-4">
								<div class="card card-stats card-danger card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
													<i class="fas fa-user-secret"></i>
												</div>
											</div>
											<div class="col-3 col-stats">
												</div>
												<div class="col-6 col-stats">
													<div class="numbers mt-4">
														<h2 class="fw-bold text-uppercase">Users</h2>
														<h3 class="fw-bold text-uppercase"><?= number_format($users) ?></h3>
													</div>
												</div>
											</div>
										</div>
										<div class="card-body">
											<!-- <a href="resident_info.php?state=non_voters" class="card-link text-light">Total Non Voters </a> -->
										</div>
									</div>
								</div>
							<!-- ==================================================== -->
							
							<div class="col-md-4">
								<div class="card card-stats card-success card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
												<i class="bi bi-person-check-fill"><svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16"> 
													<path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0"/> 
												<path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6"/> </svg></i>
												</div>
											</div>
											<div class="col-3 col-stats">
											</div>
											<div class="col-6 col-stats">
												<div class="numbers mt-4">
													<h2 class="fw-bold text-uppercase">Normal</h2>
													<h3 class="fw-bold text-uppercase"><?= number_format($Normal) ?></h3>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<!-- <a href="resident_info.php?state=non_voters" class="card-link text-light">Total Non Voters </a> -->
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="card card-stats card-primary card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
												<i class="bi bi-building-fill-slash"><svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-building-fill-slash" viewBox="0 0 16 16"> <path d="M13.879 10.414a2.501 2.501 0 0 0-3.465 3.465zm.707.707-3.465 3.465a2.501 2.501 0 0 0 3.465-3.465m-4.56-1.096a3.5 3.5 0 1 1 4.949 4.95 3.5 3.5 0 0 1-4.95-4.95Z"/> 
												<path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/> </svg></i>
												</div>
											</div>
											<div class="col-3 col-stats">
											</div>
											<div class="col-6 col-stats">
												<div class="numbers mt-4">
													<h2 class="fw-bold text-uppercase">On-Leave</h2>
													<h3 class="fw-bold text-uppercase"><?= number_format($Leave) ?></h3>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<!-- <a href="resident_info.php?state=non_voters" class="card-link text-light">Total Non Voters </a> -->
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="card card-stats card-danger card-round">
									<div class="card-body">
										<div class="row">
											<div class="col-3">
												<div class="icon-big text-center">
												<i class="bi bi-heart-pulse-fill"><svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-heart-pulse-fill" viewBox="0 0 16 16"> 
													<path d="M1.475 9C2.702 10.84 4.779 12.871 8 15c3.221-2.129 5.298-4.16 6.525-6H12a.5.5 0 0 1-.464-.314l-1.457-3.642-1.598 5.593a.5.5 0 0 1-.945.049L5.889 6.568l-1.473 2.21A.5.5 0 0 1 4 9z"/> <path d="M.88 8C-2.427 1.68 4.41-2 7.823 1.143q.09.083.176.171a3 3 0 0 1 .176-.17C11.59-2 18.426 1.68 15.12 8h-2.783l-1.874-4.686a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8z"/> </svg></i>
												</div>
											</div>
											<div class="col-3 col-stats">
											</div>
											<div class="col-6 col-stats">
												<div class="numbers mt-4">
													<h2 class="fw-bold text-uppercase">Health Issue's</h2>
													<h3 class="fw-bold text-uppercase"><?= number_format($Health) ?></h3>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body">
										<!-- <a href="resident_info.php?state=non_voters" class="card-link text-light">Total Non Voters </a> -->
									</div>
								</div>
							</div>
							<!-- <div class="col-md-4">
							<div class="card card-stats card-round" style="background-color:#a349a3; color:#fff">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<div class="icon-big text-center">
												<i class="fas fa-list"></i>
											</div>
										</div>
										<div class="col-3 col-stats">
										</div>
										<div class="col-6 col-stats">
											<div class="numbers mt-4">
												<h2 class="fw-bold text-uppercase">Users</h2>
												<h3 class="fw-bold"><?= number_format($precinct) ?></h3>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<a href="purok_info.php?state=precinct" class="card-link text-light">Precint Information</a>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-stats card-round" style="background-color:#880a14; color:#fff">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<div class="icon-big text-center">
												<i class="icon-direction"></i>
											</div>
										</div>
										<div class="col-3 col-stats">
										</div>
										<div class="col-6 col-stats">
											<div class="numbers mt-4">
												<h2 class="fw-bold text-uppercase">Purok Number</h2>
												<h3 class="fw-bold text-uppercase"><?= number_format($purok) ?></h3>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<a href="purok_info.php?state=purok" class="card-link text-light">Purok Information</a>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-stats card-round card-danger">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<div class="icon-big text-center">
												<i class="icon-layers"></i>
											</div>
										</div>
										<div class="col-3 col-stats">
										</div>
										<div class="col-6 col-stats">
											<div class="numbers mt-4">
												<h2 class="fw-bold text-uppercase">Blotter</h2>
												<h3 class="fw-bold text-uppercase"><?= number_format($blotter) ?></h3>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<a href="blotter.php" class="card-link text-light">Blotter Information</a>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-stats card-round" style="background-color:#3E9C35; color:#fff">
								<div class="card-body">
									<div class="row">
										<div class="col-3">
											<div class="icon-big text-center">
												<i class="fas fa-dollar-sign"></i>
											</div>
										</div>
										<div class="col-3 col-stats">
										</div>
										<div class="col-6 col-stats">
											<div class="numbers mt-4">
												<h2 class="fw-bold text-uppercase">Revenue - by day</h2>
												<h3 class="fw-bold text-uppercase">P <?= number_format($revenue['am'], 2) ?></h3>
											</div>
										</div>
									</div>
								</div>
								<div class="card-body">
									<a href="revenue.php" class="card-link text-light">All Revenues</a>
								</div>
							</div>
						</div> -->
						</div>
					<?php endif ?>
					<!-- <div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title fw-bold">LGU Mission Statement</div>
									</div>
								</div>
								<div class="card-body">
									<p><?= !empty($db_txt) ? $db_txt : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in ipsum id orci porta dapibus. Donec rutrum congue leo eget malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.' ?></p>
									<div class="text-center">
										<img class="img-fluid" src="<?= !empty($db_img) ? 'assets/uploads/' . $db_img : 'assets/img/bg-abstract.png' ?>" />
									</div>
								</div>
							</div>
						</div>
					</div> -->
				</div>
			</div>
			<!-- Main Footer -->
			<?php include 'templates/main-footer.php' ?>
			<?php include 'templates/modals.php' ?>

		</div>

	</div>
	<?php include 'templates/footer.php' ?>

</body>

</html>