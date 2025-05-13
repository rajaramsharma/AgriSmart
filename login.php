<?php
session_start(); // Start the session
if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
    header("Location: dashboard.php");
    exit();
}
// Include database connection
include('db.php');

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Check if admin login
    if ($username === "admin" && $password === "admin") {
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = "admin";
        header("Location: admin.php");
        exit();
    }

    // Prepare and execute query to check user credentials
    $stmt = $pdo->prepare("SELECT * FROM users WHERE username = :username");
    $stmt->execute(['username' => $username]);
    $user = $stmt->fetch();

    // Check if user exists and verify password
    if ($user && password_verify($password, $user['password'])) {
        // Set session variables
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $username;

        // Redirect to the dashboard
        header("Location: dashboard.php");
        exit();
    } else {
        $error = "Invalid username or password!";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Sustainability & Climate Change</title>

    <style>
        /* Background Image */
        body {
            background: url('background.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        /* Login Container */
        .login-container {
            background: rgba(255, 255, 255, 0.8); /* Slight transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 300px;
        }

        h2 {
            color: #2c3e50;
        }

        /* Form Styles */
        label {
            display: block;
            margin-top: 10px;
            color: #333;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            background-color: #27ae60;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            margin-top: 15px;
            cursor: pointer;
        }

        button:hover {
            background-color: #219150;
        }

        /* Signup Link */
        p {
            margin-top: 15px;
            font-size: 14px;
        }

        a {
            color: #2980b9;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        
        <?php if (isset($error)) { echo "<p style='color: red;'>$error</p>"; } ?>
        
        <form method="POST" action="">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Login</button>
        </form>
        
        <p>Don't have an account? <a href="signup.php">Sign up here</a></p>
    </div>
</body>
</html>
