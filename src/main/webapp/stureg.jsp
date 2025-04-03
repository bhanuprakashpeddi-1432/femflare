<%@ page import="com.klef.flemflare.model.Admin" %>

<%
    Admin admin = (Admin) session.getAttribute("admin");
    if (admin == null) {
        response.sendRedirect("adminsessionexpiry");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .navbar {
            width: 100%;
            background: #e91e63;
            padding: 12px;
            text-align: center;
            position: absolute;
            top: 0;
            left: 0;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: bold;
            transition: 0.3s;
        }

        .navbar a:hover {
            background: #c2185b;
            border-radius: 5px;
        }

        h3 {
            color: #e91e63;
            text-align: center;
            font-weight: bold;
            margin-top: 80px;
        }

        .form-container {
            background: white;
            width: 400px;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top: 10px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
            text-align: left;
        }

        label {
            font-weight: bold;
            color: #d81b60;
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 8px;
            border-radius: 8px;
            border: 1px solid #ff80ab;
            box-sizing: border-box;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #e91e63;
            border: none;
            width: 45%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            transition: 0.3s;
            color: white;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #c2185b;
        }

        .message {
            color: red;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="adminhome">Home</a>
        <a href="addtechevent">Tech Events</a>
        <a href="addspotevent">Spot Events</a>
        <a href="addliteraryevent">Literary Events</a>
        <a href="stureg">Student Registration</a>
        <a href="viewallstus">View All Students</a>
        <a href="deletestu">Delete Student</a>
        <a href="adminlogout">Logout</a>
    </div>

    <h3><u>Student Registration</u></h3>

    <!-- Show message if any -->
    <div class="message">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </div>

    <div class="form-container">
        <form method="post" action="insertstu">
            <table>
                <tr>
                    <td><label for="sidno">Enter ID Number</label></td>
                    <td><input type="text" id="sidno" name="sidno" required/></td>
                </tr>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td>
                </tr>
                <tr>
                    <td><label for="scollege">Enter College</label></td>
                    <td><input type="text" id="scollege" name="scollege" required/></td>
                </tr>
                <tr>
                    <td><label for="sdept">Enter Department</label></td>
                    <td><input type="text" id="sdept" name="sdept" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact Number</label></td>
                    <td><input type="text" id="scontact" name="scontact" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
