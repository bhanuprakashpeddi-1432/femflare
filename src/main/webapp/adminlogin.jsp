<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
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
            width: 350px;
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

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 2px solid #ff80ab;
            border-radius: 8px;
            font-size: 14px;
            background: #ffe4e9;
            outline: none;
            transition: 0.3s;
        }

        input[type="text"]:focus, input[type="password"]:focus {
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
        <h3><u>Admin Login</u></h3>
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
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
