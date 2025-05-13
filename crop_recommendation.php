<?php
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<?php require 'navbar.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agriculture Crop Recommendation System</title>
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
            padding: 80px 0;
            background-color: #ffffff;
        }

        /* Header */
        .section-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .section-header h1 {
            font-size: 36px;
            color: #00796b;
            font-weight: bold;
        }

        .section-header p {
            font-size: 18px;
            color: #00796b;
        }

        /* Form Styling */
        .form-container {
            max-width: 900px;
            margin: 0 auto;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border-radius: 8px;
        }

        .form-container h2 {
            text-align: center;
            color: #00796b;
            font-size: 28px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            margin-bottom: 20px;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #0288d1;
            color: white;
        }

        td input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #ddd;
            transition: all 0.3s;
        }

        td input:focus {
            border-color: #0288d1;
            outline: none;
        }

        /* Submit Button */
        .btn-submit {
            background-color: #0288d1;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        .btn-submit:hover {
            background-color: #0277bd;
        }

        /* Result Section */
        .result-container {
            margin-top: 20px;
            padding: 15px;
            background-color: #e0f7fa;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .result-container h3 {
            font-size: 24px;
            color: #00796b;
            text-align: center;
            margin-bottom: 15px;
        }

        .result-container p {
            font-size: 18px;
            color: #00796b;
            text-align: center;
        }

        /* Error Message */
        .error {
            color: #d32f2f;
            font-size: 18px;
            font-weight: bold;
        }

        /* Animation */
        .result-container {
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            .form-container h2 {
                font-size: 24px;
            }

            .btn-submit {
                font-size: 16px;
                padding: 10px 20px;
            }
        }

    </style>
</head>

<body>

    <section class="section">
        <div class="section-header">
            <h1>Agriculture Crop Recommendation System</h1>
            <p>Enter the required values below to get crop recommendations based on your inputs</p>
        </div>

        <div class="form-container">
            <h2>Crop Recommendation</h2>
            <form role="form" action="#" method="post">
                <table>
                    <thead>
                        <tr>
                            <th>Nitrogen</th>
                            <th>Phosphorus</th>
                            <th>Potassium</th>
                            <th>Temperature</th>
                            <th>Humidity</th>
                            <th>PH</th>
                            <th>Rainfall</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="number" name="n" placeholder="Eg: 90" required></td>
                            <td><input type="number" name="p" placeholder="Eg: 42" required></td>
                            <td><input type="number" name="k" placeholder="Eg: 43" required></td>
                            <td><input type="number" name="t" placeholder="Eg: 21" step="0.01" required></td>
                            <td><input type="number" name="h" placeholder="Eg: 82" step="0.01" required></td>
                            <td><input type="number" name="ph" placeholder="Eg: 6.5" step="0.01" required></td>
                            <td><input type="number" name="r" placeholder="Eg: 203" step="0.01" required></td>
                        </tr>
                    </tbody>
                </table>

                <button type="submit" name="Crop_Recommend" class="btn-submit">Submit</button>
            </form>

            <?php 
            if (isset($_POST['Crop_Recommend'])) {
                $n = trim($_POST['n']);
                $p = trim($_POST['p']);
                $k = trim($_POST['k']);
                $t = trim($_POST['t']);
                $h = trim($_POST['h']);
                $ph = trim($_POST['ph']);
                $r = trim($_POST['r']);

                echo '<div class="result-container">';
                echo '<h3>Recommended Crop is:</h3>';

                $Jsonn = json_encode($n);
                $Jsonp = json_encode($p);
                $Jsonk = json_encode($k);
                $Jsont = json_encode($t);
                $Jsonh = json_encode($h);
                $Jsonph = json_encode($ph);
                $Jsonr = json_encode($r);

                // Capture the output of the Python script
                $command = escapeshellcmd("python ML/crop_recommendation/recommend.py $Jsonn $Jsonp $Jsonk $Jsont $Jsonh $Jsonph $Jsonr");
                $output = shell_exec($command);

                if ($output) {
                    echo '<p>' . $output . '</p>';
                } else {
                    echo '<p class="error">No recommendation found. Please check your input values.</p>';
                }

                echo '</div>';
            }
            ?>
        </div>
    </section>

</body>

</html>