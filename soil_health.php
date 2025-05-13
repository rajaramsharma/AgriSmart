<?php
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : 'Guest';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soil Health Data | Agri Smart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fc;
            color: #333;
        }

        .container {
            padding: 50px;
        }

        .soil-info {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 12px;
            padding: 25px;
            margin-top: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-out;
        }

        h1 {
            text-align: center;
            color: #007bff;
        }

        .loading {
            font-size: 1.2rem;
            color: #ff6600;
        }

        /* Mobile responsiveness */
        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 1.5rem;
            }

            .soil-info {
                padding: 15px;
                margin-top: 10px;
            }
        }

        /* Tablet responsiveness */
        @media (min-width: 577px) and (max-width: 768px) {
            .container {
                padding: 30px;
            }

            h1 {
                font-size: 2rem;
            }

            .soil-info {
                padding: 20px;
                margin-top: 15px;
            }
        }

        /* Desktop responsiveness */
        @media (min-width: 769px) {
            .container {
                max-width: 80%;
            }

            h1 {
                font-size: 2.5rem;
            }

            .soil-info {
                padding: 30px;
                margin-top: 30px;
            }
        }
    </style>
</head>

<body>
    <?php require 'navbar.php'; ?>

    <div class="container mt-5">
        <h1>Real-Time Soil Health Analysis</h1>
        <p><strong>Latest Detected pH Value:</strong> <span id="ph_value" class="loading">Loading...</span></p>
        <div id="result"></div>
    </div>

    <script>
        function fetchPHData() {
            fetch('get_ph.php')
                .then(response => response.json())
                .then(data => {
                    if (data.ph_value !== null) {
                        document.getElementById('ph_value').innerText = data.ph_value;
                        getRecommendation(data.ph_value);
                    } else {
                        document.getElementById('ph_value').innerText = "No Data Available";
                    }
                })
                .catch(error => console.error('Error fetching pH data:', error));
        }

        function getRecommendation(pH) {
            fetch('get_recommendation.php?ph_value=' + pH)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('result').innerHTML = data;
                })
                .catch(error => console.error('Error fetching recommendation:', error));
        }

        setInterval(fetchPHData, 3000); // Auto-refresh every 3 seconds
        fetchPHData(); // Initial fetch
    </script>

</body>

</html>
