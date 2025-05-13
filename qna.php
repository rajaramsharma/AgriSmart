<?php
// Admin Dashboard (admin.php)
require 'adminnavbar.php';

// You can add authentication here if necessary
?>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ecometrics"; // Change if your DB name is different

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['answer']) && isset($_POST['id'])) {
    $answer = $conn->real_escape_string($_POST['answer']);
    $id = (int) $_POST['id'];
    $sql = "UPDATE qna SET answer = '$answer' WHERE id = $id";
    $conn->query($sql);
    header("Location: admin.php");
    exit;
}

$result = $conn->query("SELECT * FROM qna WHERE answer IS NULL OR answer = ''");
?>
<!DOCTYPE html>
<html>
<head>

    <title>Admin Panel - Answer Questions</title>
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
}

form {
    background: white;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 80%;
    max-width: 500px;
    display: flex;
    flex-direction: column;
}

textarea {
    width: 100%;
    height: 80px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    resize: none;
}

button {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px;
    margin-top: 10px;
    cursor: pointer;
    border-radius: 5px;
}

button:hover {
    background-color: #0056b3;
}

.chat-container {
    background: white;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 80%;
    max-width: 500px;
    margin-top: 20px;
    display: flex;
    flex-direction: column;
}

.message {
    padding: 10px;
    border-radius: 10px;
    margin: 5px 0;
    max-width: 80%;
}

.user-message {
    background-color: #007bff;
    color: white;
    align-self: flex-end;
}

.bot-message {
    background-color: #ddd;
    align-self: flex-start;
}


    </style>
</head>
<body>
    <h2>Admin Panel - Answer Questions</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Question</th>
            <th>Answer</th>
            <th>Action</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
                <td><?= $row['id'] ?></td>
                <td><?= htmlspecialchars($row['question']) ?></td>
                <td>
                    <form method="post">
                        <input type="hidden" name="id" value="<?= $row['id'] ?>">
                        <textarea name="answer" required></textarea>
                        <button type="submit">Submit Answer</button>
                    </form>
                </td>
            </tr>
        <?php } ?>
    </table>
</body>
</html>