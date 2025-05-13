<?php

session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<?php require 'navbar.php'; ?>
<?php
// Start session


// Database Connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecometrics";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle Contact Form Submission
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['contact_submit'])) {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $state = $_POST["state"];
    $city = $_POST["city"];
    $message = $_POST["message"];

    $stmt = $conn->prepare("INSERT INTO contact_us (name, email, phone, state, city, message) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $name, $email, $phone, $state, $city, $message);

    if ($stmt->execute()) {
        echo "<script>showPopupMessage('Message Sent Successfully!');</script>";
    } else {
        echo "<script>showPopupMessage('Error: " . $conn->error . "');</script>";
    }
    $stmt->close();
}

// Handle Q&A Form Submission
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['question'])) {
    $question = $conn->real_escape_string($_POST['question']);
    $stmt = $conn->prepare("INSERT INTO qna (question) VALUES (?)");
    $stmt->bind_param("s", $question);

    if ($stmt->execute()) {
        echo "<script>showPopupMessage('Question Submitted!');</script>";
    }
    $stmt->close();
}

// Fetch last 4 questions and answers
$qna_result = $conn->query("SELECT * FROM qna ORDER BY created_at DESC LIMIT 4");

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-row {
            display: flex;
            justify-content: space-between;
        }
        .form-row .form-group {
            width: 48%;
        }
        button {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 20%;
        }
        button:hover {
            background-color: #219150;
        }
        .floating-btn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: #007bff;
            color: white;
            border: none;
            padding: 15px 20px;
            border-radius: 50px;
            cursor: pointer;
            font-size: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .floating-btn:hover {
            background: #0056b3;
        }
        .popup-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }
        .popup-content {
            background: white;
            padding: 20px;
            border-radius: 8px;
            width: 90%;
            max-width: 400px;
            text-align: center;
            position: relative;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 22px;
            cursor: pointer;
        }
        .popup-message {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #27ae60;
            color: white;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            display: none;
        }
        .popup-message button {
            background: transparent;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
        }
        .popup-message button:hover {
            color: #ff0000;
        }
        .previous-qa {
            margin-top: 20px;
            text-align: left;
            font-size: 14px;
        }
        .qa-item {
            margin-bottom: 15px;
        }
        .qa-item span {
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Contact Our Team</h2>
        <form action="" method="POST">
            <div class="form-row">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="state">State</label>
                <input type="text" id="state" name="state" required>
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <input type="text" id="city" name="city" required>
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" required></textarea>
            </div>
            <button type="submit" name="contact_submit">Submit</button>
        </form>
    </div>

    <button id="openQnaBtn" class="floating-btn">❓ Q&A</button>

    <div id="qnaPopup" class="popup-overlay">
        <div class="popup-content">
            <span class="close-btn">&times;</span>
            <h2>Ask a Question</h2>
            <form method="POST">
                <textarea name="question" required placeholder="Type your question..."></textarea>
                <button type="submit">Submit</button>
            </form>
            <div class="previous-qa">
                <h3>Previous Q&As:</h3>
                <?php while ($row = $qna_result->fetch_assoc()) { ?>
                    <div class="qa-item">
                        <span>Question:</span> <?= htmlspecialchars($row['question']) ?><br>
                        <span>Answer:</span> <?= htmlspecialchars($row['answer'] ?? 'Pending') ?><br>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <script>
        document.getElementById("openQnaBtn").addEventListener("click", function() {
            document.getElementById("qnaPopup").style.display = "flex";
        });
        document.querySelector(".close-btn").addEventListener("click", function() {
            document.getElementById("qnaPopup").style.display = "none";
        });
    </script>

</body>
</html>
