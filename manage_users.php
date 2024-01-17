<?php include 'server/server.php' ?>

<?php
// session_start();

// Check if the user is logged in and has the "administrator" role
if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'administrator') {
	// Redirect to a different page or display an error message
	echo '<script>alert("You do not have access to this page.")</script>';

	exit;
}
?>

<?php
$query = "SELECT * FROM tbl_users";
$result = $conn->query($query);

$accounts = array();
while ($row = $result->fetch_assoc()) {
	$accounts[] = $row;
}

$query2 = "SELECT * FROM tbl_teams";
$result2 = $conn->query($query2);
$teams = array();
while ($row = $result2->fetch_assoc()) {
	$teams[] = $row;
}

// for approval
// $query3 = "SELECT * FROM tbl_users WHERE verified = 0";
// $result3 = $conn->query($query3);
// $verified = array();
// while($row = $result3->fetch_assoc()){
// 	$verified[] = $row; 
// }

?>
<!DOCTYPE html>
<html lang="en">

<head>
	<?php include 'templates/header.php' ?>
	<title>Accounts - Team Management System</title>
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
								<h2 class="text-white fw-bold">Manage Users</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner">
					<?php if (isset($_SESSION['message'])) : ?>
						<div class="alert alert-<?php echo $_SESSION['success']; ?> <?= $_SESSION['success'] == 'danger' ? 'bg-danger text-light' : null ?>" role="alert">
							<?php echo $_SESSION['message']; ?>
						</div>
						<?php unset($_SESSION['message']); ?>
					<?php endif ?>



					<!-- accounts -->
					<div class="row mt--2">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">Accounts</div>
										<?php if (isset($_SESSION['username'])) : ?>
											<div class="card-tools">
												<a href="#add" data-toggle="modal" class="btn btn-outline-primary btn-round btn-sm">
													<i class="fa fa-plus"></i>
													Account
												</a>
											</div>
										<?php endif ?>
									</div>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<!-- <th scope="col">User Type</th> -->
													<!-- <th scope="col">Team Assigned</th> -->
													<th scope="col">Account Name</th>
													<th scope="col">Username</th>
													<?php if (isset($_SESSION['username'])) : ?>
														<!-- <?php if ($_SESSION['role'] == 'administrator') : ?>
														<th>Status</th>
													<?php endif ?> -->
														<th>Action</th>
													<?php endif ?>
												</tr>
											</thead>
											<tbody>
												<?php if (!empty($accounts)) : ?>
													<?php foreach ($accounts as $index => $row) : ?>
														<tr>
															<td class="text-uppercase"><?= $index + 1 ?></td>
															<!-- <td><?= $row['user_type'] ?></td> -->
															<!-- <td><?= $row['team_assigned'] ?></td> -->
															<td><?= $row['acc_name'] ?></td>
															<td><?= $row['username'] ?></td>
															<?php if (isset($_SESSION['username'])) : ?>
																<!-- <?php if ($_SESSION['role'] == 'administrator') : ?>
																<td><?= $row['status'] == 'Active' ? '<span class="badge badge-primary">Active</span>' : '<span class="badge badge-danger">Inactive</span>' ?></td>
															<?php endif ?> -->
																<td>
																	<a type="button" href="#edit" data-toggle="modal" class="btn btn-link btn-primary" title="Edit Account" onclick="editUser(this)" data-id="<?= $row['id'] ?>" data-username="<?= $row['username'] ?>" data-user-type="<?= $row['user_type'] ?>" data-acc-name="<?= $row['acc_name'] ?>" data-team-assigned="<?= $row['team_assigned'] ?>">

																		<i class="fa fa-edit"></i>
																	</a>
																	<?php if ($_SESSION['role'] == 'administrator') : ?>
																		<!-- <a type="button" data-toggle="tooltip" href="model/remove_user.php?id=<?= $row['id'] ?>" onclick="return confirm('Are you sure you want to delete this user?');" class="btn btn-link btn-danger" data-original-title="Remove">
																			<i class="fa fa-times"></i>
																		</a> -->
																		<a href="#" class="btn btn-link btn-danger" data-toggle="modal" data-target="#removeUser<?= $row['id'] ?>">
																			<i class="fa fa-times"></i>
																		</a>
																	<?php endif ?>
																</td>

																<!-- Remove User -->
																<div class="modal fade" id="removeUser<?= $row['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
																	<div class="modal-dialog" role="document">
																		<div class="modal-content">
																			<?php if (isset($_SESSION['username'])) : ?>
																				<form method="POST" action="model/remove_user.php?id=<?= $row['id'] ?>">
																					<div class="modal-header">
																						<h5 class="modal-title" id="exampleModalLabel">Warning!</h5>
																						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																							<span aria-hidden="true">&times;</span>
																						</button>
																					</div>
																					<div class="modal-body">
																						<div class="form-group form-floating-label">
																							<label>Are you sure you want to delete this user?</label>
																						</div>
																					</div>
																					<div class="modal-footer">
																						<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
																						<button type="submit" class="btn btn-danger">Remove</button>
																					</div>
																				</form>
																			<?php endif ?>
																		</div>
																	</div>
																</div>
															<?php endif ?>
														</tr>
													<?php endforeach ?>
												<?php else : ?>
													<tr>
														<td colspan="6" class="text-center">No Available Data</td>
													</tr>
												<?php endif ?>
											</tbody>
											<tfoot>
												<!-- <tr>
												<th scope="col">Username</th>
												<th scope="col">User Type</th>
												<th scope="col">Created At</th>
												<?php if (isset($_SESSION['username'])) : ?>
													<?php if ($_SESSION['role'] == 'administrator') : ?>
														<th>Status</th>
													<?php endif ?>
													<th>Action</th>
												<?php endif ?>
											</tr> -->
											</tfoot>
										</table>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Create Account</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form method="POST" action="model/save_user.php" onsubmit="return validatePassword()">
							<!-- <<div class="form-group">
								<label>User Type</label>
								select class="form-control" required name="user_type" onchange="toggleTeamDropdown(this)">
									<option disabled selected required>Select User Type</option>
									<option value="administrator" selected>Administrator</option>
									<option value="team leader">Team Leader</option>
								</select> 
							</div>
							<div class="form-group">
								<label>Team</label>
								<select id="teamDropdown" class="form-control" required name="team_assigned">
									<option disabled selected>Select Team</option>
									<?php foreach ($teams as $row) : ?>
										<option value="<?= ucwords($row['team_name']) ?>"><?= $row['team_name'] ?></option>
									<?php endforeach ?>
								</select>
							</div>-->
							<!-- <input type="text" name="user_type" value = "administrator" hidden> -->
							<!-- <input type="text" name="team_name" value = "" > -->

							<div class="form-group">
								<label>Full Name</label>
								<input type="text" class="form-control" placeholder="Enter full name" name="acc_name" required>
							</div>
							<div class="form-group">
								<label>Username</label>
								<input type="text" class="form-control" placeholder="Enter username" name="username" required>
							</div>
							<div class="form-group" method="POST" action="model/save_user.php">
								<label>Password</label>
								<input type="password" class="form-control" placeholder="Enter password" name="password" required id="generatedPassword">
								<span toggle="#generatedPassword" class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>




					</div>
					<div class="modal-footer">
						<input type="hidden" id="pos_id" name="id">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary" onclick="return confirm('Are you sure you want to create this account?');">Create</button>
					</div>
					</form>
				</div>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Edit Account</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form method="POST" action="model/edit_user.php">
							<div class="form-group">
								<label>Username</label>
								<input type="text" class="form-control" placeholder="Enter username" name="username" id="username" required>
							</div>
							<!-- <div class="form-group">
								<label>User Type</label>
								<select class="form-control" placeholder="Select User Type" name="user_type" id="user-type" required>
								
									<option value="administrator">Administrator</option>
									<option value="team leader">Team Leader</option>
								</select>
							</div> -->
							<div class="form-group">
								<label>Account Name</label>
								<input type="text" class="form-control" placeholder="Enter full name" name="acc_name" id="acc_name" required>
							</div>
							<!-- <div class="form-group">
								<label>Team</label>
								<select class="form-control" name="team_assigned" id="team_assigned">
									<option disabled selected>Select Team</option>
									<?php foreach ($teams as $row) : ?>
										<option value="<?= ucwords($row['team_name']) ?>"><?= $row['team_name'] ?></option>
									<?php endforeach ?>
								</select>
							</div> -->



					</div>
					<div class="modal-footer">
						<input type="hidden" id="user_id" name="id">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
					</form>
				</div>
			</div>
			<script>
		function generatePassword() {
			fetch('model/generate_password.php')

				.then(response => response.text())
				.then(password => {
					document.getElementById("generatedPassword").value = password;
				})
				.catch(error => console.log(error));
		}
	</script>

	<script>
		<?php
		function generatePassword($length = 12)
		{
			$charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()";
			$password = '';
			$charsetLength = strlen($charset);

			for ($i = 0; $i < $length; $i++) {
				$randomIndex = random_int(0, $charsetLength - 1);
				$password .= $charset[$randomIndex];
			}

			return $password;
		}

		// Generate and return a new autogenerated password
		echo generatePassword();
		?>
	</script>

	<script>
		function validatePassword() {
            var password = document.getElementById("generatedPassword").value;
            var uppercaseRegex = /[A-Z]/;
            var symbolRegex = /[!@#$%^&*()_+{}\[\]:;<>,.?~\\]/;

			if (password.length < 8) {
                alert("Password must be at least 8 characters long.");
                return false;
            }
			
            if (!uppercaseRegex.test(password)) {
                alert("Password must contain at least one uppercase letter.");
                return false;
            }

            if (!symbolRegex.test(password)) {
                alert("Password must contain at least one symbol (!@#$%^&*()_+{}[]:;<>,.?~\\).");
                return false;
            }

            return true;
        }
	</script>
		</div>
		<!-- Main Footer -->
		<?php include 'templates/main-footer.php' ?>
		<?php include 'templates/modals.php' ?>
		<!-- End Main Footer -->

	</div>

	</div>
	

	<script>
		function toggleTeamDropdown(userTypeDropdown) {
			// Get the selected value of the User Type dropdown
			var userType = userTypeDropdown.value;

			// Get the Team dropdown element
			var teamDropdown = document.getElementById('teamDropdown');

			// If the User Type is "administrator", disable the Team dropdown; otherwise, enable it
			if (userType === 'administrator') {
				teamDropdown.disabled = true;
			} else {
				teamDropdown.disabled = false;
			}
		}
	</script>
	<?php include 'templates/footer.php' ?>	

</body>

</html>