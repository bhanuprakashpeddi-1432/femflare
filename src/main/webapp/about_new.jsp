<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - FemFlare 2025</title>
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

        .about-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 120px 20px 60px;
            position: relative;
        }

        .hero-section {
            text-align: center;
            margin-bottom: 80px;
            position: relative;
        }

        .hero-title {
            font-size: 4rem;
            font-weight: 800;
            background: linear-gradient(45deg, var(--primary-fuchsia), var(--primary-hot-pink), var(--primary-pink));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 3px;
            position: relative;
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.5rem;
            color: var(--text-dark);
            font-weight: 500;
            margin-bottom: 30px;
            opacity: 0.9;
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

        .content-section {
            margin-bottom: 60px;
            position: relative;
        }

        .content-card {
            background: var(--glass-bg);
            backdrop-filter: blur(20px);
            border: 1px solid var(--glass-border);
            border-radius: 30px;
            padding: 40px;
            box-shadow: 0 20px 40px rgba(251, 69, 112, 0.1);
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
            margin-bottom: 40px;
        }

        .content-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.1), transparent);
            transition: left 0.7s;
        }

        .content-card:hover::before {
            left: 100%;
        }

        .content-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 30px 60px rgba(251, 69, 112, 0.2);
            border-color: var(--primary-pink);
        }

        .card-content {
            display: flex;
            align-items: center;
            gap: 40px;
        }

        .card-content.reverse {
            flex-direction: row-reverse;
        }

        .text-content {
            flex: 1;
            z-index: 2;
            position: relative;
        }

        .image-content {
            flex: 0 0 300px;
            z-index: 2;
            position: relative;
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-fuchsia);
            margin-bottom: 20px;
            position: relative;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 60px;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-fuchsia), var(--primary-hot-pink));
            border-radius: 2px;
        }

        .section-text {
            font-size: 1.1rem;
            line-height: 1.8;
            color: var(--text-dark);
            margin-bottom: 20px;
            text-align: justify;
        }

        .section-image {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .section-image:hover {
            transform: scale(1.05) rotate(2deg);
            box-shadow: 0 20px 40px rgba(251, 69, 112, 0.2);
        }

        .floating-stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin: 80px 0;
        }

        .stat-card {
            background: var(--glass-bg);
            backdrop-filter: blur(15px);
            border: 1px solid var(--glass-border);
            border-radius: 25px;
            padding: 30px;
            text-align: center;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .stat-card::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: conic-gradient(transparent, var(--primary-pink), transparent);
            animation: rotate 4s linear infinite;
            z-index: -1;
        }

        .stat-card::after {
            content: '';
            position: absolute;
            inset: 3px;
            background: var(--glass-bg);
            backdrop-filter: blur(15px);
            border-radius: 22px;
            z-index: -1;
        }

        @keyframes rotate {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .stat-card:hover {
            transform: translateY(-5px) scale(1.02);
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 800;
            color: var(--primary-fuchsia);
            margin-bottom: 10px;
            display: block;
        }

        .stat-label {
            font-size: 1.1rem;
            color: var(--text-dark);
            font-weight: 600;
        }

        .highlight-box {
            background: linear-gradient(135deg, var(--primary-pink), var(--primary-hot-pink));
            color: var(--primary-white);
            padding: 30px;
            border-radius: 20px;
            margin: 40px 0;
            text-align: center;
            box-shadow: 0 15px 30px rgba(251, 69, 112, 0.3);
            transform: perspective(1000px) rotateX(5deg);
            transition: all 0.3s ease;
        }

        .highlight-box:hover {
            transform: perspective(1000px) rotateX(0deg) translateY(-5px);
            box-shadow: 0 25px 50px rgba(251, 69, 112, 0.4);
        }

        .highlight-text {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .about-container {
                padding: 100px 15px 40px;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .hero-subtitle {
                font-size: 1.2rem;
            }

            .card-content,
            .card-content.reverse {
                flex-direction: column;
                text-align: center;
            }

            .image-content {
                flex: none;
                width: 100%;
            }

            .section-title {
                font-size: 2rem;
            }

            .content-card {
                padding: 25px;
            }

            .floating-stats {
                grid-template-columns: 1fr;
                gap: 20px;
                margin: 50px 0;
            }

            .stat-number {
                font-size: 2.5rem;
            }
        }

        .animate-on-scroll {
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.6s ease;
        }

        .animate-on-scroll.animated {
            opacity: 1;
            transform: translateY(0);
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <div class="about-container">
        <!-- Hero Section -->
        <div class="hero-section">
            <h1 class="hero-title">About FemFlare</h1>
            <p class="hero-subtitle">Empowering Women • Celebrating Excellence • Creating Tomorrow</p>
        </div>

        <!-- Stats Section -->
        <div class="floating-stats animate-on-scroll">
            <div class="stat-card">
                <span class="stat-number">2025</span>
                <div class="stat-label">Current Edition</div>
            </div>
            <div class="stat-card">
                <span class="stat-number">₹1L</span>
                <div class="stat-label">Prize Money</div>
            </div>
            <div class="stat-card">
                <span class="stat-number">2</span>
                <div class="stat-label">Days of Events</div>
            </div>
            <div class="stat-card">
                <span class="stat-number">∞</span>
                <div class="stat-label">Possibilities</div>
            </div>
        </div>

        <!-- FemFlare Section -->
        <div class="content-section animate-on-scroll">
            <div class="content-card">
                <div class="card-content">
                    <div class="text-content">
                        <h2 class="section-title">FemFlare 2025</h2>
                        <p class="section-text">
                            FemFlare is more than just a festival—it's a revolutionary movement! Under this year's theme, 
                            <strong>AccelerateAction</strong>, we unite diverse women from across the globe to drive transformative change, 
                            showcase extraordinary talents, and build lasting connections that transcend boundaries.
                        </p>
                        <p class="section-text">
                            This two-day extravaganza is meticulously designed to empower women through dynamic workshops, 
                            thought-provoking talks, and inspiring exhibitions that foster leadership, innovation, and sisterhood. 
                            Join us as we don't just dream of change—we <strong>AccelerateAction!</strong>
                        </p>
                    </div>
                    <div class="image-content">
                        <img src="images/logo.png" alt="FemFlare Festival" class="section-image">
                    </div>
                </div>
            </div>
        </div>

        <!-- Highlight Box -->
        <div class="highlight-box animate-on-scroll">
            <div class="highlight-text">🚀 AccelerateAction Theme</div>
            <p>Together, we don't just dream of change—we create it, lead it, and live it!</p>
        </div>

        <!-- K L University Section -->
        <div class="content-section animate-on-scroll">
            <div class="content-card">
                <div class="card-content reverse">
                    <div class="text-content">
                        <h2 class="section-title">K L University</h2>
                        <p class="section-text">
                            K L University stands as a beacon of academic excellence, proudly featured in the prestigious 
                            NIRF 2023 Rankings with remarkable achievements across multiple domains.
                        </p>
                        <p class="section-text">
                            🏆 <strong>Ranked #28</strong> in Universities<br>
                            🔧 <strong>Ranked #44</strong> in Engineering<br>
                            💼 <strong>Ranked #52</strong> in Management<br>
                            🌟 <strong>Ranked #50</strong> Overall
                        </p>
                        <p class="section-text">
                            These accomplishments highlight our unwavering dedication to academic excellence, 
                            innovative research, and holistic development of future leaders.
                        </p>
                    </div>
                    <div class="image-content">
                        <img src="images/kl_logo.png" alt="KL University" class="section-image">
                    </div>
                </div>
            </div>
        </div>

        <!-- Women Development Cell Section -->
        <div class="content-section animate-on-scroll">
            <div class="content-card">
                <div class="card-content">
                    <div class="text-content">
                        <h2 class="section-title">Women Development Cell</h2>
                        <p class="section-text">
                            The Women Development Cell (WDC) at KLEF serves as a powerful catalyst for gender equality, 
                            operating through comprehensive education, passionate advocacy, and transformative skill-building initiatives.
                        </p>
                        <p class="section-text">
                            Our mission encompasses creating a safe, nurturing environment where women can thrive and reach their 
                            full potential. We champion women's rights through awareness programs, conduct impactful gender 
                            sensitization activities, and work tirelessly to eliminate discrimination while ensuring equitable 
                            opportunities for all members of our university community.
                        </p>
                        <p class="section-text">
                            <strong>Our Core Values:</strong> Equality • Empowerment • Education • Excellence
                        </p>
                    </div>
                    <div class="image-content">
                        <img src="images/womens_logo.png" alt="Women Development Cell" class="section-image">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Smooth scroll animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('animated');
                }
            });
        }, observerOptions);

        // Observe all elements with animate-on-scroll class
        document.querySelectorAll('.animate-on-scroll').forEach(el => {
            observer.observe(el);
        });

        // Add some interactive sparkle effects
        document.addEventListener('mousemove', (e) => {
            if (Math.random() > 0.98) {
                createSparkle(e.clientX, e.clientY);
            }
        });

        function createSparkle(x, y) {
            const sparkle = document.createElement('div');
            sparkle.style.cssText = `
                position: fixed;
                left: ${x}px;
                top: ${y}px;
                width: 6px;
                height: 6px;
                background: linear-gradient(45deg, #fb4570, #fb6b90);
                border-radius: 50%;
                pointer-events: none;
                z-index: 9999;
                animation: sparkleAnim 1s ease-out forwards;
            `;
            
            document.body.appendChild(sparkle);
            
            setTimeout(() => sparkle.remove(), 1000);
        }

        // Add CSS for sparkle animation
        const sparkleCSS = document.createElement('style');
        sparkleCSS.textContent = `
            @keyframes sparkleAnim {
                0% {
                    transform: scale(0) rotate(0deg);
                    opacity: 1;
                }
                50% {
                    transform: scale(1) rotate(180deg);
                    opacity: 1;
                }
                100% {
                    transform: scale(0) rotate(360deg);
                    opacity: 0;
                }
            }
        `;
        document.head.appendChild(sparkleCSS);
    </script>
</body>
</html>
