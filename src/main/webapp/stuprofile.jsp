<%@ page import="com.klef.flemflare.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
Student stu = (Student) session.getAttribute("student");
if (stu == null) {
    response.sendRedirect("stusessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    /* Soft Unicorn Gradient Background */
    body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(135deg, #ffdde1, #ffecf2, #e0c3fc, #d8f3dc, #c1e1ff);
        background-size: 300% 300%;
        animation: bgAnimation 8s ease infinite;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        min-height: 100vh;
    }

    @keyframes bgAnimation {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    /* Navbar Styling */
    .navbar {
        width: 100%;
        background: rgba(255, 223, 230, 0.7); /* Soft Baby Pink */
        padding: 12px 0;
        text-align: center;
        position: fixed;
        top: 0;
        left: 0;
        backdrop-filter: blur(8px);
        box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.08);
    }

    .navbar a {
        color: #555;
        text-decoration: none;
        padding: 12px 20px;
        font-size: 16px;
        font-weight: bold;
        transition: 0.3s;
    }

    .navbar a:hover {
        background: rgba(255, 245, 250, 0.8); /* Soft Powder Pink */
        border-radius: 5px;
    }

    h3 {
        margin-top: 90px;
        color: #555;
        text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.6);
        text-align: center;
    }

    /* White Profile Card */
    .card {
        background: white;
        width: 350px;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.05);
        text-align: center;
        margin-top: 20px;
        border: 2px solid #ffd1dc; /* Soft Blush Pink */
        color: #666;
        font-size: 16px;
        font-weight: 500;
    }

    .card b {
        color: #b19cd9; /* Pastel Lavender */
    }
</style>
</head>
<body>

<%@include file="stunavbar.jsp" %>

<h3><u>My Profile</u></h3>

<div class="card">
    <b>ID:</b> <%= stu.getStudentIdNo() %><br><br>
    <b>NAME:</b> <%= stu.getName() %><br><br>
    <b>College:</b> <%= stu.getCollege() %><br><br>
    <b>DEPARTMENT:</b> <%= stu.getDepartment() %><br><br>
    <b>EMAIL:</b> <%= stu.getEmail() %><br><br>
    <b>CONTACT:</b> <%= stu.getContact() %><br><br>
</div>

</body>
</html>
