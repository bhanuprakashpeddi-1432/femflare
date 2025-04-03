<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FemFlare - Celebration of Womanhood</title>
    <style>
        /* Girly Theme */
        body {
            background: linear-gradient(to right, #ffdde1, #ee9ca7);
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        /* Container */
        .container {
            max-width: 80%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Heading */
        h1 {
            color: #d63384;
            font-size: 2.8em;
            text-shadow: 2px 2px #ffafcc;
        }

        /* Content Box */
        .content-box {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background: #fff;
            padding: 20px;
            margin: 20px 0;
            border-radius: 10px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
        }

        /* Alternate Left-Right Layout */
        .content-box:nth-child(even) {
            flex-direction: row-reverse;
        }

        /* Text */
        .text {
            width: 55%;
            font-size: 1.2em;
            text-align: justify;
            color: #333;
            padding: 10px;
        }

        /* Image */
        .image {
            width: 40%;
            padding: 10px;
        }

        .image img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.2);
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .content-box {
                flex-direction: column !important;
                text-align: center;
            }

            .text, .image {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
    <div class="container">
        <h1>ABOUT US</h1>

        <div class="content-box">
            <div class="text">
                <h2>FemFlare - Celebration of Womanhood </h2>
                <p>FemFlare is more than just a festival, it’s a movement! Under this year’s theme, AccelerateAction, we bring together diverse women from across the globe to drive change, showcase talents, and build lasting connections. This two-day extravaganza is designed to empower women through dynamic workshops, thought-provoking talks, and inspiring exhibitions, fostering leadership and innovation. Hear success stories of trailblazing women who have shattered barriers and turned aspirations into reality. Engage with experts in business, technology, arts, and social justice, and stand a chance to win ₹1 lakh in prize money. Join us as we take bold steps toward a more inclusive and equitable future - because together, we don’t just dream of change, we AccelerateAction!</p>
            </div>
            <div class="image">
                <img src="images/logo.png" alt="FemFlare Festival">
            </div>
        </div>

        <div class="content-box">
            <div class="text">
                <h2>K L University </h2>
                <p>K L University shines in the prestigious NIRF 2023 Rankings, securing impressive positions across multiple categories. Ranked #28 in Universities, #44 in Engineering, #52 in Management, and #50 Overall, this accomplishment highlights our dedication to academic excellence and holistic development.</p>
            </div>
            <div class="image">
                <img src="images/kl_logo.png" alt="KL University Rankings">
            </div>
        </div>

        <div class="content-box">
            <div class="text">
                <h2>Women Development Cell (WDC)</h2>
                <p>The Women Development Cell (WDC) at KLEF promotes gender equality through education, advocacy, and skill-building initiatives. Our mission includes creating a safe environment for women to thrive, offering awareness programs on women's rights, and conducting gender sensitization activities on campus. We strive to address gender discrimination, prevent sexual harassment, and ensure equitable opportunities for all genders within the university community.</p>
            </div>
            <div class="image">
                <img src="images/womens_logo.png" alt="Women Development Cell">
            </div>
        </div>

    </div>
</body>
</html>