<%@page import="com.jovifitnesscenter.model.AboutPage"%>
<%@page import="java.util.List"%>
<%@page import="com.jovifitnesscenter.dao.AboutDao"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.jovifitnesscenter.GetApplicationContaxt"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="session/session.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Instructors</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="images/jlogo.png" type="image/x-icon">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {

            padding: 20px;
            background: url('images/db.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
        }

.container {
	margin-top: 50px;
}

.instructor-box {
	border: 1px solid #ddd;
	border-radius: 10px;
	padding: 20px;
	margin-bottom: 20px;
}

.delete-btn {
	background-color: #dc3545;
	color: #fff;
	border: none;
	padding: 5px 10px;
	cursor: pointer;
}
</style>
</head>
<body>

	<div class="container">
		<h1 align="center">Services</h1>
		<div class="row">
            <div class="col-md-12">
                <div class="mb-3">
                    <a href="admin.jsp" class="btn btn-secondary navigation-btn">Back to Previous Page</a>
                    <a href="admin.jsp" class="btn btn-primary navigation-btn">Home</a>
                </div>
            </div>
        </div>
		
	
		<div class="row">
			

				<%
				ApplicationContext ac = GetApplicationContaxt.setApplicationContext();
				AboutDao bean = ac.getBean(AboutDao.class);
				List<AboutPage> list = bean.findAll();
				for (AboutPage li : list) {
				%>

				<div class="col-md-4">
				<div class="instructor-box">
					<img src="images/instructors/<%=li.getFileName() %>" class="img-fluid"
						alt="Instructor 1">
					<h5 class="mt-3">Instructor 1</h5>
					<p>Facebook: <%=li.getFacebook() %></p>
					<p>Instagram: <%=li.getInstagram() %></p>
					<p>About:<%=li.getAbout() %> </p>
					<!-- <button class="delete-btn" onclick="deleteInstructor(this)">Delete</button> -->
					<a class="delete-btn" href="deleteabout?sn=<%= li.getSn()%>">Delete</a>
				</div>
                </div>
				<%
				}
				%>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>

	<script>
		function deleteInstructor(btn) {
			var instructorBox = btn.parentNode;
			instructorBox.parentNode.removeChild(instructorBox);
		}
	</script>
	<%@include file="copyright/copyright.jsp"%>
	
</body>
</html>
