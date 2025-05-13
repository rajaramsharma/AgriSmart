<?php
$host = 'localhost'; // Database host
$dbname = 'ecometrics'; // Database name
$username = 'root'; // Database username
$password = ''; // Database password

try {
    // Create a PDO instance for the database connection
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    exit();
}
?>
