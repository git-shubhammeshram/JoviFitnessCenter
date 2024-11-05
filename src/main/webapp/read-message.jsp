<%@page import="com.jovifitnesscenter.model.MessagePage"%>
<%@page import="com.jovifitnesscenter.dao.MessageDao"%>
<%@page import="com.jovifitnesscenter.GetApplicationContaxt"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="com.jovifitnesscenter.model.MembershipInquiryPage"%>
<%@page import="java.util.List"%>
<%@page import="com.jovifitnesscenter.dao.MembershipInquiryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="session/session.jsp" %>
<%@include file="message/message.jsp"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Inquiry</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="images/jlogo.png" type="image/x-icon">
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background: url('images/db.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
         }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .inquiry-box {
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

        .navigation-btn {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h2>Messages</h2>
        </div>
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
                MessageDao bean = ac.getBean(MessageDao.class);
                List<MessagePage> list = bean.findAll();
                int i = 1;
                for (MessagePage li : list) {
            %>
            <div class="col-md-4">
                <div class="inquiry-box">
                    <p>SN: <%= i++ %></p>
                    <p>Name: <%= li.getName() %></p>
                    <p>Email: <%= li.getEmail() %></p>
                    <p>Message: <%= li.getMessage() %></p>
                    <a href="deletemessage?sn=<%= li.getSn() %>" class="delete-btn">Delete</a>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <%@include file="copyright/copyright.jsp"%>
    
</body>
</html>
