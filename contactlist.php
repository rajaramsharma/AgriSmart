<?php
// Admin Dashboard (admin.php)
require 'adminnavbar.php';

// You can add authentication here if necessary
?>

<?php
// contactlist.php
session_start();

// Database connection
$servername = "localhost";
$username = "root"; // Your MySQL username
$password = ""; // Your MySQL password
$dbname = "ecometrics"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle the delete action
if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];
    $delete_sql = "DELETE FROM contact_us WHERE id = $delete_id";
    if ($conn->query($delete_sql) === TRUE) {
        echo "<script>alert('Record deleted successfully');</script>";
    } else {
        echo "<script>alert('Error deleting record: " . $conn->error . "');</script>";
    }
}

// Query to fetch contact data
$sql = "SELECT * FROM contact_us";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact List</title>
    <style>
        /* Internal CSS for Contact List */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
            margin-top: 20px;
            font-size: 2em;
        }

        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: white;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
        }

        tr:hover {
            background-color: #f1f1f1;
            transform: translateY(-5px);
            transition: all 0.3s ease;
        }

        td {
            color: #555;
        }

        .action-btns {
            display: flex;
            justify-content: space-between;
        }

        .action-btns button {
            padding: 8px 16px;
            border: none;
            background-color: #f44336;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .action-btns button:hover {
            background-color: #e53935;
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        table, h1 {
            animation: fadeIn 1s ease-in;
        }
    </style>
</head>
<body>

    <h1>Contact List</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>State</th>
                <th>City</th>
                <th>Message</th>
                <th>Created At</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Display contact information from database
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["id"] . "</td>";
                    echo "<td>" . $row["name"] . "</td>";
                    echo "<td>" . $row["email"] . "</td>";
                    echo "<td>" . $row["phone"] . "</td>";
                    echo "<td>" . $row["state"] . "</td>";
                    echo "<td>" . $row["city"] . "</td>";
                    echo "<td>" . $row["message"] . "</td>";
                    echo "<td>" . $row["created_at"] . "</td>";
                    echo "<td>
                            <a href='?delete_id=" . $row["id"] . "' onclick='return confirm(\"Are you sure you want to delete this contact?\");'>
                                <button>Delete</button>
                            </a>
                          </td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='9'>No contacts found</td></tr>";
            }
            ?>
        </tbody>
    </table>

</body>
</html>

<?php
// Close the database connection
$conn->close();
?>
