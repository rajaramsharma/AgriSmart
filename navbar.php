<?php

$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            font-family: Arial, sans-serif;
            height: 100%;
            margin: 0;
            background-color: #f5f5f5;
        }

        /* Navbar */
        .navbar {
            background: rgba(0, 128, 0, 0.8);
            backdrop-filter: blur(10px);
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .nav-links li {
            position: relative;
        }

        .nav-links a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            padding: 10px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            background-color: #1b5e20;
            border-radius: 5px;
        }

        /* Dropdown Menu */
        .dropdown-menu {
            display: none;
            position: absolute;
            background: white;
            color: black;
            list-style: none;
            padding: 10px;
            min-width: 150px;
            top: 100%;
            left: 0;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }

        .dropdown-menu li a {
            color: black;
            display: block;
            padding: 8px;
        }

        .dropdown-menu li a:hover {
            background: #e8f5e9;
        }

        /* User Dropdown */
        .user-dropdown {
            position: relative;
        }

        .user-dropdown button {
            background: rgb(197, 79, 79);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .user-dropdown button img {
            width: 20px;
            height: 20px;
            object-fit: cover;
        }

        .user-dropdown .dropdown-menu {
            position: absolute;
            right: 0;
            top: 40px;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
            display: none;
            z-index: 1000;
        }

        .user-dropdown:hover .dropdown-menu {
            display: block;
        }

        .user-dropdown .dropdown-menu a {
            display: block;
            padding: 10px 20px;
            text-decoration: none;
            color: #333;
            font-size: 14px;
            border-bottom: 1px solid #f4f4f9;
        }

        .user-dropdown .dropdown-menu a:hover {
            background: #f4f4f9;
        }

        /* Mobile Menu */
        .menu-toggle {
            font-size: 28px;
            display: none;
            cursor: pointer;
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
                flex-direction: column;
                position: absolute;
                top: 60px;
                left: 0;
                width: 100%;
                background: #2e7d32;
            }

            .nav-links.show {
                display: flex;
            }

            .nav-links li {
                text-align: center;
                padding: 10px 0;
            }

            .menu-toggle {
                display: block;
            }
        }
    </style>
</head>
<body>

<nav class="navbar">
    <div class="logo">AgriSmart</div>
    <div class="menu-toggle">☰</div>
    <ul class="nav-links">
        <li><a href="dashboard.php">Home</a></li>
        <li><a href="aboutus.php">About</a></li>
        <li class="dropdown">
            <a href="#">Services ▼</a>
            <ul class="dropdown-menu">
                <li><a href="soil_health.php">Soil Analysis</a></li>
                <li><a href="waste-mgt.php">Waste Management</a></li>
                <li><a href="smart-irrigation.php">Smart Irrigation</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#">Recommendations ▼</a>
            <ul class="dropdown-menu">
                <li><a href="crop_recommendation.php">Crop</a></li>
                <li><a href="fertilizer_recommendation.php">Fertilizer</a></li>
            </ul>
        </li>
        <li><a href="newspaper.php">Newspaper</a></li>
        <li class="dropdown">
            <a href="#">Weather ▼</a>
            <ul class="dropdown-menu">
                <li><a href="fetch_weather.php">Weather Forecast</a></li>
                <li><a href="rainfall_prediction.php">Rain Prediction</a></li>
            </ul>
        </li>
        <li><a href="contactus.php">Contact</a></li>
        <li class="user-dropdown">
            <button>
                <?php echo htmlspecialchars($username); ?>
                <img src="user-icon.jpg" alt="User Icon">
            </button>
            <div class="dropdown-menu">
                <a href="dashboard.php">Dashboard</a>
              
                <a href="logout.php">Logout</a>
            </div>
        </li>
    </ul>
</nav>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Toggle mobile menu
        document.querySelector(".menu-toggle").addEventListener("click", function () {
            document.querySelector(".nav-links").classList.toggle("show");
        });

        // Dropdown functionality
        document.querySelectorAll(".dropdown > a").forEach((dropdown) => {
            dropdown.addEventListener("click", function (e) {
                e.preventDefault();
                let menu = this.nextElementSibling;
                if (menu.style.display === "block") {
                    menu.style.display = "none";
                } else {
                    document.querySelectorAll(".dropdown-menu").forEach(m => m.style.display = "none");
                    menu.style.display = "block";
                }
            });
        });

        // Hide dropdowns when clicking outside
        document.addEventListener("click", function (e) {
            if (!e.target.closest(".dropdown")) {
                document.querySelectorAll(".dropdown-menu").forEach(menu => menu.style.display = "none");
            }
        });
    });
</script>

</body>
</html>
