<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chief Student Coordinators</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4);
            margin: 0;
            padding: 20px 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #e91e63;
            text-align: center;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
            width: 90%;
            max-width: 1200px;
        }

        .card {
            background: white;
            width: 100%;
            max-width: 280px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            padding: 15px;
            transition: 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 100%;
            height: auto;
            max-height: 250px;
            border-radius: 12px;
            object-fit: cover;
        }

        .card h3 {
            color: #e91e63;
            font-size: 18px;
            margin-top: 10px;
        }

        .card p {
            font-size: 14px;
            color: #555;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
            }

            .card {
                max-width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %> 
    <br><br>

    <h1>STUDENT CHIEFS</h1>
    
    <div class="container">
    
    <div class="card">
            <img src="images/Bhuvana.jpeg" alt="Sowmya Sri">
            <h3>Bhuvana</h3>
            <p>Chief Executive</p>
        </div>
        
        <div class="card">
            <img src="images/Tinku.jpeg" alt="Praharshini">
            <h3>Praharshini</h3>
            <p>Chief Executive</p>
        </div>
        
        <div class="card">
            <img src="images/Jyothika.jpg" alt="Jyothika">
            <h3>Jyothika</h3>
            <p>Chief Executive</p>
        </div>
        
          <div class="card">
            <img src="images/ynandini.jpeg" alt="nandini">
            <h3>Y.Nandini</h3>
            <p>Chief Executive</p>
        </div>
        
        <div class="card">
            <img src="images/Sindhu.jpeg" alt="Sindhu">
            <h3>Sindhu Ande</h3>
            <p>Chief Secretary</p>
        </div>
        
        <div class="card">
            <img src="images/veditha.jpeg" alt="Veditha">
            <h3>Veditha</h3>
            <p>Chief Secretary</p>
        </div>
        
        <div class="card">
            <img src="images/varshitha.jpg" alt="Varshitha">
            <h3>Varshitha</h3>
            <p>Chief Secretary</p>
        </div>
        
        <div class="card">
            <img src="images/gayatri.jpg" alt="gayatri">
            <h3>Gayathri </h3>
            <p>Chief Treasurer</p>
        </div>
        
        <div class="card">
            <img src="images/jyotsana.png" alt="jyotsana">
            <h3>Jyotsana </h3>
            <p>Chief Treasurer</p>
        </div>
        
        
        <div class="card">
            <img src="images/Charishma.jpeg" alt="Mulpuru Charishma">
            <h3>Mulpuru Charishma</h3>
            <p>Chief - Website</p>
        </div>
        
        <div class="card">
            <img src="images/Gamana.jpeg" alt="Gamana">
            <h3>M.Gamana Sree</h3>
            <p>Chief - Website</p>
        </div>
        
        <div class="card">
            <img src="images/Prathima.jpg" alt="Prathima">
            <h3>Prathima</h3>
            <p>Chief - Broadcasting</p>
        </div>
        
        <div class="card">
            <img src="images/Namratha.jpg" alt="Namratha">
            <h3>A. Sai Namratha Reddy </h3>
            <p>Chief - Literary Events</p>
        </div>

        <div class="card">
            <img src="images/Amulya.jpg" alt="Amulya">
            <h3>Amulya</h3>
            <p>Chief - Cultural Events</p>
        </div>
        
        <div class="card">
            <img src="images/Navya.jpg" alt="Navya">
            <h3>Navya Sri </h3>
            <p>Chief - Spot Events</p>
        </div>
        
        <div class="card">
            <img src="images/SowmyaSri.jpg" alt="Sowmya Sri">
            <h3>Danaboina Sowmya Sri </h3>
            <p>Chief - Technical Events</p>
        </div>
        
         <div class="card">
            <img src="images/Harini.jpg" alt="Harini">
            <h3>Harini Kanumilli </h3>
            <p>Chief - Registration and Certifications</p>
        </div>
        
        <div class="card">
            <img src="images/Santhipriya.jpg" alt="Santhipriya">
            <h3>Santhi Priya </h3>
            <p>Chief - Registration and Certifications </p>
        </div>
        
        <div class="card">
            <img src="images/Sharmila.jpg" alt="Sharmila">
            <h3>Sharmila</h3>
            <p>Chief - Hospitality</p>
        </div>
        
        <div class="card">
            <img src="images/Aryaani.JPG" alt="Aryaani">
            <h3>Aryaani</h3>
            <p>Chief - Hospitality</p>
        </div>
        
        <div class="card">
            <img src="images/sindhuja.jpg" alt="Sindhuja">
            <h3>K.Sindhuja </h3>
            <p>Chief - Designing</p>
        </div>
        
        <div class="card">
            <img src="images/srinamratha.jpg" alt="srinamratha">
            <h3>Sri Namratha </h3>
            <p>Chief - Drafting</p>
        </div>
        
        <div class="card">
            <img src="images/dhairyakarshini.jpg" alt="dhairyakarshini">
            <h3>Nerella Dhairyakarshini </h3>
            <p>Chief - Creative Arts</p>
        </div>
        
        
        <div class="card">
            <img src="images/chandrika.jpg" alt="chandrika">
            <h3>Chandrika.Tiriveedhi </h3>
            <p>Chief - Creative Arts</p>
        </div>
        
         <div class="card">
            <img src="images/lahari.jpg" alt="lahari">
            <h3>Lahari </h3>
            <p>Chief - Stage and Stalls Management</p>
        </div>
        
        <div class="card">
            <img src="images/anulekhana.jpg" alt="anulekhana">
            <h3>Anu Lekhana </h3>
            <p>Chief - Stage and Stalls Management</p>
        </div>
        
         <div class="card">
            <img src="images/satwika.jpeg" alt="satwika">
            <h3>Satwika </h3>
            <p>Chief - Sponsorship</p>
        </div>
        
         <div class="card">
            <img src="images/Varsha.jpeg" alt="varsha">
            <h3>Srivarsha</h3>
            <p>Chief - PR</p>
        </div>
        
    </div>

</body>
</html>
