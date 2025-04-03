<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
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
            margin-bottom: 10px;
        }

        h4 {
            color: red;
            font-size: 16px;
            margin-bottom: 15px;
        }
        p {
    color: #007FFF; /* Electric Blue */
    font-weight: bold;
    margin-bottom: 10px;
    animation: blink 1s infinite alternate;
}

@keyframes blink {
    0% { opacity: 1; }
    100% { opacity: 0; }
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

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 2px solid #ff80ab;
            border-radius: 8px;
            font-size: 14px;
            background: #ffe4e9;
            outline: none;
            transition: 0.3s;
        }

        input[type="email"]:focus, input[type="password"]:focus {
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
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <div class="form-container">
        <h3>Student Login</h3>
        <p>LOGIN TO VIEW EVENTS!!!</p>
        
        <h4>
            <c:out value="${message}"></c:out>
        </h4>

        <form method="post" action="checkstulogin">
            <table>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
