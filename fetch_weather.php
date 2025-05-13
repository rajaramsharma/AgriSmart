<?php
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<?php  
// Include navbar
require 'navbar.php';

// Database connection details
$servername = "localhost";
$username = "root"; // Change if needed
$password = ""; // Change if needed
$dbname = "ecometrics"; 

// OpenWeatherMap API Key
$apiKey = "33d34fbf01f15ee8006a39e37cb7222b"; // Replace with your OpenWeatherMap API key

// Get city from URL parameter (e.g., ?city=Kathmandu)
$city = isset($_GET['city']) ? $_GET['city'] : 'Kathmandu'; // Default to Kathmandu if no city is provided

// OpenWeatherMap API URL
$apiUrl = "https://api.openweathermap.org/data/2.5/weather?q={$city}&appid={$apiKey}&units=metric";

// Fetch weather data from OpenWeatherMap API
$response = file_get_contents($apiUrl);

// Check if API request was successful
if ($response === FALSE) {
    echo "⚠️ Failed to fetch weather data. Please check the API URL or your API key.";
    exit;
}

$weatherData = json_decode($response, true);

// Check if the weather data contains valid information
if (isset($weatherData['cod']) && $weatherData['cod'] == 200) {
    // Extract weather details
    $city = $weatherData['name'];
    $country = $weatherData['sys']['country'];
    $temperature = $weatherData['main']['temp'];
    $humidity = $weatherData['main']['humidity'];
    $wind_speed = $weatherData['wind']['speed'];
    $weather_desc = $weatherData['weather'][0]['description'];

    // Display the weather information
    $weather_info = "<h2>Weather for {$city}, {$country}</h2>";
    $weather_info .= "Temperature: {$temperature}°C<br>";
    $weather_info .= "Humidity: {$humidity}%<br>";
    $weather_info .= "Wind Speed: {$wind_speed} m/s<br>";
    $weather_info .= "Weather: {$weather_desc}<br>";

    // Connect to MySQL database
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Database connection failed: " . $conn->connect_error);
    }

    // Insert weather data into MySQL table
    $stmt = $conn->prepare("INSERT INTO weather_data (city, country, temperature, humidity, wind_speed, weather_description) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssddds", $city, $country, $temperature, $humidity, $wind_speed, $weather_desc);

    if ($stmt->execute()) {
        $weather_info .= "✅ Weather data saved successfully!";
    } else {
        $weather_info .= "❌ Error saving data.";
    }

    // Close connections
    $stmt->close();
    $conn->close();
} else {
    $weather_info = "⚠️ Failed to fetch weather data for city: {$city}. Please check the city name or try again later.";
}
?>

<!-- HTML Form and Weather Report -->
<div class="container">
    <!-- Weather Form -->
    <form method="GET" action="" class="weather-form">
        <label for="city">Enter City:</label>
        <input type="text" id="city" name="city" list="nepalCities" required placeholder="Search for a city in Nepal" autocomplete="off">
        
        <datalist id="nepalCities">
            <option value="Kathmandu"></option>
            <option value="Pokhara"></option>
            <option value="Lalitpur"></option>
            <option value="Bhaktapur"></option>
            <option value="Butwal"></option>
            <option value="Bhairahawa"></option>
            <option value="Dhangadhi"></option>
            <option value="Janakpur"></option>
            <option value="Biratnagar"></option>
        </datalist>

        <input type="submit" value="Get Weather">
    </form>

    <!-- Weather Information Display -->
    <div class="weather-info">
        <?php echo $weather_info; ?>
    </div>
</div>

<!-- CSS for Agriculture Theme and Centered Layout -->
<style>
    body {
        background-color: #eaf5e1; /* Light green background */
        font-family: 'Arial', sans-serif;
        color: #4a4a4a;
        margin: 0;
        padding: 0;
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        text-align: center;
    }

    h2 {
        color: #3c8c3f; /* Dark green */
        font-size: 24px;
    }

    .weather-form {
        margin: 20px;
        padding: 20px;
        background-color: #d3f4d1; /* Light green background for the form */
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    .weather-form label {
        font-size: 16px;
        margin-bottom: 8px;
        color: #3c8c3f;
    }

    .weather-form input[type="text"] {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #4a8c4a;
        border-radius: 4px;
        margin-bottom: 15px;
    }

    .weather-form input[type="submit"] {
        background-color: #4a8c4a; /* Green button */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }

    .weather-form input[type="submit"]:hover {
        background-color: #3c8c3f;
    }

    .weather-info {
        margin-top: 20px;
        padding: 20px;
        background-color: #d3f4d1;
        border-radius: 8px;
        width: 300px;
        text-align: left;
    }

    .weather-info h2 {
        font-size: 24px;
        color: #3c8c3f;
    }

    .weather-info p {
        font-size: 16px;
        margin: 10px 0;
    }
</style>
