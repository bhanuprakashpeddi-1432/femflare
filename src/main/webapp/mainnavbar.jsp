<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FemFlare 2025</title>
    
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
        }

        .navbar {
            width: 95%;
            height: 70px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            position: fixed;
            top: 15px;
            left: 50%;
            transform: translateX(-50%);
            padding: 10px 25px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            box-sizing: border-box;
            border-radius: 50px;
            box-shadow: 0 8px 32px rgba(251, 69, 112, 0.15);
            transition: all 0.3s ease;
            border: none;
            outline: none;
        }

        .navbar:hover {
            background: rgba(255, 255, 255, 0.15);
            box-shadow: 0 12px 40px rgba(251, 69, 112, 0.25);
            transform: translateX(-50%) translateY(-2px);
        }

        body {
            padding-top: 100px;
            margin: 0;
            font-family: 'Poppins', sans-serif;
        }

        .navbar .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            background: linear-gradient(135deg, var(--primary-white), var(--primary-cream));
            padding: 8px 15px;
            border-radius: 30px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .navbar .logo:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 20px rgba(251, 69, 112, 0.2);
        }

        .navbar .logo img {
            height: 35px;
            max-width: 120px;
            object-fit: contain;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .navbar .logo img:hover {
            transform: rotate(5deg);
        }

        .nav-container {
            display: flex;
            align-items: center;
            position: relative;
        }

        .nav-links {
            display: flex;
            align-items: center;
            gap: 5px;
            white-space: nowrap;
            padding: 8px;
            border-radius: 35px;
        }

        .nav-links a {
            color: var(--primary-white);
            text-decoration: none;
            font-size: 0.95rem;
            font-weight: 600;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            padding: 10px 18px;
            border-radius: 25px;
            position: relative;
            text-shadow: 0 1px 3px rgba(0,0,0,0.3);
            letter-spacing: 0.5px;
            border: none;
            outline: none;
        }

        .nav-links a:focus {
            outline: none;
            border: none;
        }

        .nav-links a:hover {
            background: linear-gradient(135deg, var(--primary-fuchsia), var(--primary-hot-pink));
            color: var(--primary-white);
            transform: translateY(-3px) scale(1.05);
            box-shadow: 0 8px 25px rgba(251, 69, 112, 0.4);
            text-shadow: none;
        }

        .nav-links a:active {
            transform: translateY(-1px) scale(1.02);
        }

        .dropdown {
            position: relative;
            display: flex;
            align-items: center;
        }

        .dropdown > a {
            position: relative;
        }

        .dropdown > a::after {
            content: '▼';
            font-size: 0.7rem;
            margin-left: 6px;
            transition: all 0.3s ease;
        }

        .dropdown:hover > a::after {
            transform: rotate(180deg);
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            min-width: 280px;
            top: 120%;
            left: 50%;
            transform: translateX(-50%);
            box-shadow: 0 15px 35px rgba(251, 69, 112, 0.2);
            z-index: 1000;
            border-radius: 20px;
            border: 1px solid rgba(251, 69, 112, 0.2);
            overflow: hidden;
            opacity: 0;
            transition: all 0.3s ease;
        }

        .dropdown-content a {
            color: var(--text-dark) !important;
            padding: 15px 25px !important;
            display: block;
            text-align: left;
            font-weight: 500 !important;
            font-size: 0.9rem !important;
            transition: all 0.3s ease;
            border-bottom: 1px solid rgba(251, 141, 160, 0.1);
            text-shadow: none !important;
        }

        .dropdown-content a:last-child {
            border-bottom: none;
        }

        .dropdown-content a:hover {
            background: linear-gradient(135deg, var(--primary-pink), var(--primary-hot-pink)) !important;
            color: var(--primary-white) !important;
            transform: translateX(8px) !important;
            box-shadow: none !important;
        }

        .dropdown:hover .dropdown-content {
            display: block;
            opacity: 1;
            animation: dropdownSlide 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        }

        @keyframes dropdownSlide {
            from {
                opacity: 0;
                transform: translateX(-50%) translateY(-15px) scale(0.95);
            }
            to {
                opacity: 1;
                transform: translateX(-50%) translateY(0) scale(1);
            }
        }

        .menu-toggle {
            display: none;
            font-size: 1.8rem;
            color: var(--primary-white);
            cursor: pointer;
            background: rgba(255, 255, 255, 0.1);
            padding: 8px 12px;
            border-radius: 15px;
            transition: all 0.3s ease;
            border: none;
            outline: none;
        }

        .menu-toggle:focus {
            outline: none;
            border: none;
        }

        .menu-toggle:hover {
            background: var(--primary-fuchsia);
            transform: scale(1.1);
        }

        @media (max-width: 768px) {
            .navbar {
                width: 90%;
                height: auto;
                min-height: 60px;
                padding: 15px 20px;
                border-radius: 25px;
                flex-direction: column;
                gap: 15px;
            }

            .navbar .logo {
                order: 1;
                padding: 6px 12px;
            }

            .navbar .logo img {
                height: 30px;
                max-width: 100px;
            }

            .menu-toggle {
                display: block;
                order: 2;
                position: absolute;
                right: 20px;
                top: 15px;
            }

            .nav-container {
                order: 3;
                width: 100%;
            }

            .nav-links {
                display: none;
                flex-direction: column;
                gap: 8px;
                width: 100%;
                background: rgba(255, 255, 255, 0.05);
                padding: 15px;
                border-radius: 20px;
                margin-top: 10px;
            }

            .nav-links.show {
                display: flex;
                animation: mobileSlideDown 0.4s ease;
            }

            .nav-links a {
                text-align: center;
                width: 100%;
                padding: 12px;
                margin: 0;
            }

            .dropdown-content {
                position: static;
                display: none;
                width: 100%;
                background: rgba(255, 255, 255, 0.1);
                border-radius: 15px;
                margin-top: 8px;
                transform: none;
                left: 0;
            }

            .dropdown:hover .dropdown-content {
                display: block;
                opacity: 1;
                animation: none;
            }

            .dropdown-content a {
                text-align: center !important;
                transform: none !important;
            }
        }

        @keyframes mobileSlideDown {
            from {
                opacity: 0;
                max-height: 0;
            }
            to {
                opacity: 1;
                max-height: 500px;
            }
        }

        .navbar::before {
            content: '';
            position: absolute;
            top: -2px;
            left: -2px;
            right: -2px;
            bottom: -2px;
            background: linear-gradient(45deg, var(--primary-fuchsia), var(--primary-hot-pink), var(--primary-pink));
            border-radius: 52px;
            z-index: -1;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .navbar:hover::before {
            opacity: 0.3;
        }
    </style>

</head>
<body>

    <!-- NAVBAR -->
    <nav class="navbar">
        <div class="logo">
            <img src="images/kl_logo.png" alt="Logo">
            <img src="images/klh.png" alt="KLH Logo">
        </div>
        <div class="menu-toggle" onclick="toggleMenu()">☰</div>
        <div class="nav-container">
            <div class="nav-links">
                <a href="home.jsp"><b>Home</b></a>
                <a href="about.jsp"><b>About</b></a>
                <a href="ourvisionaries.jsp"><b>Our Visionaries</b></a>
                <a href="gallery.jsp"><b>Gallery</b></a>
                <a href="stulogin.jsp"><b>Events</b></a>
                <!-- Dropdown for Committee -->
                <div class="dropdown">
                    <a href="#"><b>Committee</b></a>
                    <div class="dropdown-content">
                        <a href="chiefpatrons.jsp">Chief Patrons</a>
                        <a href="patronsandadvisors.jsp">Patrons & Advisors</a>
                        <a href="chiefcoordinators.jsp">Chief Co-ordinators</a>
                        <a href="chairpersonsandconvenors.jsp">Chairperson, Conveners</a>
                        <a href="committee.jsp">Co-Conveners & Organizing Committee</a>
                        <a href="studentchiefs.jsp">Chief Student Coordinators</a>
                    </div>
                </div>

                <a href="sreg"><b>Register</b></a>
            </div>
        </div>
    </nav>

    <script>
        function toggleMenu() {
            document.querySelector(".nav-links").classList.toggle("show");
        }
    </script>

</body>
</html>
