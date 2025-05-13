<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecometrics";

// Connect to MySQL database
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch latest weather data
$sql = "SELECT * FROM weather_data ORDER BY timestamp DESC LIMIT 10";
$result = $conn->query($sql);

// Display results in HTML table
if ($result->num_rows > 0) {
    echo "<h2>📊 Weather Data</h2>";
    echo "<table border='1'>
            <tr>
                <th>City</th><th>Country</th><th>Temperature (°C)</th><th>Humidity (%)</th><th>Wind Speed (m/s)</th><th>Description</th><th>Timestamp</th>
            </tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['city']}</td>
                <td>{$row['country']}</td>
                <td>{$row['temperature']}</td>
                <td>{$row['humidity']}</td>
                <td>{$row['wind_speed']}</td>
                <td>{$row['weather_description']}</td>
                <td>{$row['timestamp']}</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "No data available.";
}

// Close connection
$conn->close();
?>
