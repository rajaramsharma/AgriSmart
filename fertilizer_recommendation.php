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
    <title>Fertilizer Recommendation</title>
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

        /* Card Styling */
        .card {
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            border-radius: 8px;
        }

        .card-header {
            background-color: #0288d1;
            color: white;
            padding: 15px;
            border-radius: 8px 8px 0 0;
        }

        .card-header .display-4 {
            font-size: 24px;
        }

        .card-body {
            padding: 30px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #0288d1;
            color: white;
        }

        td input, td select {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #ddd;
            transition: all 0.3s;
        }

        td input:focus, td select:focus {
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

<body class="bg-white" id="top">

    <section class="section section-shaped section-lg">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 mx-auto text-center">
                    <span class="badge badge-danger badge-pill mb-3">Recommendation</span>
                </div>
            </div>

            <div class="row row-content">
                <div class="col-md-12 mb-3">
                    <div class="card text-white bg-gradient-success mb-3">
                        <form role="form" action="#" method="post">
                            <div class="card-header">
                                <span class="text-info display-4">Fertilizer Recommendation</span>
                                <span class="pull-right">
                                    <button type="submit" value="Recommend" name="Fert_Recommend" class="btn btn-warning btn-submit">SUBMIT</button>
                                </span>
                            </div>

                            <div class="card-body text-dark">
                                <table class="table table-striped table-hover table-bordered bg-gradient-white text-center display" id="myTable">
                                    <thead>
                                        <tr class="font-weight-bold text-default">
                                            <th><center>Nitrogen</center></th>
                                            <th><center>Phosphorus</center></th>
                                            <th><center>Potassium</center></th>
                                            <th><center>Temperature</center></th>
                                            <th><center>Humidity</center></th>
                                            <th><center>Soil Moisture</center></th>
                                            <th><center>Soil Type</center></th>
                                            <th><center>Crop</center></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="text-center">
                                            <td>
                                                <div class="form-group">
                                                    <input type="number" name="n" placeholder="Nitrogen Eg:37" required class="form-control">
                                                </div>
                                            </td>

                                            <td>
                                                <div class="form-group">
                                                    <input type="number" name="p" placeholder="Phosphorus Eg:0" required class="form-control">
                                                </div>
                                            </td>

                                            <td>
                                                <div class="form-group">
                                                    <input type="number" name="k" placeholder="Potassium Eg:0" required class="form-control">
                                                </div>
                                            </td>

                                            <td>
                                                <div class="form-group">
                                                    <input type="number" name="t" placeholder="Temperature Eg:26" required class="form-control">
                                                </div>
                                            </td>

                                            <td>
                                                <div class="form-group">
                                                    <input type="number" name="h" placeholder="Humidity Eg:52" required class="form-control">
                                                </div>
                                            </td>

                                            <td>
                                                <div class="form-group">
                                                    <input type="number" name="soilMoisture" placeholder="Soil Moisture Eg:38" required class="form-control">
                                                </div>
                                            </td>

                                            <td>
                                                <div class="form-group">
                                                    <select name="soil" class="form-control">
                                                        <option value="">Select Soil Type</option>
                                                        <option value="Sandy">Sandy</option>
                                                        <option value="Loamy">Loamy</option>
                                                        <option value="Black">Black</option>
                                                        <option value="Red">Red</option>
                                                        <option value="Clayey">Clayey</option>
                                                    </select>
                                                </div>
                                            </td>

                                            <td>
                                                <div class="form-group">
                                                    <select name="crop" class="form-control">
                                                        <option value="">Select Crop</option>
                                                        <option value="Maize">Maize</option>
                                                        <option value="Sugarcane">Sugarcane</option>
                                                        <option value="Cotton">Cotton</option>
                                                        <option value="Tobacco">Tobacco</option>
                                                        <option value="Paddy">Paddy</option>
                                                        <option value="Barley">Barley</option>
                                                        <option value="Wheat">Wheat</option>
                                                        <option value="Millets">Millets</option>
                                                        <option value="Oil seeds">Oil seeds</option>
                                                        <option value="Pulses">Pulses</option>
                                                        <option value="Ground Nuts">Ground Nuts</option>
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>

                    <div class="card text-white bg-gradient-success mb-3">
                        <div class="card-header">
                            <span class="text-success display-4">Result</span>
                        </div>

                        <h4>
                            <?php
                            if (isset($_POST['Fert_Recommend'])) {
                                $n = trim($_POST['n']);
                                $p = trim($_POST['p']);
                                $k = trim($_POST['k']);
                                $t = trim($_POST['t']);
                                $h = trim($_POST['h']);
                                $sm = trim($_POST['soilMoisture']);
                                $soil = trim($_POST['soil']);
                                $crop = trim($_POST['crop']);

                                echo "Recommended Fertilizer is : ";

                                $Jsonn = json_encode($n);
                                $Jsonp = json_encode($p);
                                $Jsonk = json_encode($k);
                                $Jsont = json_encode($t);
                                $Jsonh = json_encode($h);
                                $Jsonsm = json_encode($sm);
                                $Jsonsoil = json_encode($soil);
                                $Jsoncrop = json_encode($crop);

                                $command = escapeshellcmd("python ML/fertilizer_recommendation/fertilizer_recommendation.py $Jsonn $Jsonp $Jsonk $Jsont $Jsonh $Jsonsm $Jsonsoil $Jsoncrop ");
                                $output = passthru($command);
                                echo $output;
                            }
                            ?>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>

</html>