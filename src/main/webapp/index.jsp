<%@page import="com.jovifitnesscenter.model.ServicePage"%>
<%@page import="com.jovifitnesscenter.dao.SerivesDao"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.jovifitnesscenter.model.AboutPage"%>
<%@page import="java.util.List"%>
<%@page import="com.jovifitnesscenter.dao.AboutDao"%>
<%@page import="com.jovifitnesscenter.GetApplicationContaxt"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>


<title>Jovi Fitness Center</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/jlogo.png" type="image/x-icon">


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/aos.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="css/tooplate-gymso-style.css">
<!--
Tooplate 2119 Gymso Fitness
https://www.tooplate.com/view/2119-gymso-fitness
-->
</head>
<body data-spy="scroll" data-target="#navbarNav" data-offset="50">

	<!-- MENU BAR -->



	<nav class="navbar navbar-expand-lg fixed-top">
		<div class="container">

			<!-- Jovi Fitness Logo and Text -->
			<a class="navbar-brand" href="index.jsp"> <img
				src="images/jf.png" alt="Jovi Fitness Logo" class="logo-img">
				Jovi Fitness
			</a>

			<!-- Navbar Toggler Button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navbar Links -->
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-lg-auto">
					<li class="nav-item"><a href="#home"
						class="nav-link smoothScroll">Home</a></li>
					<li class="nav-item"><a href="#about"
						class="nav-link smoothScroll">About Us</a></li>
					<li class="nav-item"><a href="#class"
						class="nav-link smoothScroll">Classes</a></li>
					<li class="nav-item"><a href="#schedule"
						class="nav-link smoothScroll">Schedules</a></li>
					<li class="nav-item"><a href="#contact"
						class="nav-link smoothScroll">Contact</a></li>
				</ul>

				<!-- Social Icons -->
				<ul class="social-icon ml-lg-3">
					<li><a
						href="https://m.facebook.com/p/Jovi-Fitness-100071117030232"
						class="fa fa-facebook"></a></li>
					<li><a href="#" class="fa fa-youtube"></a></li>
					<li><a
						href="https://www.instagram.com/_jovi_fitness_/?utm_source=ig_web_button_share_sheet&igshid=OGQ5ZDc2ODk2ZA=="
						class="fa fa-instagram"></a></li>
				</ul>
			</div>

		</div>
	</nav>


	<!-- HERO -->
	<section
		class="hero d-flex flex-column justify-content-center align-items-center"
		id="home">

		<div class="bg-overlay"></div>

		<div class="container">
			<div class="row">

				<div class="col-lg-8 col-md-10 mx-auto col-12">
					<div class="hero-text mt-5 text-center">

						
						<h2 style="font: fantasy;"><%@include file="message/message.jsp"%></h2>

						<h6 data-aos="fade-up" data-aos-delay="300">new way to build
							a healthy lifestyle!</h6>

						<h2 class="text-white" data-aos="fade-up" data-aos-delay="500">
							<b>Upgrade your body at Jovi Fitness</b>
						</h2>

						<a href="#feature" class="btn custom-btn mt-3" data-aos="fade-up"
							data-aos-delay="600">Get started</a> <a href="#about"
							class="btn custom-btn bordered mt-3" data-aos="fade-up"
							data-aos-delay="700">learn more</a>

					</div>
				</div>

			</div>
		</div>
	</section>


	<section class="feature" id="feature">
		<div class="container">
			<div class="row">

				<div
					class="d-flex flex-column justify-content-center ml-lg-auto mr-lg-5 col-lg-5 col-md-6 col-12">
					<h2 class="mb-3 text-white" data-aos="fade-up">New to Jovi ?</h2>

					<h6 class="mb-4 text-white" data-aos="fade-up">Your membership
						is start with only (Rs.2000 per month)</h6>

					<p data-aos="fade-up" data-aos-delay="200">
						Only For Ladies <a rel="nofollow" href="" target="_parent">Jovi</a>
						Fully AC Gym

					</p>

					<a href="#" class="btn custom-btn bg-color mt-3" data-aos="fade-up"
						data-aos-delay="300" data-toggle="modal"
						data-target="#membershipForm">Become a member today</a>
				</div>

				<div class="mr-lg-auto mt-3 col-lg-4 col-md-6 col-12">
					<div class="about-working-hours">
						<div>

							<h2 class="mb-4 text-white" data-aos="fade-up"
								data-aos-delay="500">Working hours</h2>

							<strong class="d-block" data-aos="fade-up" data-aos-delay="600">Sunday
								: Closed</strong> <strong class="mt-3 d-block" data-aos="fade-up"
								data-aos-delay="700">Morning</strong>

							<p data-aos="fade-up" data-aos-delay="800">6:00 AM - 10:00 AM</p>

							<strong class="mt-3 d-block" data-aos="fade-up"
								data-aos-delay="700">Noon</strong>

							<p data-aos="fade-up" data-aos-delay="800">4:00 PM - 8:00 PM</p>
						</div>
					</div>
				</div>
			</div>

		</div>
		</div>
	</section>


	<!-- ABOUT -->
	<section class="about section" id="about">
		<div class="container">
			<div class="row">

				<div class="mt-lg-5 mb-lg-0 mb-4 col-lg-5 col-md-10 mx-auto col-12">
					<h2 class="mb-4" data-aos="fade-up" data-aos-delay="300">Hello,
						we are Jovi</h2>

					<p data-aos="fade-up" data-aos-delay="400">Elevate Your
						Fitness, Celebrate Your Strength at Jovi Fitness!</p>

					<p data-aos="fade-up" data-aos-delay="500">
						Elevate your fitness journey and celebrate your strength with Jovi
						Ladies Gym. We are committed to creating a positive and uplifting
						environment for women to thrive in health and wellness. <a
							rel="nofollow"
							href="https://www.tooplate.com/view/2119-gymso-fitness"
							target="_parent"></a> you can contact <a rel="nofollow" href="#"
							target="_parent"> Jovi Fitness</a> immediately. Thank you.
					</p>

				</div>

				<%
			
				ApplicationContext ac = GetApplicationContaxt.setApplicationContext();
				AboutDao bean = ac.getBean(AboutDao.class);
				List<AboutPage> list = bean.findAll();
				for (AboutPage li : list) {
				%>



				<div
					class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12"
					data-aos="fade-up" data-aos-delay="800">
					<div class="team-thumb">
						<img src="images/instructors/<%=li.getFileName()%>"
							class="img-fluid" alt="Trainer">

						<div class="team-info d-flex flex-column">

							<h3><%=li.getName()%></h3>
							<span><%=LocalDate.now().toString()%></span>

							<!--  <ul class="social-icon mt-3">
                                           <!--  <li><a href="#" class="fa fa-instagram"></a></li>
                                            <li><a href="#" class="fa fa-facebook"></a></li>
                                        </ul> -->
						</div>
					</div>
				</div>

				<%
				}
				%>

			</div>
		</div>
	</section>


	<!-- CLASS -->

	<section class="class section" id="class">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-12 text-center mb-5">
					<h6 data-aos="fade-up">Get A Perfect Body</h6>
					<h2 data-aos="fade-up" data-aos-delay="200">Our Training
						Classes</h2>
				</div>

				<%
				SerivesDao sd = ac.getBean(SerivesDao.class);
				int i = 1;
				List<ServicePage> sp = sd.findAll();
				for (ServicePage s : sp) {
				%>

				<div class="col-lg-4 col-md-6 col-12" data-aos="fade-up"
					data-aos-delay="400">
					<div class="class-thumb mb-4">
						<!-- Add margin-bottom class for spacing -->
						<img src="images/services/<%=s.getFileName()%>"
							class="img-fluid" alt="Class">
						<div class="class-info">
							<h3 class="mb-1"><%=s.getSname()%></h3>
							<%--  <span><strong>Trained by</strong> - <%=li2.getIname() %></span> --%>
							<%--                         <span class="class-price"><%=i %></span>
 --%>
							<p class="mt-3"><%=s.getAbout()%></p>
						</div>
					</div>
				</div>

				<%
				if (i % 3 == 0) {
				%>
				<div class="w-100"></div>
				<!-- Add a new row after every 3 items -->
				<%
				}
				i++;
				%>

				<%
				}
				%>

			</div>
		</div>
	</section>



	<!-- SCHEDULE -->
	<section class="schedule section" id="schedule">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-12 text-center">
					<h6 data-aos="fade-up">our weekly GYM schedules</h6>

					<h2 class="text-white" data-aos="fade-up" data-aos-delay="200">Workout
						Timetable</h2>
				</div>

				<div class="col-lg-12 py-5 col-md-12 col-12">
					<table class="table table-bordered table-responsive schedule-table"
						data-aos="fade-up" data-aos-delay="300">

						<thead class="thead-light">
							<th><i class="fa fa-calendar"></i></th>
							<th>Mon</th>
							<th>Tue</th>
							<th>Wed</th>
							<th>Thu</th>
							<th>Fri</th>
							<th>Sat</th>
						</thead>

						<tbody>
							<tr>
								<td><small>6:00 am</small></td>
								<td><strong>Cardio</strong> <span>6:00 am - 11:00 am</span>
								</td>
								<td><strong>Power Fitness</strong> <span>7:00 am -
										9:00 am</span></td>
								<td></td>
								<td></td>
								<td><strong>Yoga Section</strong> <span>7:00 am -
										9:00 am</span></td>
							</tr>

							<tr>
								<td><small>11:00 am</small></td>
								<td></td>
								<td></td>
								<td><strong>Boxing</strong> <span>8:00 am - 9:00 am</span>
								</td>
								<td><strong>Areobic</strong> <span>8:00 am - 9:00 am</span>
								</td>
								<td></td>
								<td><strong>Cardio</strong> <span>8:00 am - 9:00 am</span>
								</td>
							</tr>

							<tr>
								<td><small>04:00 pm</small></td>
								<td></td>
								<td><strong>Boxing</strong> <span>11:00 am - 2:00 pm</span>
								</td>
								<td><strong>Areobic</strong> <span>11:30 am - 3:30
										pm</span></td>
								<td></td>
								<td><strong>Body work</strong> <span>11:50 am - 5:20
										pm</span></td>
							</tr>

							<tr>
								<td><small>08:00 pm</small></td>
								<td><strong>Boxing</strong> <span>2:00 pm - 4:00 pm</span>
								</td>
								<td><strong>Power lifting</strong> <span>3:00 pm -
										6:00 pm</span></td>
								<td></td>
								<td><strong>Cardio</strong> <span>6:00 pm - 9:00 pm</span>
								</td>
								<td></td>
								<td><strong>Crossfit</strong> <span>5:00 pm - 7:00
										pm</span></td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</section>


	<!-- CONTACT -->
	<section class="contact section" id="contact">
		<div class="container">
			<div class="row">

				<div class="ml-auto col-lg-5 col-md-6 col-12">
					<h2 class="mb-4 pb-2" data-aos="fade-up" data-aos-delay="200">Feel
						free to ask anything</h2>

					<form action="message" method="post" class="contact-form webform"
						data-aos="fade-up" data-aos-delay="400" role="form">
						<input type="text" class="form-control" name="name"
							placeholder="Name"> <input type="email"
							class="form-control" name="email" placeholder="Email">

						<textarea class="form-control" rows="5" name="message"
							placeholder="Message"></textarea>

						<button type="submit" class="form-control" id="submit-button"
							name="submit">Send Message</button>
					</form>
				</div>

				<div class="mx-auto mt-4 mt-lg-0 mt-md-0 col-lg-5 col-md-6 col-12">
					<h2 class="mb-4" data-aos="fade-up" data-aos-delay="600">
						Where you can <span>find us</span>
					</h2>

					<p data-aos="fade-up" data-aos-delay="800">
						<i class="fa fa-map-marker mr-1"></i>Thorat Hospital Lane, Road,
						behind LRT College Road, Civil Line, Akola, Maharashtra
					</p>
					<!-- How to change your own map point
	1. Go to Google Maps
	2. Click on your location point
	3. Click "Share" and choose "Embed map" tab
	4. Copy only URL and paste it within the src="" field below
