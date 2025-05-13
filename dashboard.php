<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    // Redirect to the login page
    header("Location: login.php");
    exit();
}

// Display user dashboard
$username = $_SESSION['username'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgriSmart</title>
    
    <style>
        /* Global styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        html, body {
            font-family: Arial, sans-serif;
            height: 100%;
            margin: 0;
            background-color: #f5f5f5; /* Light gray background */
        }
        
        /* Banner */
        .banner {
            background: rgba(0, 128, 0, 0.9); /* Semi-transparent green */
            color: white;
            text-align: center;
            padding: 15px;
            font-weight: bold;
            font-size: 1.2rem;
            position: relative;
            margin-top: 60px; /* Adjust based on navbar height */
            width: 100%;
            z-index: 10;
        }

        /* Hero Section */
        .hero-section {
            background: url('images.jpg') no-repeat center center;
            background-size: cover;
            height: 78vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 2rem;
            font-weight: bold;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
            position: relative;
            background-attachment: fixed;
        }

        /* Features Section */
        .features {
            text-align: center;
            padding: 40px;
            background: rgba(255, 255, 255, 0.8); /* Semi-transparent white */
            backdrop-filter: blur(5px);
            border-radius: 10px;
            box-shadow: none;
        }

        .features .col-md-3 {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(5px);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: 0.3s;
        }

        .features .col-md-3:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        /* Footer */
        footer {
            background: rgba(34, 34, 34, 0.8); /* Semi-transparent dark footer */
            color: white;
            text-align: center;
            padding: 15px;
            position: relative;
            bottom: 0;
            width: 100%;
            backdrop-filter: blur(10px);
        }

        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .login-form {
            text-align: center;
            margin-top: 20px;
        }

        .login-form input {
            padding: 10px;
            margin: 5px;
            font-size: 16px;
        }

        .login-form button {
            padding: 10px;
            background-color: #27ae60;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }

        .login-form button:hover {
            background-color: #219150;
        }
    </style>
</head>
<body>
    <?php
      require 'navbar.php';
    ?>

    <!-- Banner -->
    <div class="banner">
        Welcome to AgriSmart - Smart Solutions for Sustainable Farming
    </div>

    <!-- Hero Section -->
    <div class="hero-section">
        Transforming Agriculture with Smart Technology
    </div>

    <!-- Login Form (for demo purposes) -->
    <div class="login-form">
        <?php if ($username == 'Guest') { ?>
            <form action="" method="POST">
                <input type="text" name="user_name" placeholder="Enter your name" required>
                <button type="submit" name="login">Login</button>
            </form>
        <?php } else { ?>
           
        <?php } ?>
    </div>

    <!-- Footer -->
    <footer>
        &copy; <?php echo date("Y"); ?> AGRISMART. All Rights Reserved.
    </footer>

</body>
</html>
