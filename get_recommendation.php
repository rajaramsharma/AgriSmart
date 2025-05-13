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

$pH_value = isset($_GET["ph_value"]) ? floatval($_GET["ph_value"]) : null;
$response = "<p class='text-danger'>Invalid pH value.</p>";

if ($pH_value !== null) {
    $sql = "SELECT * FROM soil_health WHERE ph_min <= $pH_value AND ph_max >= $pH_value LIMIT 1";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $response = "
            <div class='soil-info'>
                <h4>pH Range: {$row["ph_min"]} - {$row["ph_max"]}</h4>
                <p><strong>Nitrogen Level:</strong> {$row["nitrogen"]}</p>
                <p><strong>Phosphorus Level:</strong> {$row["phosphorus"]}</p>
                <p><strong>Potassium Level:</strong> {$row["potassium"]}</p>
                <p><strong>Recommendation:</strong> {$row["recommendations"]}</p>
            </div>";
    } else {
        $response = "<p class='text-danger'>No recommendations found for this pH value.</p>";
    }
}

$conn->close();
echo $response;
?>