-->
					<div class="google-map" data-aos="fade-up" data-aos-delay="900">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3732.0891319783923!2d77.00876797524782!3d20.706604880863313!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd72f999306b11b%3A0x67af9629ffbf84ab!2sJOVI%20Fitness!5e0!3m2!1sen!2sin!4v1702320279925!5m2!1sen!2sin"
							width="600" height="250" style="border: 0;" allowfullscreen=""
							loading="lazy" referrerpolicy="no-referrer-when-downgrade"
							width="1920" height="250" frameborder="0" style="border:0;"
							allowfullscreen=""></iframe>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- FOOTER -->
	<footer class="site-footer">
		<div class="container">
			<div class="row">

				<div class="ml-auto col-lg-4 col-md-5">
					<p class="copyright-text">
						Copyright &copy; <span id="currentYear"></span> BlackCoder
						Technology <br>Design&Developed By: <a
							href="https://www.linkedin.com/in/shubhamsmeshram/">Shubham
							Meshram</a> <span style="font-size: 18px; color: #e74c3c;">&#10084;</span>
				</div>

				<div
					class="d-flex justify-content-center mx-auto col-lg-5 col-md-7 col-12">
					<p class="mr-4">
						<i class="fa fa-envelope-o mr-1"></i> <a href="#">jovifitnesscenter@gmail.com</a>
					</p>

					<p>
						<i class="fa fa-phone mr-1"></i>9699576009
					</p>
				</div>

			</div>
		</div>
	</footer>

	<!-- Modal -->
	<div class="modal fade" id="membershipForm" tabindex="-1" role="dialog"
		aria-labelledby="membershipFormLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">

			<div class="modal-content">
				<div class="modal-header">

					<h2 class="modal-title" id="membershipFormLabel">Membership
						Form</h2>

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">

					<form action="membership" method="post"
						class="membership-form webform" role="form">
						<input type="text" class="form-control" name="name"
							placeholder="John Doe"> <input type="email"
							class="form-control" name="email" placeholder="Johndoe@gmail.com">

						<input type="number" class="form-control" name="phone"
							placeholder="123-456-7890" required>

						<textarea class="form-control" rows="3" name="message"
							placeholder="Additional Message"></textarea>

						<button type="submit" class="form-control" id="submit-button">Submit
							Button</button>

						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="signup-agree" required="required"> <label
								class="custom-control-label text-small text-muted"
								for="signup-agree">I agree to the <a href="#">Terms
									&amp;Conditions</a>
							</label>
						</div>
					</form>


				</div>

				<div class="modal-footer"></div>

			</div>
		</div>
	</div>

	<!-- SCRIPTS -->
	<script>
		document.getElementById('currentYear').textContent = new Date()
				.getFullYear();
	</script>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>