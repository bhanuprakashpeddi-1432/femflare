<%@page import="com.klef.flemflare.model.Admin"%>
<%
 Admin admin =(Admin) session.getAttribute("admin");
if(admin==null)
{
    response.sendRedirect("adminsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty</title>
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
            text-align: center;
        }

        h2 {
            color: #e91e63;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .navbar {
            background: white;
            padding: 10px 20px;
            border-radius: 10px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.2);
            display: inline-block;
        }

        .navbar a {
            text-decoration: none;
            color: #e91e63;
            font-size: 18px;
            font-weight: bold;
            padding: 10px 15px;
            border-radius: 8px;
            transition: 0.3s ease-in-out;
        }

        .navbar a:hover {
            background-color: #ff80ab;
            color: white;
        }
    </style>
</head>
<body>
    <h2>Femflare</h2>
    
    <div class="navbar">
        <a href="adminsnavbar.jsp">Student Management</a>
        <a href="adminlogout">Logout</a>
    </div>
</body>
</html>
