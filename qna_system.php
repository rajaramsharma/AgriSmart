<?php
session_start();  // Start the session to track form submission

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecometrics"; // Change if your DB name is different

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form has been submitted and prevent resubmission on refresh
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['question'])) {
    $question = $conn->real_escape_string($_POST['question']);
    $sql = "INSERT INTO qna (question) VALUES ('$question')";
    if ($conn->query($sql) === TRUE) {
        // After submitting, redirect to the same page to prevent resubmission
        header("Location: " . $_SERVER['PHP_SELF']);
        exit();  // Make sure no further code is executed
    }
}

if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['export'])) {
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="qna_export.csv"');
    $output = fopen("php://output", "w");
    fputcsv($output, ['ID', 'Question', 'Answer', 'Created At']);
    $result = $conn->query("SELECT * FROM qna");
    while ($row = $result->fetch_assoc()) {
        fputcsv($output, $row);
    }
    fclose($output);
    exit;
}

$result = $conn->query("SELECT * FROM qna ORDER BY created_at DESC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Q&A System</title>
    <meta http-equiv="refresh" content="5">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        form {
            background: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 500px;
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }
        textarea {
            width: 100%;
            height: 80px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            resize: none;
            font-size: 16px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
        }
        button:hover {
            background-color: #0056b3;
        }
        table {
            width: 80%;
            max-width: 900px;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .export-link {
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
        }
        .export-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Ask a Question</h2>
    <form method="post">
        <textarea name="question" required></textarea>
        <button type="submit">Submit</button>
    </form>

    <h2>Questions & Answers</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Question</th>
            <th>Answer</th>
            <th>Created At</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
                <td><?= $row['id'] ?></td>
                <td><?= htmlspecialchars($row['question']) ?></td>
                <td><?= htmlspecialchars($row['answer'] ?? 'Pending') ?></td>
                <td><?= $row['created_at'] ?></td>
            </tr>
        <?php } ?>
    </table>

    <a href="?export=true" class="export-link">Export Q&A</a>
</body>
</html>
