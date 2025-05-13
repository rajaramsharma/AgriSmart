<?php
// Start the session (if needed)
session_start();

// Database Connection
$servername = "localhost";
$username = "root";  // Change according to your database
$password = "";       // Change according to your database
$dbname = "ecometrics";  // Change to your actual database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check Connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch the last value of dust1
$sql = "SELECT dust1 FROM waste_mgt ORDER BY id DESC LIMIT 1";
$result = $conn->query($sql);

$dust1_value = 0; // Default value

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $dust1_value = $row["dust1"];
}

// Fetch all dustbin values
$sql_all = "SELECT * FROM waste_mgt ORDER BY id DESC LIMIT 1";
$result_all = $conn->query($sql_all);

$dustbins = []; // Store dustbin statuses

if ($result_all->num_rows > 0) {
    $row = $result_all->fetch_assoc();
    
    // Store dustbin values in an array
    for ($i = 1; $i <= 10; $i++) {
        $dustbins["Dustbin $i"] = $row["dust$i"];
    }
}

// Close connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="5">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Dustbins Status</title>
    <style>
       body {
           text-align: center;
           font-family: 'Verdana', sans-serif;
           background-color: rgb(142, 184, 97);
           margin: 0;
           padding: 0;
           padding-top: 80px;
       }

       h2 {
           margin-top: 10px;
           font-size: 36px;
           color: #2d6a4f;
           font-weight: bold;
           text-transform: uppercase;
           letter-spacing: 2px;
           animation: slideIn 1s ease-out, fadeIn 2s ease-in-out;
       }

       @keyframes slideIn {
           from {
               transform: translateX(-100%);
               opacity: 0;
           }
           to {
               transform: translateX(0);
               opacity: 1;
           }
       }

       @keyframes fadeIn {
           0% {
               opacity: 0;
           }
           100% {
               opacity: 1;
           }
       }

       .container {
           display: grid;
           grid-template-columns: repeat(5, 1fr);
           gap: 40px;
           justify-content: center;
           padding: 40px;
           margin-top: 50px;
       }

       .dustbin {
           width: 250px;
           height: 305px;
           background-size: cover;
           position: relative;
           text-align: center;
           font-weight: bold;
           border-radius: 30px;
           box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
           transition: transform 0.3s ease, box-shadow 0.3s ease;
       }

       .dustbin:hover {
           transform: scale(1.05);
           box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
       }

       .dustbin.full {
           animation: pulse 1.5s infinite alternate;
       }

       @keyframes pulse {
           0% {
               transform: scale(1);
           }
           50% {
               transform: scale(1.05);
           }
           100% {
               transform: scale(1);
           }
       }

       .label {
           position: absolute;
           bottom: -20px;
           left: 0;
           width: 100%;
           text-align: center;
           font-size: 16px;
           font-weight: bold;
           color: #fff;
           background: rgba(0, 0, 0, 0.6);
           border-radius: 5px;
           padding: 5px 0;
       }
    </style>
</head>
<body>

<?php require 'navbar.php'; ?>

<h2>Waste Management System</h2>


<div class="container">
    <?php foreach ($dustbins as $dustbinName => $status): ?>
        <div class="dustbin <?php echo $status ? 'full' : ''; ?>" 
             style="background-image: url('<?php echo $status ? 'empty.webp' : 'full.png'; ?>');">
            <span class="label"><?php echo $dustbinName; ?></span>
        </div>
    <?php endforeach; ?>
</div>

</body>
</html>
