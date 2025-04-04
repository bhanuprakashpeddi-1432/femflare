<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4);
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .form-container {
            width: 400px;
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h3 {
            color: #e91e63;
            font-weight: bold;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type=number] {
            width: 100%;
            padding: 8px;
            border: 2px solid #ff80ab;
            border-radius: 8px;
            font-size: 14px;
            background: #ffe4e9;
            outline: none;
            transition: 0.3s;
        }

        input[type="text"]:focus, input[type="email"]:focus, input[type="password"]:focus,input[type="number"]:focus {
            border-color: #e91e63;
            background: white;
        }

        .button-container {
            text-align: center;
            padding-top: 15px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #e91e63;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            margin: 5px;
            transition: 0.3s ease-in-out;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #c2185b;
        }

        /* Styling for login links */
        .login-links {
            margin-top: 10px;
            font-size: 14px;
        }

        .login-links a {
            color: #e91e63;
            text-decoration: none;
            font-weight: bold;
        }

        .login-links a:hover {
            text-decoration: underline;
        }

        /* Error message styling */
        .alert {
            background-color: #ffcccc;
            color: #d8000c;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            font-weight: bold;
        }

/* Error message styling */
.message {
     /* Light red background */
    color: #d8000c;             /* Dark red text */
    padding: 10px;
    border-radius: 5px;
    margin-bottom: 15px;
    font-weight: bold;
}

        /* Success message styling */
        .success {
            background-color: #c8e6c9;
            color: #388e3c;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            font-weight: bold;
        }

    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <br>
    <br>
    <br>
    <br><br><br><br>
    <div class="form-container">
        <h3><u>Student Registration</u></h3>

        <!-- Display message if exists -->
        <c:if test="${not empty message}">
            <div class="message">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </div>
        </c:if>

        <form method="post" action="insertst">
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
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact Number</label></td>
                    <td><input type="number" id="scontact" name="scontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                        <div class="login-links">
                            <a href="stulogin">Already have an account? Login</a><br><br>
                            <a href="adminlogin">Admin</a>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
