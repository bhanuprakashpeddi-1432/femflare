<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Literary Event</title>
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

        .container {
            background: white;
            width: 400px;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top: 80px;
        }

        h2 {
            color: #e91e63;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .form-group {
            text-align: left;
            margin-bottom: 12px;
        }

        .form-label {
            font-weight: bold;
            color: #d81b60;
            display: block;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            border-radius: 8px;
            border: 1px solid #ff80ab;
            box-sizing: border-box;
        }

        .btn-primary {
            background-color: #e91e63;
            border: none;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            transition: 0.3s;
            color: white;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-primary:hover {
            background-color: #c2185b;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <a href="adminhome">Home</a>
        <a href="addtechevent">Tech Events</a>
        <a href="addspotevent">Spot Events</a>
        <a href="addliteraryevent">Literary Events</a>
        <a href="addfemflareevent">Ms & Mrs Femflare Event</a>
        <a href="stureg">Student Registration</a>
        <a href="viewallstus">View All Students</a>
        <a href="deletestu">Delete Student</a>
        <a href="adminlogout">Logout</a>
    </div>

    <div class="container">
        <h2>Add Literary Event</h2>
        
        <form method="post" action="insertliteraryevent">
            <div class="form-group">
                <label class="form-label">Event Name</label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <div class="form-group">
                <label class="form-label">Description</label>
                <textarea class="form-control" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label class="form-label">Venue</label>
                <input type="text" class="form-control" name="venue" required>
            </div>
            <div class="form-group">
                <label class="form-label">Time</label>
                <input type="text" class="form-control" name="time" required>
            </div>
            <div class="form-group">
                <label class="form-label">Registration Link</label>
                <input type="url" class="form-control" name="registerLink">
            </div>
            <button type="submit" class="btn-primary">Add Event</button>
        </form>
        <h4>
            <c:out value="${message}"></c:out>
        </h4>
    </div>

</body>
</html>
