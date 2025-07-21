<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chief Coordinators - FemFlare 2025</title>
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

        .coordinators-container {
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
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 25px;
            justify-content: center;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .card {
            background: var(--glass-bg);
            backdrop-filter: blur(10px);
            border: 1px solid var(--glass-border);
            border-radius: 15px;
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
            transform: translateY(-8px) scale(1.02);
            box-shadow: 0 15px 40px rgba(251, 69, 112, 0.25);
        }

        .card:hover::before {
            opacity: 0.05;
        }

        .card h3 {
            font-size: 1.3rem;
            font-weight: 700;
            color: #000000;
            margin-bottom: 12px;
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
            
            .coordinators-container {
                padding: 70px 15px 40px;
            }
            
            .container {
                grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
                gap: 20px;
            }
            
            .card {
                padding: 20px;
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

    <div class="coordinators-container">
        <div class="hero-section">
            <h1 class="hero-title">Chief Coordinators</h1>
            <p class="hero-subtitle">Strategic Leadership - FemFlare 2025</p>
        </div>
        
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
    </div>
</body>
</html>