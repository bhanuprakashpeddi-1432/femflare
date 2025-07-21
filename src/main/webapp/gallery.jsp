<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery - FemFlare 2025</title>

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

        .gallery-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 40px 20px 60px;
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
            position: relative;
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

        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            padding: 20px 0;
            animation: fadeInUp 1s ease-out 0.4s both;
        }

        .gallery-item {
            position: relative;
            border-radius: 20px;
            overflow: hidden;
            background: var(--glass-bg);
            backdrop-filter: blur(10px);
            border: 1px solid var(--glass-border);
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            box-shadow: 0 8px 32px rgba(251, 69, 112, 0.1);
        }

        .gallery-item::before {
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

        .gallery-item:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 20px 60px rgba(251, 69, 112, 0.3);
        }

        .gallery-item:hover::before {
            opacity: 0.1;
        }

        .gallery img {
            width: 100%;
            height: 250px;
            object-fit: cover;
            transition: all 0.4s ease;
            position: relative;
            z-index: 0;
        }

        .gallery-item:hover img {
            transform: scale(1.1);
            filter: brightness(1.1) contrast(1.1);
        }

        .gallery-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(transparent, rgba(0,0,0,0.7));
            color: var(--primary-white);
            padding: 20px;
            transform: translateY(100%);
            transition: transform 0.4s ease;
            z-index: 2;
        }

        .gallery-item:hover .gallery-overlay {
            transform: translateY(0);
        }

        .gallery-overlay h3 {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .gallery-overlay p {
            font-size: 0.9rem;
            opacity: 0.9;
        }

        /* Staggered animation for gallery items */
        .gallery-item:nth-child(1) { animation: fadeInUp 1s ease-out 0.5s both; }
        .gallery-item:nth-child(2) { animation: fadeInUp 1s ease-out 0.6s both; }
        .gallery-item:nth-child(3) { animation: fadeInUp 1s ease-out 0.7s both; }
        .gallery-item:nth-child(4) { animation: fadeInUp 1s ease-out 0.8s both; }
        .gallery-item:nth-child(5) { animation: fadeInUp 1s ease-out 0.9s both; }
        .gallery-item:nth-child(6) { animation: fadeInUp 1s ease-out 1.0s both; }
        .gallery-item:nth-child(7) { animation: fadeInUp 1s ease-out 1.1s both; }
        .gallery-item:nth-child(8) { animation: fadeInUp 1s ease-out 1.2s both; }
        .gallery-item:nth-child(9) { animation: fadeInUp 1s ease-out 1.3s both; }
        .gallery-item:nth-child(10) { animation: fadeInUp 1s ease-out 1.4s both; }
        .gallery-item:nth-child(n+11) { animation: fadeInUp 1s ease-out 1.5s both; }

        /* Responsive design */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            
            .hero-subtitle {
                font-size: 1.2rem;
            }
            
            .gallery {
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
            }
            
            .gallery img {
                height: 200px;
            }
            
            .gallery-container {
                padding: 70px 15px 40px;
            }
        }
    </style>
</head>
<body>

    <%@include file="mainnavbar.jsp" %>

    <div class="gallery-container">
        <div class="hero-section">
            <h1 class="hero-title">Event Gallery</h1>
            <p class="hero-subtitle">Capturing the beautiful moments of FemFlare 2025</p>
        </div>
        
        <div class="gallery">
            <div class="gallery-item">
                <img src="images/1.jpeg" alt="Event 1">
                <div class="gallery-overlay">
                    <h3>Event Moment 1</h3>
                    <p>Beautiful memories from FemFlare</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/2.jpeg" alt="Event 2">
                <div class="gallery-overlay">
                    <h3>Event Moment 2</h3>
                    <p>Celebrating achievements</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/3.jpeg" alt="Event 3">
                <div class="gallery-overlay">
                    <h3>Event Moment 3</h3>
                    <p>Together we shine</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/4.jpeg" alt="Event 4">
                <div class="gallery-overlay">
                    <h3>Event Moment 4</h3>
                    <p>Inspiring moments</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/5.jpeg" alt="Event 5">
                <div class="gallery-overlay">
                    <h3>Event Moment 5</h3>
                    <p>Excellence in action</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/6.jpeg" alt="Event 6">
                <div class="gallery-overlay">
                    <h3>Event Moment 6</h3>
                    <p>Creating memories</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/7.jpeg" alt="Event 7">
                <div class="gallery-overlay">
                    <h3>Event Moment 7</h3>
                    <p>Moments of joy</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/8.jpeg" alt="Event 8">
                <div class="gallery-overlay">
                    <h3>Event Moment 8</h3>
                    <p>Unforgettable experiences</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/9.jpeg" alt="Event 9">
                <div class="gallery-overlay">
                    <h3>Event Moment 9</h3>
                    <p>Celebrating success</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/10.jpeg" alt="Event 10">
                <div class="gallery-overlay">
                    <h3>Event Moment 10</h3>
                    <p>Empowering women</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/11.jpeg" alt="Event 11">
                <div class="gallery-overlay">
                    <h3>Event Moment 11</h3>
                    <p>Building connections</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/12.jpeg" alt="Event 12">
                <div class="gallery-overlay">
                    <h3>Event Moment 12</h3>
                    <p>Inspiring leaders</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/13.jpeg" alt="Event 13">
                <div class="gallery-overlay">
                    <h3>Event Moment 13</h3>
                    <p>Showcase of talent</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/14.jpeg" alt="Event 14">
                <div class="gallery-overlay">
                    <h3>Event Moment 14</h3>
                    <p>Growth and learning</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/15.jpeg" alt="Event 15">
                <div class="gallery-overlay">
                    <h3>Event Moment 15</h3>
                    <p>Innovation in focus</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/16.jpeg" alt="Event 16">
                <div class="gallery-overlay">
                    <h3>Event Moment 16</h3>
                    <p>Collaborative spirit</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/17.jpeg" alt="Event 17">
                <div class="gallery-overlay">
                    <h3>Event Moment 17</h3>
                    <p>Breaking barriers</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/18.jpeg" alt="Event 18">
                <div class="gallery-overlay">
                    <h3>Event Moment 18</h3>
                    <p>Future leaders</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/19.JPG" alt="Event 19">
                <div class="gallery-overlay">
                    <h3>Event Moment 19</h3>
                    <p>Cherished memories</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="images/20.JPG" alt="Event 20">
                <div class="gallery-overlay">
                    <h3>Event Moment 20</h3>
                    <p>Journey continues</p>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
