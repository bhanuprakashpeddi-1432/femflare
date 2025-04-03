<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHIEF CO-ORDINATORS</title>
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
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            justify-content: center;
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }

        .card {
            background: white;
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .row2 {
            display: flex;
            justify-content: center;
            gap: 50px;
        }

        /* Responsive Design */
        @media screen and (max-width: 900px) {
            .container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media screen and (max-width: 600px) {
            .container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>
<br>
<br>
<br>
    <h1><b>CHIEF CO-ORDINATORS</b></h1>
    <div class="container">
        <div class="card">
            <h3>Dr. K R S Prasad</h3>
            <p>In charge Dean- Student Affairs, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. Habibullah Khan</h3>
            <p>Advisor-Student Affairs, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. K. Rama Krishna</h3>
            <p>Dean – Quality, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. N. B. V. Prasad</h3>
            <p>Dean Placements & Internships, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. V. Srikanth</h3>
            <p>Dean F&SA, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. A. Srinath</h3>
            <p>Dean Student Progression & Skill Development, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. M. Kishore Babu</h3>
            <p>Dean MHS & International Relations, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. P.V. Chalapathi</h3>
            <p>Additional Dean Placements, Director-PS, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. V. Rajesh</h3>
            <p>Dean P&D, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. B. T. P. Madhav</h3>
            <p>Additional Dean R & D, KLEF</p>
        </div>
        <div class="card">
            <h3>Prof. V. Hari Kiran</h3>
            <p>Additional Dean Academics, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. N Buchi Naidu</h3>
            <p>Director R & D, Life Sciences, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. P. Sai Vijay</h3>
            <p>Director-SAC, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. A. Vani</h3>
            <p>Special Officer, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. K. Ch Sri Kavya</h3>
            <p>Director, Alumni Relations, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. P. Ratna Prasad</h3>
            <p>Director, Agriculture, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. T. K. Rama Krishna Rao</h3>
            <p>Principal College of Engineering, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. K. Subhramanyam</h3>
            <p>Principal College of Sciences, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. V. Krishna Reddy</h3>
            <p>Principal-FED, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. G. Chakravarthy</h3>
            <p>Principal College of Pharmacy, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. M. Suman</h3>
            <p>Vice Principal, College of Engineering, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. I. Pavan Kumar</h3>
            <p>Principal, College of Law, KLEF</p>
        </div>
        <div class="card">
            <h3>Dr. I Govardhini</h3>
            <p>Principal, ASC, KLEF</p>
        </div>
    </div>

</body>
</html>
