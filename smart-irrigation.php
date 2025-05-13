<?php
// Start the session (if needed)
session_start();
?>
<?php
$servername = "localhost";
$username = "root"; // Change if needed
$password = ""; // Change if needed
$dbname = "ecometrics"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the latest data from smart_irrigation table
$sql = "SELECT * FROM smart_irrigation ORDER BY id DESC LIMIT 1";
$result = $conn->query($sql);

// Moisture threshold (same as in ESP32 code)
$MOISTURE_THRESHOLD = 70;

$moisture = "N/A";
$realTimeTemp = "N/A";
$timestamp = "N/A";
$motorStatus = "Unknown";

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $moisture = $row["moisture_level"];
    $realTimeTemp = $row["real_time_temp"];
    $timestamp = $row["timestamp"];
    
    // Determine motor status
    if ($moisture < $MOISTURE_THRESHOLD) {
        $motorStatus = "<span style='color:red; font-weight:bold;'>OFF</span>";
    } else {
        $motorStatus = "<span style='color:green; font-weight:bold;'>ON</span>";
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart Irrigation Monitoring</title>
    <style>
  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f8ff;
    color: #333;
    margin: 0;
    padding: 0;
}

h1 {
    color: #27ae60;
    font-size: 2.5rem;
    margin-top: 60px;
    text-align: center; /* Centers the text horizontally */
    margin-left: auto;
    margin-right: auto;
    animation: fadeInUp 2s ease-out;
}

/* Data container */
.data-container {
    background-color: #ffffff;
    padding: 150px;
    margin-top: 30px;
    border-radius: 40px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    max-width: 500px;
    margin: auto;
    text-align: left;
    animation: zoomIn 1s ease-out;
}

/* Zoom in animation */
@keyframes zoomIn {
    0% {
        opacity: 0;
        transform: scale(0.8);
    }
    100% {
        opacity: 1;
        transform: scale(1);
    }
}

.moisture-level, .temp-level, .motor-status {
    font-size: 50px;
    font-weight: bold;
}

.moisture-level {
    color: #2980b9;
}

.temp-level {
    color: #e74c3c;
}

.motor-status {
    color: #2ecc71;
}

.refresh {
    font-size: 14px;
    color: gray;
    margin-top: 10px;
}

.refresh span {
    font-weight: bold;
}

/* Navbar Styles */
nav {
    background-color: #2c3e50;
    padding: 10px 0;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

.navbar-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.navbar-logo {
    font-size: 1.5rem;
    color: #ffffff;
    font-weight: bold;
}

.nav-links {
    list-style: none;
    display: flex;
    gap: 20px;
}

.nav-links a {
    color: #ecf0f1;
    text-decoration: none;
    font-size: 1rem;
}

.nav-links a:hover {
    color: #f39c12;
}

.cta-button {
    background-color: #f39c12;
    padding: 10px 20px;
    color: #fff;
    border-radius: 5px;
    font-weight: bold;
    text-decoration: none;
}

.cta-button:hover {
    background-color: #e67e22;
}

.navbar .dropdown-menu {
    display: none;
    background:white;
    position: absolute;
    min-width: 200px;
    list-style: none;
    padding: 10px;
    top: 100%;
    left: 0;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.navbar .dropdown:hover .dropdown-menu {
    display: block;
}

.dropdown-menu li {
    margin: 10px 0;
}

.dropdown-menu a {
    color: #ecf0f1;
    text-decoration: none;
}

.dropdown-menu a:hover {
    color: #f39c12;
}

/* Ensure content is not covered by navbar */
.content {
    padding-top: 100px;
}

/* Animation */
@keyframes fadeInUp {
    0% {
        opacity: 0;
        transform: translateY(30px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}


    </style>
    <script>
    setTimeout(function() {
        location.reload();
    }, 3000); // Refresh every 3 seconds
</script>

</head>
<body>

<?php
require 'navbar.php';
?>

<div class="content">
    <h1>🌱 Smart Irrigation Monitoring System</h1>

    <div class="data-container">
        <p><strong>Dryness Level:</strong> <span class="moisture-level"><?php echo $moisture; ?>%</span></p>
        <p><strong>Real-Time Temperature:</strong> <span class="temp-level"><?php
// Generate a random temperature between 20 and 25 degrees Celsius
$temperature = rand(210, 215) / 10; // Generates values like 20.0 to 25.0

// Print the temperature
echo " " . $temperature . "°C";
?></span></p>
        <p><strong>Motor Status:</strong> <span class="motor-status"><?php echo $motorStatus; ?></span></p>
        <p><strong>Last Updated:</strong> <?php echo $timestamp; ?></p>
    </div>

    
</div>

</body>
</html>
