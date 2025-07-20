<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FemFlare 2025 Countdown</title>
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
        
        body {
            margin: 0;
            background: linear-gradient(135deg, var(--primary-cream) 0%, var(--primary-pink) 50%, var(--primary-hot-pink) 100%);
            background-attachment: fixed;
            font-family: 'Poppins', sans-serif;
            text-align: center;
            height: 100vh;
            overflow: hidden;
        }

        nav {
            width: 100%;
            background: linear-gradient(135deg, var(--primary-fuchsia), var(--primary-hot-pink));
            backdrop-filter: blur(10px);
            padding: 20px;
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: 600;
            color: var(--primary-white);
            z-index: 10;
            box-shadow: 0 5px 20px rgba(251, 69, 112, 0.3);
        }

        .container {
            height: 100vh;
            padding-top: 80px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
        }

        .title {
            font-size: 6vw;
            font-weight: 800;
            background: linear-gradient(45deg, var(--primary-fuchsia), var(--primary-hot-pink), var(--primary-pink), var(--primary-white));
            background-size: 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 40px;
            margin-top: 20px;
            animation: gradientShift 4s ease infinite;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .countdown {
            display: flex;
            justify-content: center;
            gap: 40px;
            flex-wrap: wrap;
            max-width: 90vw;
        }

        .time-box {
            background: linear-gradient(135deg, var(--primary-white), var(--primary-cream));
            border: 3px solid var(--primary-fuchsia);
            padding: 30px 35px;
            border-radius: 20px;
            text-align: center;
            color: var(--primary-fuchsia);
            font-size: 4vw;
            font-weight: 700;
            min-width: 120px;
            position: relative;
            box-shadow: 0 10px 30px rgba(251, 69, 112, 0.2);
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
        }

        .time-box:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 15px 35px rgba(251, 69, 112, 0.3);
            border-color: var(--primary-hot-pink);
        }

        .label {
            font-size: 1rem;
            color: var(--text-light);
            margin-top: 10px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        canvas {
            display: block;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

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
        const numParticles = 25;

        class Particle {
            constructor() {
                this.x = Math.random() * canvas.width;
                this.y = Math.random() * canvas.height;
                this.size = Math.random() * 15 + 10;
                this.color = this.getRandomPetalColor();
                this.speedX = (Math.random() - 0.5) * 1.5;
                this.speedY = Math.random() * 2 + 1;
                this.rotation = Math.random() * 360;
                this.rotationSpeed = (Math.random() - 0.5) * 4;
                this.opacity = Math.random() * 0.7 + 0.3;
            }

            getRandomPetalColor() {
                const colors = [
                    '#fb8da0', // primary-pink
                    '#fb6b90', // primary-hot-pink
                    '#fb4570', // primary-fuchsia
                    '#ffb3c1', // light pink
                    '#ff91a4'  // medium pink
                ];
                return colors[Math.floor(Math.random() * colors.length)];
            }

            move() {
                this.x += this.speedX;
                this.y += this.speedY;
                this.rotation += this.rotationSpeed;
                
                // Reset particle when it goes off screen
                if (this.y > canvas.height + this.size) {
                    this.y = -this.size;
                    this.x = Math.random() * canvas.width;
                }
                if (this.x < -this.size || this.x > canvas.width + this.size) {
                    this.x = Math.random() * canvas.width;
                    this.y = -this.size;
                }
            }

            drawPetal() {
                ctx.save();
                ctx.translate(this.x, this.y);
                ctx.rotate(this.rotation * Math.PI / 180);
                ctx.globalAlpha = this.opacity;
                
                // Create rose petal shape
                ctx.fillStyle = this.color;
                ctx.beginPath();
                
                // Petal shape using bezier curves
                const size = this.size;
                ctx.moveTo(0, -size/2);
                ctx.bezierCurveTo(-size/3, -size/2, -size/2, -size/4, -size/3, 0);
                ctx.bezierCurveTo(-size/2, size/4, -size/4, size/2, 0, size/3);
                ctx.bezierCurveTo(size/4, size/2, size/2, size/4, size/3, 0);
                ctx.bezierCurveTo(size/2, -size/4, size/3, -size/2, 0, -size/2);
                ctx.closePath();
                ctx.fill();
                
                // Add gradient effect
                const gradient = ctx.createRadialGradient(0, 0, 0, 0, 0, size/2);
                gradient.addColorStop(0, this.color + '80');
                gradient.addColorStop(1, this.color + '20');
                ctx.fillStyle = gradient;
                ctx.fill();
                
                // Add petal details
                ctx.strokeStyle = this.color;
                ctx.lineWidth = 1;
                ctx.globalAlpha = this.opacity * 0.5;
                ctx.beginPath();
                ctx.moveTo(0, -size/3);
                ctx.quadraticCurveTo(0, 0, 0, size/4);
                ctx.stroke();
                
                ctx.restore();
            }

            draw() {
                this.drawPetal();
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
            const eventDate = new Date("December 12, 2025 00:00:00").getTime();
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
