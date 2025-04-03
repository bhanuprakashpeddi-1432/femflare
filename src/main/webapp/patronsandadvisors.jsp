<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PATRONS & ADVISORS</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: linear-gradient(to right, #b3d9ff, #ffb3d9);
            margin: 0;
            padding: 0;
        }
        
        h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-top: 20px;
        }

        .container {
            display: grid;
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }

        /* First row - 3 cards */
        .row1 {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        /* Second row - 2 centered cards */
        .row2 {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .card {
            background: white;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease-in-out;
            width: 250px; /* Fixed width to align properly */
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 4px solid #7D7D7D; /* Lighter black */
        }

        .card h3 {
            margin: 15px 0 5px;
            font-size: 1.4rem;
            font-weight: bold;
        }

        .card p {
            margin: 0;
            font-size: 1rem;
            color: gray;
        }

        /* Responsive Design */
        @media screen and (max-width: 900px) {
            .row1 {
                grid-template-columns: repeat(2, 1fr); /* 2 cards per row */
            }
            .row2 {
                flex-direction: column;
                align-items: center;
            }
        }

        @media screen and (max-width: 600px) {
            .row1 {
                grid-template-columns: 1fr; /* 1 card per row */
            }
            .row2 {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <br><br><br>

    <h1>PATRONS & ADVISORS</h1>
    <div class="container">
        <div class="row1">
            <div class="card">
                <img src="images/venkataram.jpg" alt="Dr. N. Venkatram">
                <h3>Dr. N. Venkatram</h3>
                <p>Pro Vice-Chancellor, KLEF</p>
            </div>
            <div class="card">
                <img src="images/avs prasad.jpg" alt="Dr. A.V.S. Prasad">
                <h3>Dr. A.V.S. Prasad</h3>
                <p>Pro Vice-Chancellor, KLEF</p>
            </div>
            <div class="card">
                <img src="images/K_rajasekhra.jpg" alt="Dr. Kurra Rajasekhara Rao">
                <h3>Dr. Kurra Rajasekhara Rao</h3>
                <p>Pro Vice-Chancellor, KLEF</p>
            </div>
        </div>
        
        <div class="row2">
            <div class="card">
                <img src="images/subba rao.jpg" alt="Dr. K. Subba Rao">
                <h3>Dr. K. Subba Rao</h3>
                <p>Registrar, KLEF</p>
            </div>
            <div class="card">
                <img src="images/Jagadeesh.jpeg" alt="Dr. A. Jagadeesh">
                <h3>Dr. A. Jagadeesh</h3>
                <p>CCO & Director-FED, KLEF</p>
            </div>
        </div>
    </div>

</body>
</html>
