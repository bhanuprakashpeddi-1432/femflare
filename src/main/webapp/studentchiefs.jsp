<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Chiefs - FemFlare 2025</title>
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
            --glass-bg: rgba(255, 255, 255, 0.1);
            --glass-border: rgba(251, 69, 112, 0.2);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, var(--primary-cream) 0%, var(--primary-pink) 50%, var(--primary-hot-pink) 100%);
            background-attachment: fixed;
            min-height: 100vh;
            overflow-x: hidden;
            position: relative;
        }

        /* Animated background particles */
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('data:image/svg+xml,<svg width="60" height="60" viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg"><g fill="none" fill-rule="evenodd"><g fill="%23fb8da0" fill-opacity="0.03"><circle cx="30" cy="30" r="2"/></g></svg>');
            animation: float 20s ease-in-out infinite;
            z-index: -1;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }

        .chiefs-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 80px 20px 60px;
            position: relative;
        }

        .hero-section {
            text-align: center;
            margin-bottom: 60px;
            position: relative;
        }

        .hero-title {
            font-size: 4rem;
            font-weight: 800;
            color: var(--primary-fuchsia);
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 3px;
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            color: var(--text-dark);
            font-weight: 600;
            text-shadow: 1px 1px 2px rgba(255,255,255,0.5);
            margin-bottom: 30px;
            animation: fadeInUp 1s ease-out 0.2s both;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            justify-content: center;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .card {
            background: var(--glass-bg);
            backdrop-filter: blur(10px);
            border: 1px solid var(--glass-border);
            border-radius: 20px;
            padding: 25px;
            text-align: center;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            box-shadow: 0 8px 32px rgba(251, 69, 112, 0.1);
            position: relative;
            overflow: hidden;
        }

        .card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, var(--primary-fuchsia), var(--primary-hot-pink));
            opacity: 0;
            transition: opacity 0.4s ease;
            z-index: 1;
        }

        .card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 20px 50px rgba(251, 69, 112, 0.25);
        }

        .card:hover::before {
            opacity: 0.05;
        }

        .card img {
            width: 180px;
            height: 180px;
            border-radius: 50%;
            object-fit: cover;
            margin: 0 auto 20px;
            border: 4px solid transparent;
            background: linear-gradient(135deg, var(--primary-fuchsia), var(--primary-hot-pink));
            background-clip: padding-box;
            position: relative;
            z-index: 2;
            transition: transform 0.4s ease;
        }

        .card:hover img {
            transform: scale(1.05);
        }

        .card h3 {
            font-size: 1.4rem;
            font-weight: 700;
            color: #000000;
            margin-bottom: 8px;
            text-transform: uppercase;
            letter-spacing: 1px;
            position: relative;
            z-index: 2;
        }

        .card p {
            font-size: 1rem;
            color: var(--text-light);
            line-height: 1.5;
            font-weight: 500;
            position: relative;
            z-index: 2;
            text-transform: capitalize;
        }

        /* Staggered animation for cards */
        .card:nth-child(1) { animation: fadeInUp 1s ease-out 0.5s both; }
        .card:nth-child(2) { animation: fadeInUp 1s ease-out 0.55s both; }
        .card:nth-child(3) { animation: fadeInUp 1s ease-out 0.6s both; }
        .card:nth-child(4) { animation: fadeInUp 1s ease-out 0.65s both; }
        .card:nth-child(5) { animation: fadeInUp 1s ease-out 0.7s both; }
        .card:nth-child(6) { animation: fadeInUp 1s ease-out 0.75s both; }
        .card:nth-child(7) { animation: fadeInUp 1s ease-out 0.8s both; }
        .card:nth-child(8) { animation: fadeInUp 1s ease-out 0.85s both; }
        .card:nth-child(9) { animation: fadeInUp 1s ease-out 0.9s both; }
        .card:nth-child(10) { animation: fadeInUp 1s ease-out 0.95s both; }
        .card:nth-child(n+11) { animation: fadeInUp 1s ease-out 1s both; }

        /* Responsive design */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            
            .hero-subtitle {
                font-size: 1.2rem;
            }
            
            .chiefs-container {
                padding: 70px 15px 40px;
            }
            
            .container {
                grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
                gap: 25px;
            }
            
            .card {
                padding: 20px;
            }
            
            .card img {
                width: 150px;
                height: 150px;
            }
            
            .card h3 {
                font-size: 1.2rem;
            }
            
            .card p {
                font-size: 0.95rem;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="chiefs-container">
        <div class="hero-section">
            <h1 class="hero-title">Student Chiefs</h1>
            <p class="hero-subtitle">Student Leadership Team - FemFlare 2025</p>
        </div>
        
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
