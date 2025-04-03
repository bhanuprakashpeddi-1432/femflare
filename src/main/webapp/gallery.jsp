<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Event Gallery</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <style>
        body {
            background-color: #f9f9f9;
        }

        .container {
            background: white;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(255, 105, 180, 0.5);
        }

        h2 {
            color: #ff4081;
            font-weight: bold;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 15px;
            padding: 20px 0;
        }

        .gallery img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
        }

        .gallery img:hover {
            transform: scale(1.05);
            box-shadow: 0px 0px 15px rgba(255, 105, 180, 0.6);
        }
    </style>
</head>
<body>

    <%@include file="mainnavbar.jsp" %>
    <br>
    <br>

    <div class="container mt-4">
        <h2 class="text-center mb-4">Event Gallery</h2>
        
        <div class="gallery">
            <img src="images/1.jpeg" alt="Event 1">
            <img src="images/2.jpeg" alt="Event 2">
            <img src="images/3.jpeg" alt="Event 3">
            <img src="images/4.jpeg" alt="Event 4">
            <img src="images/5.jpeg" alt="Event 5">
            <img src="images/6.jpeg" alt="Event 6">
            <img src="images/7.jpeg" alt="Event 7">
            <img src="images/8.jpeg" alt="Event 8">
            <img src="images/9.jpeg" alt="Event 9">
            <img src="images/10.jpeg" alt="Event 10">
            <img src="images/11.jpeg" alt="Event 11">
            <img src="images/12.jpeg" alt="Event 12">
            <img src="images/13.jpeg" alt="Event 13">
            <img src="images/14.jpeg" alt="Event 14">
            <img src="images/15.jpeg" alt="Event 15">
            <img src="images/16.jpeg" alt="Event 16">
            <img src="images/17.jpeg" alt="Event 17">
            <img src="images/18.jpeg" alt="Event 18">
            <img src="images/19.JPG" alt="Event 18">
            <img src="images/20.JPG" alt="Event 18">
         
            
        </div>
    </div>

</body>
</html>
