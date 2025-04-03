<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FemFlare 2025 Countdown</title>
    <style>
        body {
            margin: 0;
            background: #FFC0CB;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        /* Navbar */
        nav {
            width: 100%;
            background: rgba(255, 20, 147, 0.8);
            padding: 15px;
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: bold;
            color: white;
            z-index: 10;
        }

        /* Main Content Wrapper */
        .container {
            min-height: 150vh; /* Ensures page is scrollable */
            padding-top: 100px;
        }

        /* Main title */
        .title {
            font-size: 7vw;
            font-weight: bold;
            background: linear-gradient(45deg, #E0115F, #ff914d, #00C8FF, #DA70D6);
            background-size: 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-top: 80px;
            animation: gradientShift 5s ease infinite;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* COUNTDOWN */
        .countdown {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }

        .time-box {
            background: linear-gradient(135deg, #ff8a00, #e52e71);
            padding: 40px 50px;
            border-radius: 15px;
            text-align: center;
            color: #fff;
            font-size: 6vw;
            font-weight: bold;
            min-width: 120px;
            position: relative;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out;
        }

        .time-box:hover {
            transform: scale(1.1);
        }

        .label {
            font-size: 1.5vw;
            color: #fff;
            margin-top: 10px;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Background Particles */
        canvas {
            display: block;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        /* RESPONSIVE DESIGN */
        @media (max-width: 600px) {
            .countdown {
                flex-direction: column;
                gap: 15px;
            }

            .time-box {
                font-size: 12vw;
                min-width: 100px;
                padding: 30px;
            }

            .label {
                font-size: 4vw;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <%@ include file="mainnavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="container">
        <div class="title">FEMFLARE 2025</div>

        <div class="countdown">
            <div class="time-box">
                <div class="time" id="days">00</div>
                <div class="label">Days</div>
            </div>
            <div class="time-box">
                <div class="time" id="hours">00</div>
                <div class="label">Hours</div>
            </div>
            <div class="time-box">
                <div class="time" id="minutes">00</div>
                <div class="label">Minutes</div>
            </div>
            <div class="time-box">
                <div class="time" id="seconds">00</div>
                <div class="label">Seconds</div>
            </div>
        </div>
    </div>

    <!-- Background Particles -->
    <canvas id="particlesCanvas"></canvas>

    <script>
        const canvas = document.getElementById("particlesCanvas");
        const ctx = canvas.getContext("2d");
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;

        const particles = [];
        const numParticles = 30;

        class Particle {
            constructor() {
                this.x = Math.random() * canvas.width;
                this.y = Math.random() * canvas.height;
                this.radius = Math.random() * 4 + 2;
                this.color = Math.random() > 0.5 ? "#ff3b88" : "#00c8ff";
                this.speedX = (Math.random() - 0.5) * 2;
                this.speedY = (Math.random() - 0.5) * 2;
            }

            move() {
                this.x += this.speedX;
                this.y += this.speedY;
                if (this.x < 0 || this.x > canvas.width) this.speedX *= -1;
                if (this.y < 0 || this.y > canvas.height) this.speedY *= -1;
            }

            draw() {
                ctx.shadowBlur = 10;
                ctx.shadowColor = this.color;
                ctx.fillStyle = this.color;
                ctx.beginPath();
                ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
                ctx.fill();
            }
        }

        function init() {
            for (let i = 0; i < numParticles; i++) {
                particles.push(new Particle());
            }
        }

        function animate() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            particles.forEach(p => {
                p.move();
                p.draw();
            });
            requestAnimationFrame(animate);
        }

        window.addEventListener("resize", () => {
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;
        });

        init();
        animate();

        // Countdown Timer Logic
        function updateCountdown() {
            const eventDate = new Date("April 12, 2025 00:00:00").getTime();
            const now = new Date().getTime();
            const timeLeft = eventDate - now;

            if (timeLeft > 0) {
                const days = Math.floor(timeLeft / (1000 * 60 * 60 * 24));
                const hours = Math.floor((timeLeft % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutes = Math.floor((timeLeft % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((timeLeft % (1000 * 60)) / 1000);

                document.getElementById("days").innerText = days;
                document.getElementById("hours").innerText = hours;
                document.getElementById("minutes").innerText = minutes;
                document.getElementById("seconds").innerText = seconds;
            }
        }

        setInterval(updateCountdown, 1000);
        updateCountdown();
    </script>
</body>
</html>
