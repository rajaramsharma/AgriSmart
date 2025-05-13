<?php
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<?php
$apiKey = "e5ed40c0e7f9438db7a27a93cb5f0be1"; // Your API Key
$newsUrl = "https://newsapi.org/v2/everything?q=agriculture&apiKey=$apiKey";

// cURL request to fetch news
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $newsUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    'User-Agent: YourAppName/1.0' // Replace with your app name
));
$response = curl_exec($ch);
curl_close($ch);

$newsData = json_decode($response, true);

// Check if the API response is valid
if ($newsData === null || $newsData['status'] !== "ok") {
    // If rate limit is exceeded or other error occurs, fetch from database
    if (isset($newsData['code']) && $newsData['code'] === "rateLimited") {
        echo "Rate limit exceeded. Showing previous news instead.";
        fetchPreviousNews();
    } else {
        die("Error: Invalid API response. Message: " . $newsData['message']);
    }
} else {
    // If response is successful, save the news to the database and show it
    saveNewsToDatabase($newsData['articles']);
    displayNews($newsData['articles']);
}

function saveNewsToDatabase($articles) {
    // Database connection
    $conn = new mysqli("localhost", "root", "", "ecometrics");
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Insert news into the database
    foreach ($articles as $article) {
        if (!isset($article['title'], $article['description'], $article['url'], $article['urlToImage'])) {
            continue; // Skip incomplete articles
        }

        $title = $conn->real_escape_string($article['title']);
        $description = $conn->real_escape_string($article['description']);
        $url = $conn->real_escape_string($article['url']);
        $image = $conn->real_escape_string($article['urlToImage']);
        $publishedAt = date('Y-m-d H:i:s', strtotime($article['publishedAt']));

        $sql = "INSERT INTO news (title, description, url, image, published_at) 
                VALUES ('$title', '$description', '$url', '$image', '$publishedAt') 
                ON DUPLICATE KEY UPDATE title=title"; 
        $conn->query($sql);
    }

    $conn->close();
}

function displayNews($articles) {
    echo "<div class='news-container'>";
    foreach ($articles as $article) {
        echo "<div class='news-card'>";
        echo "<img src='" . $article['urlToImage'] . "' alt='News Image'>";
        echo "<div class='news-card-content'>";
        echo "<h3>" . $article['title'] . "</h3>";
        echo "<p>" . substr($article['description'], 0, 100) . "...</p>";
        echo "<a href='" . $article['url'] . "' target='_blank'>Read More</a>";
        echo "</div></div>";
    }
    echo "</div>";
}

function fetchPreviousNews() {
    // Database connection
    $conn = new mysqli("localhost", "root", "", "ecometrics");
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Fetch previous news from the database
    $sql = "SELECT * FROM news ORDER BY published_at DESC LIMIT 10";
    $result = $conn->query($sql);

    echo "<div class='news-container'>";
    while ($row = $result->fetch_assoc()) {
        echo "<div class='news-card'>";
        echo "<img src='" . $row['image'] . "' alt='News Image'>";
        echo "<div class='news-card-content'>";
        echo "<h3>" . $row['title'] . "</h3>";
        echo "<p>" . substr($row['description'], 0, 100) . "...</p>";
        echo "<a href='" . $row['url'] . "' target='_blank'>Read More</a>";
        echo "</div></div>";
    }
    echo "</div>";

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agriculture News</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .news-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
            padding: 20px;
        }

        .news-card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease;
            border: 1px solid #ddd;
        }

        .news-card:hover {
            transform: scale(1.05);
        }

        .news-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .news-card-content {
            padding: 15px;
        }

        .news-card-content h3 {
            color: #4CAF50;
            font-size: 1.2rem;
            margin-bottom: 10px;
        }

        .news-card-content p {
            font-size: 14px;
            color: #555;
            margin-bottom: 10px;
        }

        .news-card-content a {
            display: inline-block;
            padding: 8px 15px;
            background: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .news-card-content a:hover {
            background-color: #45a049;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            font-size: 2rem;
            color: #333;
        }
    </style>
</head>
<body>
<?php
       require 'navbar.php';
    ?>
    <h1>Agriculture News</h1>
</body>
</html>