<%@page import="com.klef.flemflare.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Update Student</title>
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

        h3, h4 {
            color: #555;
            text-align: center;
            text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.6);
        }

        h4 {
            color: red;
        }

        /* Form Container */
        .form-container {
            background: white;
            width: 380px;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.05);
            text-align: center;
            border: 2px solid #ffd1dc; /* Soft Blush Pink */
            color: #666;
            font-size: 16px;
            font-weight: 500;
            margin-top: 20px;
        }

        table {
            width: 100%;
            margin-top: 10px;
        }

        td {
            padding: 8px;
            text-align: left;
        }

        label {
            font-weight: bold;
            color: #b19cd9; /* Pastel Lavender */
        }

        input[type="text"], input[type="number"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ffdde1;
            border-radius: 8px;
            outline: none;
            transition: 0.3s ease;
        }

        input[type="text"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="password"]:focus {
            border-color: #e0c3fc;
            box-shadow: 0 0 5px rgba(224, 195, 252, 0.7);
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            background: #ffb6c1; /* Light Pink */
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background: #f8a1c1; /* Slightly darker pink */
        }
    </style>
</head>
<body>

<%@ include file="stunavbar.jsp" %>

<h4><c:out value="${message}"></c:out></h4>

<h3><u>Update Student Profile</u></h3>

<div class="form-container">
    <form method="post" action="updatestuprofile">
        <table>
            <tr style="display:none;">
                <td><label for="sid">Website ID</label></td>
                <td><input type="number" id="sid" name="sid" readonly value="<%= stu.getSno() %>" required/></td>
            </tr>
            <tr>
                <td><label for="sname">Enter Name</label></td>
                <td><input type="text" id="sname" name="sname" value="<%= stu.getName() %>" required/></td>
            </tr>
            <tr>
                <td><label for="sdept">Enter Location</label></td>
                <td><input type="text" id="sdept" name="sdept" value="<%= stu.getDepartment() %>" required/></td>
            </tr>
            <tr>
                <td><label for="semail">Enter Email ID</label></td>
                <td><input type="email" id="semail" name="semail" readonly value="<%= stu.getEmail() %>" required/></td>
            </tr>
            <tr>
                <td><label for="spwd">Enter Password</label></td>
                <td><input type="password" id="spwd" name="spwd" value="<%= stu.getPassword() %>" required/></td>
            </tr>
            <tr>
                <td><label for="scontact">Enter Contact</label></td>
                <td><input type="number" id="scontact" name="scontact" value="<%= stu.getContact() %>" required/></td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <input type="submit" value="Update"/>
                    <input type="reset" value="Clear"/>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
