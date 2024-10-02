<?php
include("./includes/connect.php");
include("./functions/common_functions.php");
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Unique Mobile Store</title>
    <link rel="stylesheet" href="./assets/css/bootstrap.css" />
    <link rel="stylesheet" href="./assets/css/main.css" />
</head>

<body>
    <!-- Start NavBar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">Unique Mobile Store</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="./index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="./products.php">Products</a>
                    </li>
                    <li class='nav-item'>
                        <a class='nav-link' href='<?php echo isset($_SESSION['username']) ? './users_area/profile.php' : './users_area/user_registration.php'; ?>'>
                            <?php echo isset($_SESSION['username']) ? 'My Account' : 'Register'; ?>
                        </a>
                    </li>
                </ul>
                <form class="d-flex" action="search_results.php" method="get">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search_data">
                    <input type="submit" value="Search" class="btn btn-outline-primary" name="search_data_btn">
                </form>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="./cart.php">
                            <svg width="28" height="28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M11 27C11.5523 27 12 26.5523 12 26C12 25.4477 11.5523 25 11 25C10.4477 25 10 25.4477 10 26C10 26.5523 10.4477 27 11 27Z" stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                <path d="M25 27C25.5523 27 26 26.5523 26 26C26 25.4477 25.5523 25 25 25C24.4477 25 24 25.4477 24 26C24 26.5523 24.4477 27 25 27Z" stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                <path d="M3 5H7L10 22H26" stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                <path d="M10 16.6667H25.59C25.7056 16.6667 25.8177 16.6267 25.9072 16.5535C25.9966 16.4802 26.0579 16.3782 26.0806 16.2648L27.8806 7.26479C27.8951 7.19222 27.8934 7.11733 27.8755 7.04552C27.8575 6.97371 27.8239 6.90678 27.7769 6.84956C27.73 6.79234 27.6709 6.74625 27.604 6.71462C27.5371 6.68299 27.464 6.66661 27.39 6.66666H8" stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            </svg>
                            <sup><?php cart_item(); ?></sup>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link d-flex align-items-center gap-1" href="#">
                            <svg width="28" height="28" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="..." stroke="black" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                            </svg>
                            <span>
                                Welcome <?php echo isset($_SESSION['username']) ? $_SESSION['username'] : 'guest'; ?>
                            </span>
                        </a>
                    </li>
                    <li class='nav-item'>
                        <a class='nav-link' href='<?php echo !isset($_SESSION['username']) ? './users_area/user_login.php' : './users_area/logout.php'; ?>'>
                            <?php echo !isset($_SESSION['username']) ? 'Login' : 'Logout'; ?>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End NavBar -->

    <!-- Display Total Price -->
    <div class="bg-light">
        <h3 class="text-center">Unique Store</h3>
        <p class="text-center">Best Quality and Affordable Phones for You</p>
    </div>
    <div class="container">
        <span>
            Total Price is: <?php total_cart_price(); ?>
        </span>
    </div>

    <!-- Bootstrap JS -->
    <script src="./assets/js/bootstrap.bundle.js"></script>
</body>

</html>
