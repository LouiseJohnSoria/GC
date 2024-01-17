function editPos(that) {
  pos = $(that).attr("data-pos");
  order = $(that).attr("data-order");
  id = $(that).attr("data-id");

  $("#position").val(pos);
  $("#order").val(order);
  $("#pos_id").val(id);
}

function editChair(that) {
  title = $(that).attr("data-title");
  id = $(that).attr("data-id");

  $("#chair").val(title);
  $("#chair_id").val(id);
}

function editPurok(that) {
  purok = $(that).attr("data-name");
  details = $(that).attr("data-details");
  id = $(that).attr("data-id");

  $("#purok").val(purok);
  $("#details").val(details);
  $("#purok_id").val(id);
}

function editPrecinct(that) {
  precinct = $(that).attr("data-precinct");
  details = $(that).attr("data-details");
  id = $(that).attr("data-id");

  $("#precinct").val(precinct);
  $("#details").val(details);
  $("#precinct_id").val(id);
}

function editUser(that) {
  user_id = $(that).attr("data-id");
  username = $(that).attr("data-username");
  user_type = $(that).attr("data-user-type");
  acc_name = $(that).attr("data-acc-name");
  team_assigned = $(that).attr("data-team-assigned");

  $("#user_id").val(user_id);
  $("#username").val(username);
  $("#user-type").val(user_type);
  $("#acc_name").val(acc_name);
  $("#team_assigned").val(team_assigned);
}

function editTeam(that) {
  team_id = $(that).attr("data-team-id");
  team_name = $(that).attr("data-team-name");
  team_color = $(that).attr("data-team-color");

  $("#team_id").val(team_id);
  $("#team_name").val(team_name);
  $("#team_color").val(team_color);
}

function editEmployee(that) {
  id = $(that).attr("data-id");
  fname = $(that).attr("data-fname");
  mname = $(that).attr("data-mname");
  lname = $(that).attr("data-lname");
  emp_id_no = $(that).attr("data-employee-id");
  // dept = $(that).attr("data-department");
  age = $(that).attr("data-age");
  gender = $(that).attr("data-gender");
  sports = $(that).attr("data-sports");
  team = $(that).attr("data-team");

  $("#emp_id").val(id);
  $("#fname").val(fname);
  $("#mname").val(mname);
  $("#lname").val(lname);
  $("#emp_id_no").val(emp_id_no);
  // $("#department").val(dept);
  $("#age").val(age);
  $("#gender").val(gender);
  $("#sports").val(sports);
  $("#team").val(team);
}

function editBlotter1(that) {
  id = $(that).attr("data-id");
  complainant = $(that).attr("data-complainant");
  respondent = $(that).attr("data-respondent");
  victim = $(that).attr("data-victim");
  type = $(that).attr("data-type");
  l = $(that).attr("data-l");
  date = $(that).attr("data-date");
  time = $(that).attr("data-time");
  details = $(that).attr("data-details");
  status = $(that).attr("data-status");

  $("#blotter_id").val(id);
  $("#complainant").val(complainant);
  $("#respondent").val(respondent);
  $("#victim").val(victim);
  $("#type").val(type);
  $("#location").val(l);
  $("#date").val(date);
  $("#time").val(time);
  $("#details").val(details);
  $("#status").val(status);
}

$(".vstatus").change(function () {
  var val = $(this).val();
  if (val == "No") {
    $(".indetity").prop("disabled", "disabled");
  } else {
    $(".indetity").prop("disabled", false);
  }
});

$(".toggle-password").click(function () {
  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (input.attr("type") == "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }
});

Webcam.set({
  height: 250,
  image_format: "jpeg",
  jpeg_quality: 90,
});

$("#open_cam").click(function () {
  Webcam.attach("#my_camera");
});

function save_photo() {
  // actually snap photo (from preview freeze) and display it
  Webcam.snap(function (data_uri) {
    // display results in page
    document.getElementById("my_camera").innerHTML =
      '<img src="' + data_uri + '"/>';
    document.getElementById("profileImage").innerHTML =
      '<input type="hidden" name="profileimg" id="profileImage" value="' +
      data_uri +
      '"/>';
  });
}

$("#open_cam1").click(function () {
  Webcam.attach("#my_camera1");
});

function save_photo1() {
  // actually snap photo (from preview freeze) and display it
  Webcam.snap(function (data_uri) {
    // display results in page
    document.getElementById("my_camera1").innerHTML =
      '<img src="' + data_uri + '"/>';
    document.getElementById("profileImage1").innerHTML =
      '<input type="hidden" name="profileimg" id="profileImage1" value="' +
      data_uri +
      '"/>';
  });
}

function goBack() {
  window.history.go(-1);
}
