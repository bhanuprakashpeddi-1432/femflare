<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chairpersons and Convenors - FemFlare 2025</title>
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

        .chairpersons-container {
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
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 50px;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .row {
            display: flex;
            justify-content: center;
            gap: 40px;
            flex-wrap: wrap;
        }

        .card {
            background: var(--glass-bg);
            backdrop-filter: blur(10px);
            border: 1px solid var(--glass-border);
            border-radius: 20px;
            padding: 30px;
            text-align: center;
            width: 300px;
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
            box-shadow: 0 20px 60px rgba(251, 69, 112, 0.3);
        }

        .card:hover::before {
            opacity: 0.05;
        }

        .card img {
            width: 180px;
            height: 180px;
            object-fit: cover;
            border: 4px solid var(--primary-fuchsia);
            border-radius: 50%;
            margin-bottom: 20px;
            transition: all 0.4s ease;
            position: relative;
            z-index: 2;
        }

        .card:hover img {
            transform: scale(1.05);
            border-color: var(--primary-hot-pink);
            box-shadow: 0 10px 30px rgba(251, 69, 112, 0.4);
        }

        .card h2 {
            font-size: 1.4rem;
            font-weight: 700;
            color: var(--primary-fuchsia);
            margin-bottom: 8px;
            text-transform: uppercase;
            letter-spacing: 1px;
            position: relative;
            z-index: 2;
        }

        .card h3 {
            font-size: 1.1rem;
            font-weight: 600;
            color: var(--text-dark);
            margin-bottom: 15px;
            opacity: 0.9;
            position: relative;
            z-index: 2;
        }

        .card p {
            font-size: 1rem;
            color: var(--text-light);
            line-height: 1.6;
            font-weight: 500;
            position: relative;
            z-index: 2;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            
            .hero-subtitle {
                font-size: 1.2rem;
            }
            
            .chairpersons-container {
                padding: 70px 15px 40px;
            }
            
            .row {
                gap: 25px;
            }
            
            .card {
                width: 280px;
                padding: 25px;
        }
    }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <div class="chairpersons-container">
        <div class="hero-section">
            <h1 class="hero-title">Chairpersons & Convenors</h1>
            <p class="hero-subtitle">Leadership Team - FemFlare 2025</p>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="card">
                    <img src="images/ruthramya.jpg" alt="Dr. K. Ruth Ramya">
                    <h2>Dr. K. Ruth Ramya</h2>
                    <h3>Chairperson</h3>
                    <p>Associate Dean-Student Affairs & Convener Women Development Cell, CSE, KLEF</p>
                </div>
                <div class="card">
                    <img src="images/sony.jpg" alt="Dr. K. Sony">
                    <h2>Dr. K. Sony</h2>
                    <h3>Chairperson</h3>
                    <p>Assistant Director-Alumni Relations & Co-Convener Women Development Cell, ECE, KLEF</p>
                </div>
            </div>

            <div class="row">
                <div class="card">
                    <img src="images/swapna.jpg" alt="Dr. K. Swapna">
                    <h2>Dr. K. Swapna</h2>
                    <h3>Convener</h3>
                    <p>HOD-Physics, KLEF</p>
                </div>
                <div class="card">
                    <img src="images/rajarajeswari.jpeg" alt="Dr. P. Raja Rajeswari">
                    <h2>Dr. P. Raja Rajeswari</h2>
                    <h3>Convener</h3>
                    <p>Alternate HOD-CSE, KLEF</p>
                </div>
                <div class="card">
                    <img src="images/santhisri.jpg" alt="Dr. T. Santhi Sri">
                    <h2>Dr. T. Santhi Sri</h2>
                    <h3>Convener</h3>
                    <p>Deputy HOD-CSE, KLEF</p>
                </div>
            </div>

            <div class="row">
                <div class="card">
                    <img src="images/sujatha.jpeg" alt="Dr. M. Sujatha">
                    <h2>Dr. M. Sujatha</h2>
                    <h3>Convener</h3>
                    <p>Deputy HOD-ECE, KLEF</p>
                </div>
                <div class="card">
                    <img src="images/saradha.jpeg" alt="Dr. K. Sarada">
                    <h2>Dr. K. Sarada</h2>
                    <h3>Convener</h3>
                    <p>Vice-Principal, College of Law, KLEF</p>
                </div>
                <div class="card">
                    <img src="images/mazarunnisa.jpeg" alt="Dr. Md. Mazharunnisa">
                    <h2>Dr. Md. Mazharunnisa</h2>
                    <h3>Convener</h3>
                    <p>Associate Professor, BBA KLEF</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>