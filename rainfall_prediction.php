<?php
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<!DOCTYPE html>
<html lang="en">
<?php include ('header.php');  ?>
<?php require 'navbar.php'; ?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rainfall Prediction System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fb;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Main Section */
        .section {
            padding: 50px 20px;
            background: linear-gradient(to right, #43cea2, #185a9d);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Card Styling */
        .card {
            background: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
            width: 90%;
            max-width: 600px;
            text-align: center;
            padding: 20px;
        }

        .card-header {
            font-size: 24px;
            font-weight: bold;
            color: #00796b;
            padding-bottom: 10px;
        }

        .card-body {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        select, button {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
            outline: none;
        }

        select {
            background-color: #ffffff;
        }

        select:focus {
            border-color: #0288d1;
        }

        .btn-submit {
            background-color: #0288d1;
            color: white;
            font-size: 18px;
            cursor: pointer;
            border: none;
            transition: background 0.3s ease-in-out;
        }

        .btn-submit:hover {
            background-color: #0277bd;
        }

        /* Result Box */
        .result-container {
            margin-top: 20px;
            padding: 15px;
            background-color: #e0f7fa;
            border-radius: 8px;
            font-size: 18px;
            color: #00796b;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .card {
                width: 95%;
            }

            .btn-submit {
                font-size: 16px;
                padding: 12px;
            }
        }

    </style>
</head>
<body>

    <section class="section">
        <div class="card">
            <div class="card-header">
                Rainfall Prediction System
            </div>
            <div class="card-body">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="region-select">Select Region:</label>
                        <select id="region-select" name="region" required>
                            <option value="">Select Region</option>
                        </select>
                        <script> print_region("region-select"); </script>
                    </div>

                    <div class="form-group">
                        <label for="month-select">Select Month:</label>
                        <select id="month-select" name="month" required>
                            <option value="">Select Month</option>
                        </select>
                        <script> print_months("month-select"); </script>
                    </div>

                    <button type="submit" name="Rainfall_Predict" class="btn-submit">Predict</button>
                </form>

                <?php 
                if(isset($_POST['Rainfall_Predict'])){
                    $region = trim($_POST['region']);
                    $month = trim($_POST['month']);

                    echo '<div class="result-container">';
                    echo "<h3>Predicted Rainfall</h3>";
                    echo "<p>For the region <strong>$region</strong> in the month of <strong>$month</strong>:</p>";

                    $Jregion = json_encode($region);
                    $Jmonth = json_encode($month);

                    $command = escapeshellcmd("python ML/rainfall_prediction/rainfall_prediction.py $Jregion $Jmonth ");
                    $output = shell_exec($command);

                    if ($output) {
                        echo "<p><strong>$output mm</strong></p>";
                    } else {
                        echo '<p class="error">Prediction could not be generated. Try again.</p>';
                    }

                    echo '</div>';
                }
                ?>
            </div>
        </div>
    </section>

</body>
</html>
