<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Dokdo&family=Josefin+Sans:ital,wght@1,500&family=Poor+Story&display=swap"
            rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="style.css">
        <title>Login</title>
        <style>
            h1 {
                margin-top: 15%;
                margin-bottom: 30px;
                text-align: center;
                font-weight: bold;
                font-size: 3rem;
                color: rgb(120, 134, 107);
            }

            .login-container {
                border: 1px solid gray;
                width: 500px;
                margin: 0 auto;
                padding: 10px;
                border-radius: 10px;
                height: 500px;
            }

            .my-button {
                width: 100%;
                height: 50px;
            }

            .sub-container {
                width: 500px;
                margin: 0 auto;
            }

            .logo-flex {
                width: 600px;
                display: flex;
                justify-content: space-around;
                margin: 0 auto;
            }

            .img1 {
                margin-top: 10%;
            }

            .form-size {
                height: 100px;
            }

            .btn-link {
                text-decoration: none;
                font-size: 1rem;
                color: gray;
            }
        </style>
    </head>

    <body>

        <div class="logo-flex">
            <h1>Login</h1>
        </div>
        <hr>


        <!-- 네비게이션 -->
        <div id="joinNav">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="./main">Home</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./join">Join-us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./idinquiry">find ID</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./pwinquiry">find PW</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <form action="/login" method="post" id="frmLogin">
            <div class="login-container">
                <div class="form-floating mb-2 form-size">
                    <input type="text" class="form-control" id="userId" name="userId" placeholder="#">
                    <label for="userId">ID</label>
                </div>
                <div class="form-floating mb-2 form-size">
                    <input type="password" class="form-control" id="userPw" name="userPw" placeholder="#">
                    <label for="userPw">Password</label>
                </div>
                <button type="button" id="btnLogin" class="btn btn-outline-secondary my-button">Login</button>
            </div>
        </form>

        <script>
            (() => {

                const $logo = document.querySelector('.logo-flex');
                const $btnLogin = document.querySelector('#btnLogin');
                // 이벤트 핸들러


                $logo.addEventListener('click', () => {
                    console.log("메인버튼 클릭");
                    location.href = '/main';
                });

                $btnLogin.addEventListener('click', () => {
                    const $frmLogin = document.querySelector('#frmLogin');
                    $frmLogin.submit();
                });


            })();
        </script>
        <script src="/JS/jquery-3.7.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    </body>

    </html>