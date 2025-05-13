<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecometrics";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch the latest pH value
$sql = "SELECT ph_value FROM sensor_data ORDER BY timestamp DESC LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo json_encode(["ph_value" => $row["ph_value"]]);
} else {
    echo json_encode(["ph_value" => null]);
}

$conn->close();
?>
