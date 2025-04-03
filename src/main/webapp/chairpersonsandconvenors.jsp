<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHAIR PERSONS AND CONVENERS</title>
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
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 40px;
            padding: 20px;
        }

        .row {
            display: flex;
            justify-content: center;
            gap: 50px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            padding: 20px;
            width: 250px;
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-bottom: 10px;
        }

        .title {
            font-size: 1.2rem;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .subtitle {
            font-size: 1rem;
            color: #555;
        }

        /* Responsive Design */
        @media screen and (max-width: 800px) {
            .row {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

<br><br><br>
    <h1><b>CHAIR PERSONS</b></h1>
    <div class="container">
        <div class="row">
            <div class="card">
                <img src="images/ruthramya.jpg" alt="Dr. K. Ruth Ramya">
                <div class="title">Dr. K. Ruth Ramya</div>
                <div class="subtitle">Associate Dean-Student Affairs & Convener Women Development Cell, CSE, KLEF</div>
            </div>
            <div class="card">
                <img src="images/sony.jpg" alt="Dr. K. Sony">
                <div class="title">Dr. K. Sony</div>
                <div class="subtitle">Assistant Director-Alumni Relations & Co-Convener Women Development Cell, ECE, KLEF</div>
            </div>
        </div>
    </div>

    <h1>CONVENERS</h1>
    <div class="container">
        <div class="row">
            <div class="card">
                <img src="images/swapna.jpg" alt="Dr. K. Swapna">
                <div class="title">Dr. K. Swapna</div>
                <div class="subtitle">HOD-Physics, KLEF</div>
            </div>
            <div class="card">
                <img src="images/rajarajeswari.jpeg" alt="Dr. P. Raja Rajeswari">
                <div class="title">Dr. P. Raja Rajeswari</div>
                <div class="subtitle">Alternate HOD-CSE, KLEF</div>
            </div>
            <div class="card">
                <img src="images/santhisri.jpg" alt="Dr. T. Santhi Sri">
                <div class="title">Dr. T. Santhi Sri</div>
                <div class="subtitle">Deputy HOD-CSE, KLEF</div>
            </div>
        </div>

        <div class="row">
            <div class="card">
                <img src="images/sujatha.jpeg" alt="Dr. M. Sujatha">
                <div class="title">Dr. M. Sujatha</div>
                <div class="subtitle">Deputy HOD-ECE, KLEF</div>
            </div>
            <div class="card">
                <img src="images/saradha.jpeg" alt="Dr. K. Sarada">
                <div class="title">Dr. K. Sarada</div>
                <div class="subtitle">Vice-Principal, College of Law, KLEF</div>
            </div>
            <div class="card">
                <img src="images/mazarunnisa.jpeg" alt="Dr. Md. Mazharunnisa">
                <div class="title">Dr. Md. Mazharunnisa</div>
                <div class="subtitle">Associate Professor, BBA KLEF</div>
            </div>
        </div>
    </div>

</body>
</html>