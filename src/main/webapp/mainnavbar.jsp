<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FemFlare 2025</title>
    
    <style>
        /* NAVBAR */
        .navbar {
            width: 100%;
            height: 70px;
            background-color: #000;
            position: fixed;
            top: 0;
            left: 0;
            padding: 10px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
            box-sizing: border-box;
        }

        /* Prevent content from overlapping the navbar */
        body {
            padding-top: 80px; /* Adjusted to prevent overlap */
            margin: 0;
        }

        /* Logo */
        .navbar .logo {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar .logo img {
            height: 50px;
            max-width: 150px;
            object-fit: contain;
        }

        /* Navigation Container */
        .nav-container {
            display: flex;
            align-items: center;
            position: relative;
        }

        /* Navigation Links */
        .nav-links {
            display: flex;
            align-items: center;
            gap: 30px;
            white-space: nowrap;
            max-width: 80vw;
            padding-bottom: 5px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            transition: color 0.3s ease-in-out;
            padding: 10px;
        }

        .nav-links a:hover {
            color: #ff1493;
        }

        /* Dropdown */
        .dropdown {
            position: relative;
            display: flex;
            align-items: center;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #000;
            min-width: 220px;
            top: 100%;
            left: 0;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }

        .dropdown-content a {
            color: white;
            padding: 10px;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #333;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Mobile Responsive */
        .menu-toggle {
            display: none;
            font-size: 2rem;
            color: white;
            cursor: pointer;
        }

        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                height: auto;
                padding: 15px;
                align-items: center;
                text-align: center;
            }

            .navbar .logo {
                justify-content: center;
            }

            .navbar .logo img {
                height: 40px;
                max-width: 120px;
            }

            .menu-toggle {
                display: block;
            }

            .nav-links {
                display: none;
                flex-direction: column;
                gap: 15px;
                width: 100%;
                max-height: 250px;
                overflow-y: auto;
                white-space: normal;
            }

            .nav-links.show {
                display: flex;
            }

            .dropdown-content {
                position: static;
                display: none;
                width: 100%;
                text-align: center;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }
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
