<!-- Navbar Section -->
<div class="navbar">
    <a href="admin.php">Admin Dashboard</a>
    <div class="right">
        <a href="logout.php" class="logout">Logout</a>
    </div>
</div>

<style>
    /* Navbar Styles */
    .navbar {
        background-color: #333;
        overflow: hidden;
        padding: 10px;
    }

    .navbar a {
        color: white;
        padding: 14px 20px;
        text-decoration: none;
        float: left;
        font-size: 16px;
        text-align: center;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }

    .navbar .right {
        float: right;
    }

    /* Responsive Design for Navbar */
    @media (max-width: 768px) {
        .navbar a {
            float: none;
            display: block;
            text-align: left;
        }

        .navbar .right {
            float: none;
            text-align: left;
        }
    }
</style>
