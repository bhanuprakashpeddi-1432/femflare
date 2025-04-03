<%@page import="com.klef.flemflare.model.Student"%>
<%
    Student stu = (Student) session.getAttribute("student");
    if (stu == null) {
        response.sendRedirect("stusessionexpiry");
        return;
    }
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlemFlare | Student Home 🎀</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(to right, #f8bbd0, #e1bee7); /* Light pink to lavender */
            margin: 0;
            padding: 0;
            text-align: center;
            color: #4a148c;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            padding: 25px;
            background: #ffffff; /* White box */
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(8px);
        }

        h1 {
            font-size: 32px;
            color: #d81b60;
            margin-bottom: 10px;
        }

        .welcome {
            font-size: 22px;
            font-weight: bold;
            color: #ad1457;
        }

        .quote {
            font-size: 18px;
            font-style: italic;
            margin-top: 15px;
            color: #880e4f;
        }

        .event-info {
            margin-top: 20px;
            font-size: 16px;
            color: #5e35b1;
            line-height: 1.6;
        }

        .highlight {
            font-weight: bold;
            color: #ff4081;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .container {
                width: 90%;
                padding: 15px;
            }

            h1 {
                font-size: 28px;
            }

            .welcome {
                font-size: 20px;
            }

            .quote {
                font-size: 16px;
            }

            .event-info {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="stunavbar.jsp" %>

    <div class="container">
        <h1>Welcome to FlemFlare 🎀</h1>
        <p class="welcome">Hello, <%= stu.getName() %>! 👋</p>

        <p class="quote">"Empowered women empower the world." 💪✨</p>

        <p class="event-info">
            🌟 FlemFlare is all about celebrating confidence, leadership, and talent!  
            Join us for a series of workshops, events and be a part of something extraordinary!  
        </p>
        <p>📅 Event Date: <span class="highlight">April 12, 2025</span></p>
        <p>📍 Location: <span class="highlight">KL University</span></p>
    </div>
</body>
</html>
