<?php
// Admin Dashboard (admin.php)
require 'adminnavbar.php';

// You can add authentication here if necessary
?>

<?php
// Admin Dashboard (admin.php)
session_start();

// You can add authentication here if necessary
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        /* Internal CSS for Admin Dashboard */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            padding: 20px;
        }

        .dashboard {
            text-align: center;
            margin-top: 50px;
        }

        .buttons {
            margin-top: 20px;
        }

        button {
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="dashboard">
        <h1>Welcome to Admin Dashboard</h1>
        <div class="buttons">
            <button onclick="window.location.href='contactlist.php'">Contact Us</button>
            <button onclick="window.location.href='qna.php'">Q & A</button>
        </div>
    </div>

</body>
</html>
