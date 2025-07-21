<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Visionaries - FemFlare 2025</title>
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

        .visionaries-container {
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

        .profile-section {
            margin-bottom: 80px;
            position: relative;
        }

        .profile-card {
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

        .profile-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.1), transparent);
            transition: left 0.7s;
        }

        .profile-card:hover::before {
            left: 100%;
        }

        .profile-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 30px 60px rgba(251, 69, 112, 0.2);
            border-color: var(--primary-pink);
        }

        .profile-header {
            display: flex;
            align-items: center;
            gap: 40px;
            margin-bottom: 40px;
        }

        .profile-image-container {
            flex: 0 0 250px;
            position: relative;
        }

        .profile-image {
            width: 100%;
            height: 300px;
            object-fit: cover;
            border-radius: 20px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
            transition: all 0.3s ease;
            border: 4px solid var(--primary-white);
        }

        .profile-image:hover {
            transform: scale(1.02);
            box-shadow: 0 20px 40px rgba(251, 69, 112, 0.3);
        }

        .profile-info {
            flex: 1;
            z-index: 2;
            position: relative;
        }

        .profile-name {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-fuchsia);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
            margin-bottom: 10px;
            position: relative;
        }

        .profile-title {
            font-size: 1.5rem;
            font-weight: 600;
            color: var(--primary-hot-pink);
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .profile-intro {
            font-size: 1.1rem;
            line-height: 1.8;
            color: var(--text-dark);
            font-weight: 500;
            text-shadow: 0 1px 1px rgba(255,255,255,0.5);
            text-align: justify;
        }

        .content-sections {
            display: grid;
            gap: 30px;
        }

        .content-section {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(251, 69, 112, 0.1);
            border-radius: 20px;
            padding: 30px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .content-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.05), transparent);
            transition: left 0.5s;
        }

        .content-section:hover::before {
            left: 100%;
        }

        .content-section:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(251, 69, 112, 0.15);
            border-color: var(--primary-pink);
        }

        .section-title {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--primary-fuchsia);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
            margin-bottom: 15px;
            position: relative;
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .section-title::before {
            content: '';
            width: 6px;
            height: 30px;
            background: linear-gradient(135deg, var(--primary-fuchsia), var(--primary-hot-pink));
            border-radius: 3px;
        }

        .section-text {
            font-size: 1rem;
            line-height: 1.8;
            color: var(--text-dark);
            font-weight: 500;
            text-shadow: 0 1px 1px rgba(255,255,255,0.5);
            text-align: justify;
        }

        .highlight-section {
            background: linear-gradient(135deg, var(--primary-pink), var(--primary-hot-pink));
            color: var(--primary-white);
            border: none;
        }

        .highlight-section .section-title {
            color: var(--primary-white);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.3);
        }

        .highlight-section .section-title::before {
            background: var(--primary-white);
        }

        .highlight-section .section-text {
            color: var(--primary-white);
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .awards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .award-item {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(251, 69, 112, 0.2);
            border-radius: 15px;
            padding: 20px;
            text-align: center;
            transition: all 0.3s ease;
        }

        .award-item:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(251, 69, 112, 0.2);
        }

        .award-year {
            font-size: 1.2rem;
            font-weight: 700;
            color: var(--primary-fuchsia);
            margin-bottom: 10px;
        }

        .award-name {
            font-size: 1rem;
            font-weight: 600;
            color: var(--text-dark);
        }

        @media (max-width: 768px) {
            .visionaries-container {
                padding: 100px 15px 40px;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .hero-subtitle {
                font-size: 1.2rem;
            }

            .profile-header {
                flex-direction: column;
                text-align: center;
                gap: 30px;
            }

            .profile-image-container {
                flex: none;
                width: 250px;
                margin: 0 auto;
            }

            .profile-name {
                font-size: 2rem;
            }

            .profile-title {
                font-size: 1.3rem;
            }

            .content-section {
                padding: 20px;
            }

            .section-title {
                font-size: 1.5rem;
                flex-direction: column;
                text-align: center;
                gap: 10px;
            }

            .awards-grid {
                grid-template-columns: 1fr;
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

        .section-icon {
            font-size: 1.5rem;
            margin-right: 10px;
            color: var(--primary-hot-pink);
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <div class="visionaries-container">
        <!-- Hero Section -->
        <div class="hero-section">
            <h1 class="hero-title">Our Visionaries</h1>
            <p class="hero-subtitle">Leadership Excellence • Educational Innovation • Social Impact</p>
        </div>

        <!-- President Section -->
        <div class="profile-section animate-on-scroll">
            <div class="profile-card">
                <div class="profile-header">
                    <div class="profile-image-container">
                        <img src="images/k_Satayanarayana.jpg" alt="Er. Koneru Satyanarayana" class="profile-image">
                    </div>
                    <div class="profile-info">
                        <h2 class="profile-name">Er. KONERU SATYANARAYANA</h2>
                        <h3 class="profile-title">President</h3>
                        <p class="profile-intro">
                            Er. Koneru Satyanarayana is the visionary President of KL (Koneru Lakshmaiah) Deemed-to-be-University, 
                            leading a prestigious institution established in 1980. Under his leadership, the university has grown 
                            into a world-class educational hub serving over 20,000 students across a sprawling 100-acre campus.
                        </p>
                    </div>
                </div>

                <div class="content-sections">
                    <div class="content-section">
                        <h3 class="section-title">
                            <span class="section-icon">👨‍🎓</span>
                            About the President
                        </h3>
                        <p class="section-text">
                            Er. Koneru Satyanarayana is the President of KL (Koneru Lakshmaiah) Deemed-to-be-University, Vijayawada, 
                            Guntur, Andhra Pradesh (established in 1980). Sprawled across a green 100-acre world-class campus, 
                            KL Deemed to be University provides high-quality undergraduate, postgraduate, doctoral, and 
                            post-doctoral study and research programmes to around 20,000 students mentored by 1,200 faculty members.
                            <br><br>
                            An alumnus of BMS College of Engineering, Bengaluru, Satyanarayana began his career in 1977 as an entrepreneur 
                            (Coastal Cables Pvt. Ltd, Andhra Pradesh). However, his true passion lay in the nurturance and development of 
                            KL College of Engineering. In 1980, he was appointed as a managing committee member of the family-run 
                            Koneru Lakshmaiah Education Foundation (KLEF), shifting his prime focus to educational management.
                        </p>
                    </div>

                    <div class="content-section highlight-section">
                        <h3 class="section-title">
                            <span class="section-icon">🎯</span>
                            Vision for the University
                        </h3>
                        <p class="section-text">
                            "My vision for the University is to make it a world-class institution known for its academic excellence,
                             commitment to diversity, inclusion, and impact on society. The University should be a place where all 
                             students can thrive, regardless of their background or circumstances. One of our key goals is to 
                             strengthen the University’s research and innovation capabilities and position it as a leader in 
                             cutting-edge research and development. It is also essential to ensure that our research has a
                              real impact on the world, addressing some of the most pressing challenges faced by society today. 
                              Another goal is to increase the University’s accessibility and affordability, making it within reach 
                              of all students and creating a more inclusive campus environment where everyone attains holistic growth. Finally, we aim to make the University a community where students jointly work to address the challenges faced by communities, societies, cities, and regions. The University is committed to promoting and encouraging expertise and resources to make the world a better place. Together,
                             we can make a real difference in the lives of our students and the world around us."</p>
                    </div>

                    <div class="content-section">
                        <h3 class="section-title">
                            <span class="section-icon">🔬</span>
                            Research and Innovation Leadership
                        </h3>
                        <p class="section-text">
                           Promoting and supporting research initiatives within the University is vital to our mission.
                            Research is the means by which we push the boundaries of knowledge and make new discoveries,
                             while also preparing our students to be the leaders and innovators of tomorrow. To further 
                             these goals, several strategies are in place. First, there is a commitment to increasing 
                             funding for research, with additional resources already allocated to the research budget and a
                              commitment to continued support in the future. Another key initiative is to cultivate a more 
                              supportive environment for researchers, which includes providing access to cutting-edge equipment
                               and facilities, as well as mentorship and training opportunities. Various Centers of Excellence 
                               have been established on campus to enable students and faculty to work aggressively in diverse research areas. Additionally, promoting a collaborative research culture at the University is a priority, encouraging researchers from various disciplines to work together on common problems. To raise the profile of KL Deemed-to-be University’s research, collaboration with media, industry partners, and government agencies will be pursued to highlight the University’s research accomplishments. Furthermore, researchers will be encouraged to present their work at conferences and publish their findings in top journals. These measures collectively aim to establish 
                           KL Deemed-to-be University as a leading research institution on the global stage. </p>
                    </div>
                </div>
            </div>
        </div>  <!-- Honorable Secretary Section -->
        
        <!-- Secretary Section -->
        <div class="profile-section animate-on-scroll">
            <div class="profile-card">
                <div class="profile-header">
                    <div class="profile-image-container">
                        <img src="images/1.jpeg" alt="Smt Koneru Siva Kanchana Latha" class="profile-image">
                    </div>
                    <div class="profile-info">
                        <h2 class="profile-name">Smt KONERU SIVA KANCHANA LATHA</h2>
                        <h3 class="profile-title">Honorable Secretary</h3>
                        <p class="profile-intro">
                            Smt. Koneru Siva Kanchana Latha is a distinguished educationalist, social entrepreneur, and philanthropist 
                            dedicated to women's empowerment. Born in 1961 in Vijayawada, Andhra Pradesh, she has been instrumental 
                            in transforming educational landscapes and empowering communities across India.
                        </p>
                    </div>
                </div>

                <div class="content-sections">
                    <div class="content-section">
                        <h3 class="section-title">
                            <span class="section-icon">👩‍💼</span>
                            About the Secretary
                        </h3>
                        <p class="section-text">
                            She holds a Bachelor's degree in Home Science from St. Theresa Women's College and has held leadership roles 
                            in various educational institutions. She is married to Er. Koneru Satyanarayana, President of KLEF, and together 
                            they have founded several non-profit organizations focused on women's education and vocational training.
                            <br><br>
                            The couple has three children—Koneru Lakshmana Havish (Purdue University), Koneru Raja Harin (Northwestern University), 
                            and Koneru Nikhila Karthikeyan (Leeds University). Their contributions to education and philanthropy have earned 
                            them numerous awards, including the Rashtra Vibhushan, Rajiv Gandhi Shiromani, and Mahila Shiromani Awards.
                        </p>
                    </div>

                    <div class="content-section highlight-section">
                        <h3 class="section-title">
                            <span class="section-icon">🏭</span>
                            Women Technology Park Leadership
                        </h3>
                        <p class="section-text">
                            Smt. Kanchana Latha Koneru played a key role in establishing the Women Technology Park (2016–2021) at Vaddeswaram, 
                            supported by the Ministry of Science and Technology, Government of India. Her design interventions in Kondapalli 
                            and Etikkopaka toys significantly boosted production, benefiting local artisans. She personally supported training 
                            programs for women in rope making, food processing, bio-feed development, cotton weaving, and handloom saree printing.
                        </p>
                    </div>

                    <div class="content-section">
                        <h3 class="section-title">
                            <span class="section-icon">🌍</span>
                            Smart Village Revolution
                        </h3>
                        <p class="section-text">
                            Mrs. Kanchana Latha Koneru's contributions to the development of rural communities in Andhra Pradesh are truly remarkable. 
                            Her efforts to initiate the Smart Village Revolution as part of the Corporate Social Responsibility (CSR) program of 
                            KLEF have led to the transformation of about 90 villages into smart villages. Under her leadership, these villages 
                            have been able to overcome poverty and underdevelopment by adopting innovative solutions in healthcare, education, 
                            sanitation, and technology.
                        </p>
                    </div>

                    <div class="content-section">
                        <h3 class="section-title">
                            <span class="section-icon">🏆</span>
                            Awards and Recognition
                        </h3>
                        <div class="awards-grid">
                            <div class="award-item">
                                <div class="award-year">1999</div>
                                <div class="award-name">Bharat Jyothi Award</div>
                            </div>
                            <div class="award-item">
                                <div class="award-year">2021</div>
                                <div class="award-name">Uttama Mahila Award</div>
                            </div>
                            <div class="award-item">
                                <div class="award-year">2017-2019</div>
                                <div class="award-name">MHRD Swachhata Rankings</div>
                            </div>
                            <div class="award-item">
                                <div class="award-year">Ongoing</div>
                                <div class="award-name">AICTE Clean & Green Campus</div>
                            </div>
                        </div>
                    </div>

                    <div class="content-section highlight-section">
                        <h3 class="section-title">
                            <span class="section-icon">💼</span>
                            Corporate Leadership
                        </h3>
                        <p class="section-text">
                            Mrs. Kanchana Latha Koneru is an accomplished business leader serving as Director of multiple companies including 
                            Ind Aqua Ltd, Raja Harin Estates Pvt. Ltd, Surya Havish Estates Pvt. Ltd, Nikhila Estates Pvt. Ltd, 
                            Harniks Park Pvt. Ltd, Hyper Clinresea Pvt Ltd, Havish Transport Pvt. Ltd, and ACIC - KL Startups Foundation. 
                            Her diverse professional experience reflects her commitment to innovation and entrepreneurship.
                        </p>
                    </div>

                    <div class="content-section">
                        <h3 class="section-title">
                            <span class="section-icon">❤️</span>
                            Social Service & Charity
                        </h3>
                        <p class="section-text">
                            She adopted 8 villages and was instrumental in converting them into smart villages. She supported installation of 
                            drip irrigation projects to conserve water, installation of solar pump sets, providing solar inverters to avoid 
                            power cuts, establishing common computer training centres for village students' education, and providing hygienic 
                            drinking water. She has been feeding daily 200 old aged and needy people at her house for the last 7 years.
                        </p>
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
