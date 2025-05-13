<?php
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Agri Smart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('https://source.unsplash.com/1600x900/?iot,agriculture,smart-farming') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 16px;
            padding-top: 70px;
            font-weight: bold;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
            position: relative;
            background-attachment: fixed;
            padding-bottom: 100px; /* Ensures space for the footer */
        }
        .banner {
            background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url('https://source.unsplash.com/1600x900/?iot,agriculture,smart-farming') no-repeat center center/cover;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        .content-section {
            padding: 100px 0;
            background-color: rgb(255, 255, 255); /* Changed to white background */
            width: 90vw;
            color: white;
            padding-top: 400px;
        }

        /* Footer styles */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 16px;
        }

        footer a {
            color: #fff;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        h2, h3 {
            color: #4CAF50;
        }

        p {
            line-height: 1.6;
        }

        /* Update: Change paragraph color to black */
        .mission-section p, .technology-section p {
            color: black;
        }

        .mission-section, .technology-section {
            display: flex;
            align-items: center;
            margin-bottom: 50px;
        }

        /* Zigzag effect */
        .mission-section:nth-child(even), .technology-section:nth-child(even) {
            flex-direction: row-reverse;
        }

        .mission-section img, .technology-section img {
            width: 300px;
            height: auto;
            margin-left: 20px;
            margin-right: 20px;
            border-radius: 10px;
        }

        .mission-text, .technology-text {
            flex: 1;
            margin-left: 20px;
            margin-right: 20px;
        }

        /* Tech-inspired details (optional: add these effects if needed) */
        .tech-lines {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            pointer-events: none;
            background: url('https://www.transparenttextures.com/patterns/connected-lines.png') repeat;
            opacity: 0.2;
        }
    </style>
</head>
<body>
<?php require 'navbar.php'; ?>
    <!-- Optional: Tech lines background effect -->
    <div class="tech-lines"></div>

    <div class="container content-section">
        <section class="mission-section">
            <div class="mission-text">
                <h2>Our Mission</h2>
                <p>Agri Smart is dedicated to transforming agriculture by integrating technology-driven solutions to enhance farming practices. Through AI, IoT, and data analytics, we empower farmers with smarter tools for making informed decisions, optimizing crop yield, and ensuring sustainable and efficient farming. Our mission is to support farmers with tailored crop and fertilizer recommendations, real-time soil health analysis, and waste management solutions, while promoting eco-friendly practices for a greener future.</p>
            </div>
            <img src="mission.png" alt="Our Mission">
        </section>
        <section class="technology-section">
            <div class="technology-text">
                <h3>Our Technology and Solutions</h3>
                
                <p>At Agri Smart, we leverage cutting-edge technologies to revolutionize agriculture. Our platform provides various solutions like personalized crop recommendations based on environmental conditions, precision-based fertilizer suggestions for higher yield and sustainability, and continuous soil health monitoring for making data-driven decisions. We also offer an efficient waste management system to minimize environmental impact and a weather forecasting system that helps farmers plan better with rain predictions and optimal water usage. Additionally, we keep farmers updated with the latest agricultural trends and industry news to help them stay ahead.</p>
            </div>
            <img src="technology.png" alt="Our Technology and Solutions">
        </section>
    </div>

   

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 <!-- Footer -->
 <footer>
        <p>&copy; 2025 Agri Smart | <a href="privacy-policy.php">Privacy Policy</a> | <a href="terms-of-service.php">Terms of Service</a></p>
    </footer>