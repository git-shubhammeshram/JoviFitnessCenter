<%@page import="com.jovifitnesscenter.dao.MessageDao"%>
<%@page import="com.jovifitnesscenter.dao.MembershipInquiryDao"%>
<%@page import="com.jovifitnesscenter.GetApplicationContaxt"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="session/session.jsp" %>
<%@include file="message/message.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">


<title>Jovi Fitness Admin</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/jlogo.png" type="image/x-icon">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	background-image: url('images/db.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	
}
</style>
<style type="text/css">
body {
	margin-top: 20px;
}

.shadow {
	box-shadow: 0 0 3px rgb(53 64 78/ 20%) !important;
}

.rounded {
	border-radius: 5px !important;
}

.bg-light {
	background-color: #f7f8fa !important;
}

.bg-primary, .btn-primary, .btn-outline-primary:hover,
	.btn-outline-primary:focus, .btn-outline-primary:active,
	.btn-outline-primary.active, .btn-outline-primary.focus,
	.btn-outline-primary:not(:disabled):not(.disabled):active,
	.badge-primary, .nav-pills .nav-link.active, .pagination .active a,
	.custom-control-input:checked ~.custom-control-label:before, #preloader #status .spinner>div,
	.social-icon li a:hover, .back-to-top:hover, .back-to-home a, ::selection,
	#topnav .navbar-toggle.open span:hover, .owl-theme .owl-dots .owl-dot.active span,
	.owl-theme .owl-dots.clickable .owl-dot:hover span, .watch-video a .play-icon-circle,
	.sidebar .widget .tagcloud>a:hover, .flatpickr-day.selected,
	.flatpickr-day.selected:hover, .tns-nav button.tns-nav-active,
	.form-check-input.form-check-input:checked {
	background-color: #6dc77a !important;
}

.badge {
	padding: 5px 8px;
	border-radius: 3px;
	letter-spacing: 0.5px;
	font-size: 12px;
}

.btn-primary, .btn-outline-primary:hover, .btn-outline-primary:focus,
	.btn-outline-primary:active, .btn-outline-primary.active,
	.btn-outline-primary.focus, .btn-outline-primary:not(:disabled):not(.disabled):active
	{
	box-shadow: 0 3px 7px rgb(109 199 122/ 50%) !important;
}

.btn-primary, .btn-outline-primary, .btn-outline-primary:hover,
	.btn-outline-primary:focus, .btn-outline-primary:active,
	.btn-outline-primary.active, .btn-outline-primary.focus,
	.btn-outline-primary:not(:disabled):not(.disabled):active,
	.bg-soft-primary .border, .alert-primary, .alert-outline-primary,
	.badge-outline-primary, .nav-pills .nav-link.active, .pagination .active a,
	.form-group .form-control:focus, .form-group .form-control.active,
	.custom-control-input:checked ~.custom-control-label:before,
	.custom-control-input:focus ~.custom-control-label::before,
	.form-control:focus, .social-icon li a:hover, #topnav .has-submenu.active.active .menu-arrow,
	#topnav.scroll .navigation-menu>li:hover>.menu-arrow, #topnav.scroll .navigation-menu>li.active>.menu-arrow,
	#topnav .navigation-menu>li:hover>.menu-arrow, .flatpickr-day.selected,
	.flatpickr-day.selected:hover, .form-check-input:focus,
	.form-check-input.form-check-input:checked, .container-filter li.active,
	.container-filter li:hover {
	border-color: #6dc77a !important;
}

.bg-primary, .btn-primary, .btn-outline-primary:hover,
	.btn-outline-primary:focus, .btn-outline-primary:active,
	.btn-outline-primary.active, .btn-outline-primary.focus,
	.btn-outline-primary:not(:disabled):not(.disabled):active,
	.badge-primary, .nav-pills .nav-link.active, .pagination .active a,
	.custom-control-input:checked ~.custom-control-label:before, #preloader #status .spinner>div,
	.social-icon li a:hover, .back-to-top:hover, .back-to-home a, ::selection,
	#topnav .navbar-toggle.open span:hover, .owl-theme .owl-dots .owl-dot.active span,
	.owl-theme .owl-dots.clickable .owl-dot:hover span, .watch-video a .play-icon-circle,
	.sidebar .widget .tagcloud>a:hover, .flatpickr-day.selected,
	.flatpickr-day.selected:hover, .tns-nav button.tns-nav-active,
	.form-check-input.form-check-input:checked {
	background-color: #6dc77a !important;
}

.btn {
	padding: 8px 20px;
	outline: none;
	text-decoration: none;
	font-size: 16px;
	letter-spacing: 0.5px;
	transition: all 0.3s;
	font-weight: 600;
	border-radius: 5px;
}

.btn-primary {
	background-color: #6dc77a !important;
	border: 1px solid #6dc77a !important;
	color: #fff !important;
	box-shadow: 0 3px 7px rgb(109 199 122/ 50%);
}

a {
	text-decoration: none;
}

{
box-sizing
:border-box
;


}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
	background-color: #555;
	color: white;
	padding: 12px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
	bottom: 30px;
	margin-right: auto;
	margin-left: auot;
	margin-bottom: 30px;
	margin-top: 10px;
}

