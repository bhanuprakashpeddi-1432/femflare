<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHIEF PATRONS</title>
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
            grid-template-columns: repeat(3, 1fr); /* 3 cards per row */
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

        .card img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border: 4px solid #7D7D7D; /* Changed to a lighter black (grayish black) */
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
            .container {
                grid-template-columns: repeat(2, 1fr); /* 2 cards per row on smaller screens */
            }
        }

        @media screen and (max-width: 600px) {
            .container {
                grid-template-columns: 1fr; /* 1 card per row on mobile */
            }
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>
<br>
<br>
<br>
    <h1><b>CHIEF PATRONS</b></h1>
    <div class="container">
        <div class="card">
            <img src="images/k_Satayanarayana.jpg" alt="Chief Patron">
            <h3>Sri. Koneru Satyanarayana</h3>
            <p>Hon’ble President, KLEF</p>
        </div>
        <div class="card">
            <img src="images/kanchana.jpg" alt="Chief Patron">
            <h3>Smt. K. Kanchana Latha</h3>
            <p>Hon’ble Secretary, KLEF</p>
        </div>
        <div class="card">
            <img src="images/havish.jpeg" alt="Chief Patron">
            <h3>Er. Koneru Lakshman Havish</h3>
            <p>Hon’ble Vice-President, KLEF</p>
        </div>
        <div class="card">
            <img src="images/hareen.jpg" alt="Chief Patron">
            <h3>Er. Koneru Raja Hareen</h3>
            <p>Hon’ble Vice-President, KLEF</p>
        </div>
        <div class="card">
            <img src="images/Nikhila.jpg" alt="Chief Patron">
            <h3>Smt. Koneru Nikhila</h3>
            <p> Member, KLEF</p>
        </div>
        <div class="card">
            <img src="images/Divya.jpeg" alt="Chief Patron">
            <h3>Smt. Koneru Sri Divya</h3>
            <p> Member, KLEF</p>
        </div>
        <div class="card">
            <img src="images/jagannatharao.jpg" alt="Chief Patron">
            <h3>Dr. K. S. Jagannatha Rao</h3>
            <p>Hon’ble Pro Chancellor, KLEF</p>
        </div>
        <div class="card">
            <img src="images/parthasaradhivarma.jpeg" alt="Chief Patron">
            <h3>Dr. G. Pardha Saradhi Varma</h3>
            <p>Hon’ble Vice Chancellor, KLEF</p>
        </div>
    </div>

</body>
</html>
