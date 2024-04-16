<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Dokdo&family=Josefin+Sans:ital,wght@1,500&family=Poor+Story&display=swap"
            rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Template Vendor JS Files -->
        <script src="../assets/vendor/aos/aos.js"></script>
        <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="../assets/vendor/php-email-form/validate.js"></script>

        <link rel="stylesheet" href="../readContent.css">



        <link rel="stylesheet" href="../reset.css">
        <link rel="stylesheet" href="../style.css">

    </head>

    <body>

        <section id="section1">
            <div id="mainpage-logo">
                <h1 id="main-title">InterestHub</h1>
            </div>
            <hr id="main-hr">
            

            <nav class="navbar fixed-top">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                        data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                        aria-labelledby="offcanvasNavbarLabel">
                        <div class="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">InterestHub</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body">
                            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                <li class="nav-item">
                                    <a class="nav-link" href="../main">Main Page</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="../profil">My Page</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="../index">Meeting Board</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        Meeting Space
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="../rc_eat">맛집</a></li>
                                        <li><a class="dropdown-item" href="../rc_hof">술</a></li>
                                        <li><a class="dropdown-item" href="../rc_wine">와인/위스키</a></li>
                                        <li><a class="dropdown-item" href="../rc_cafe">카페</a></li>
                                        <li><a class="dropdown-item" href="../rc_activity">액티비티</a></li>
                                        <li><a class="dropdown-item" href="../rc_preview">관람</a></li>
                                        <li><a class="dropdown-item" href="../rc_atelier">공방</a></li>
                                        <li><a class="dropdown-item" href="../rc_hobby">취미</a></li>
                                        <li><a class="dropdown-item" href="../rc_travel">여행</a></li>
                                        <li><a class="dropdown-item" href="../rc_etc">기타</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="../meeting_review">Communication</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    </body>

    </html>