/* The popup form - hidden by default */
.form-popup {
	display: none;
	position: fixed;
	bottom: 0;
	right: 15px;
	border: 3px solid #f1f1f1;
	z-index: 9;
}

/* Add styles to the form container */
.form-container {
	max-width: 300px;
	padding: 10px;
	background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	border: none;
	background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus
	{
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	margin-bottom: 10px;
	opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
	background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
	opacity: 1;
}
</style>

<style>
.password-container {
	position: relative;
}

.password-input {
	padding-right: 30px;
	/* Adjust the value to leave space for the eye button */
}

.toggle-password {
	position: absolute;
	top: 50%;
	right: 10px; /* Adjust the value to position the eye button */
	transform: translateY(-50%);
	cursor: pointer;
}
</style>


</head>

<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet" />
	<div class="container mt-5 pt-4">
		<div class="row align-items-end mb-4 pb-2">
			<div class="col-md-8">
				<div class="section-title text-center text-md-start">
					<h4 class="title mb-4" style="color: white;">Jovi Fitness</h4>
					<p class="text-muted mb-0 para-desc" style="color:white;">Elevate your fitness
						journey and celebrate your strength with Jovi Ladies Gym. We are
						committed to creating a positive and uplifting environment for
						women to thrive in health and wellness. Jovi Fitness, you can
						contact Jovi Fitness immediately. Thank you.</p>
				</div>
			</div>

		</div>
		
		<%
		ApplicationContext ac = GetApplicationContaxt.setApplicationContext();
		MembershipInquiryDao bean = ac.getBean(MembershipInquiryDao.class);
		MessageDao beanmd = ac.getBean(MessageDao.class);						
								
		int countInq = bean.countInquiry();
		int countMsg = beanmd.countMessage();
		%>
		<div class="row">
			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">
						<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0"><%=countInq %> Inquiry
							</span>
						<h5>Inquiry List</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class=""
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">Jovi Fitness</a></span> <span
								class="text-muted d-block"><i class=""
								aria-hidden="true"></i>Read Delete Inquiry</span>
						</div>
						<div class="mt-3">
							<a href="read-inquiry.jsp" class="btn btn-primary">Read Inquiry</a>

						</div>
					</div>
				</div>
			</div>


			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">
					<span
							class="badge rounded-pill bg-primary float-md-end mb-3 mb-sm-0"><%=countMsg %>
							Messages</span>
						<h5>Messages</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class=""
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">Jovi Fitness</a></span> <span
								class="text-muted d-block"><i class=""
								aria-hidden="true"></i>Read Delete Messages</span>
						</div>
						<div class="mt-3">
							<a href="read-message.jsp" class="btn btn-primary">Read
								Message</a>
							
							
						</div>
					</div>
				</div>
			</div>


			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">
						<h5>Instructor</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class=""
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">Jovi Fitness</a></span> <span
								class="text-muted d-block"><i class=""
								aria-hidden="true"></i>Modify Informations</span>
						</div>
						<div class="mt-3">
							<a href="uploadabout.jsp" class="btn btn-primary">Upload
								About</a>
							<a href="readabout.jsp" class="btn btn-primary">Show
								About</a>
						</div>
					</div>
				</div>
			</div>


			<div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
				<div class="card border-0 bg-light rounded shadow">
					<div class="card-body p-4">
						<h5>Services</h5>
						<div class="mt-3">
							<span class="text-muted d-block"><i class=""
								aria-hidden="true"></i> <a href="#" target="_blank"
								class="text-muted">Jovi Fitness</a></span> <span
								class="text-muted d-block"><i class=""
								aria-hidden="true"></i>Edit Delete Service</span>
						</div>
						<div class="mt-3">
							<a href="uploadservices.jsp" class="btn btn-primary">Upload
								Projects</a>
							<a href="showservices.jsp" class="btn btn-primary">Show
								Service</a>
							
						</div>
					</div>
				</div>
			</div>



			<!-- A button to open the popup form -->

			<div style="text-align: center; padding-top: 50px;" class="mt-3">
				<button class="open-button" onclick="openForm()">CHANGE
					CREDENTIALS</button>

				<!-- The form -->

				<div class="form-popup" id="myForm">
					<form action="changepassword" method="post" class="form-container">
						<h1>Change Password</h1>

						<label for="psw"><b>New Password</b></label> <input
							type="password" placeholder="Enter Password" name="npass"
							required> <label for="psw"><b>Confirm
								Password</b></label>
						<div class="password-container">
							<input type="password" id="confirmPassword"
								class="password-input" placeholder="Enter Confirm Password"
								name="cpass" required> <i
								class="fa fa-eye toggle-password" id="toggleConfirmPassword"
								onclick="togglePassword('confirmPassword')"></i>
						</div>

						<input type="hidden" name="check" value="change">

						<button type="submit" class="btn">Update</button>
						<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
					</form>


				</div>
				<a href="logout?logout=true" style="color: white;">Logout</a>
			</div>

		</div>
	</div>


	<script>
		function togglePassword(inputId) {
			const passwordInput = document.getElementById(inputId);

			if (passwordInput.type === 'password') {
				passwordInput.type = 'text';
			} else {
				passwordInput.type = 'password';
			}
		}
	</script>

	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
	</script>


	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		
	</script>
	<%@include file="copyright/copyright.jsp"%>
	
</body>

</html>