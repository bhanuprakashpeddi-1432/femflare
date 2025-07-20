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
    <title>Admin Panel - FemFlare 2025</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
        
        :root {
            --primary-white: #ffffff;
            --primary-cream: #efebe0;
            --primary-pink: #fb8da0;
            --primary-hot-pink: #fb6b90;
            --primary-fuchsia: #fb4570;
            --text-dark: #2c2c2c;
            --text-light: #666666;
        }
        
        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, var(--primary-cream) 0%, var(--primary-pink) 50%, var(--primary-hot-pink) 100%);
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            text-align: center;
        }

        h2 {
            color: var(--primary-fuchsia);
            font-weight: 700;
            font-size: 2.5rem;
            margin-bottom: 30px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        .navbar {
            background: var(--primary-white);
            padding: 20px 30px;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(251, 69, 112, 0.2);
            display: inline-block;
            border: 3px solid var(--primary-pink);
            backdrop-filter: blur(10px);
        }

        .navbar a {
            text-decoration: none;
            color: var(--primary-fuchsia);
            font-size: 1.1rem;
            font-weight: 600;
            padding: 12px 20px;
            border-radius: 25px;
            transition: all 0.3s ease;
        }

        .navbar a:hover {
            background: linear-gradient(135deg, var(--primary-fuchsia), var(--primary-hot-pink));
            color: var(--primary-white);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(251, 69, 112, 0.3);
        }

        .welcome-text {
            color: var(--text-dark);
            font-size: 1.2rem;
            margin: 20px 0;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <h2>Welcome to FemFlare 2025 Admin Panel</h2>
    <p class="welcome-text">Manage your events and participants with ease</p>
    
    <div class="navbar">
        <a href="adminsnavbar.jsp">Student Management</a>
        <a href="adminlogout">Logout</a>
    </div>
</body>
</html>
