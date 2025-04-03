<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Session Expired</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0px 0px 15px rgba(255, 105, 180, 0.5);
        }

        h2 {
            color: #ff4081;
            font-weight: bold;
        }

        p {
            color: #555;
            font-size: 18px;
        }

        .btn-primary {
            background-color: #ff4081;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
            font-size: 18px;
            border-radius: 8px;
        }

        .btn-primary:hover {
            background-color: #e91e63;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Session Expired</h2>
        <p>Your session has expired due to inactivity. Please log in again.</p>
        <a href="stulogin" class="btn btn-primary">Login Again</a>
    </div>

</body>
</html>
