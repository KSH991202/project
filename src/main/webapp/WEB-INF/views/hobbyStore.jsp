<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>INTRESTHUB</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Dokdo&family=Josefin+Sans:ital,wght@1,500&family=Poor+Story&display=swap"
            rel="stylesheet">

        <link rel="stylesheet" href="reset.css">
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <style>
            html {
                overflow: hidden;
            }

            html,

            body {
                display: block;
                width: 100%;
                height: 100%;
                background-color: rgb(245, 243, 242);
                /* font-family: 'REM', sans-serif; */
                font-family: 'Dokdo', cursive;
                font-family: 'Josefin Sans', sans-serif;
                font-family: 'Poor Story', cursive;

            }

            .section {
                width: 100%;
                height: 100%;
                position: relative;
            }

            #section1 {
                background-color: rgb(120, 134, 107);
            }

            #section2 {
                background-color: rgb(120, 134, 107);;
            }

            #section3 {
                /* background-color: rgb(245,243,242); */
                background-color: rgb(120, 134, 107);
            }

            #section4 {
                background-color: rgb(120, 134, 107);;
            }

            #section5 {
                background-color: rgb(120, 134, 107);;
            }

           
            .scroll {
                z-index: 10px;
                position: fixed;
                top: 85%;
                left: 50%;
                width: 80px;
                height: 80px;
            }

            .showImg {
                width: 100%;
                height: 100%;
            }

            a {
                text-decoration: none;
            }

            .fadeTitle {
                font-size: 60px;
                font-weight: bold;
                color: rgb(255, 255, 255);
                display: flex;

                position: fixed;
                top: 15%;
                margin-left: 15%;
                z-index: 10;
            }

            .fadeContent {
                font-size: 50px;
                font-weight: bold;
                color: rgb(255, 255, 255);

                position: absolute;
                top: 50%;
                left: 20%;
            }

            .fadeContent2 {
                font-size: 30px;
                font-weight: bold;
                color: rgb(255, 255, 255);

                position: absolute;
                left: 20%;
                top: 70%;
            }

            .fadeContent3 {
                font-size: 60px;
                font-weight: bold;
                color: rgb(255, 255, 255);

                position: absolute;
                left: 40%;
                top: 15%;

            }
        </style>
    </head>

    <body>

        <!-- section 1 -->
        <div class="section" id="section1">
            <div id="section1_detail">
                <div class="fadeTitle">
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="300" data-aod-duration="3000">I</p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="500" data-aod-duration="3000">N</p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="700" data-aod-duration="3000">T</p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="900" data-aod-duration="3000">E</p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="1100" data-aod-duration="3000">R
                    </p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="1300" data-aod-duration="3000">E
                    </p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="1500" data-aod-duration="3000">S
                    </p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="1700" data-aod-duration="3000">T
                    </p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="1900" data-aod-duration="3000">H
                    </p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="2100" data-aod-duration="3000">U
                    </p>
                    <p data-aos="fade-down" data-aos-easing="linear" data-aos-delay="2300" data-aod-duration="3000">B
                    </p>
                </div>
                <p class="fadeContent" data-aos="fade-up" data-aos-easing="linear" data-aos-delay="1500"
                    data-aod-duration="3000">각종 관심사를 가진 사람들이 모여 활동하는 공간</p>
            </div>
        </div>

        <!-- section 2 -->
        <div class="section" id="section2">
            <img class="showImg" src="../../image/스크롤배경소통.jpg" data-aos="fade-up" data-aos-easing="linear"
                data-aos-delay="500" data-aod-duration="3000">
        </div>

        <!-- section 3 -->
        <div class="section" id="section3">
            <p class="fadeContent" data-aos="zoom-in" data-aos-easing="linear" data-aos-delay="300"
                data-aod-duration="1000">워크 - 라이프의 밸런스</p>
            <p class="fadeContent2" data-aos="zoom-in" data-aos-easing="linear" data-aos-delay="500"
                data-aod-duration="3000">마음 맞는 직장 동료와 함께 취미생활을 즐기며 일과 삶의 밸런스를 조화롭게</p>
        </div>

        <!-- section 4 -->
        <div class="section" id="section4">
            <img class="showImg" src="../../image/스크롤배경소통3.jpg" data-aos="fade-up" data-aos-easing="linear"
                data-aos-delay="500" data-aod-duration="3000">
        </div>

        <!-- section 5 -->
        <div class="section" id="section5">
            <p class="fadeContent3" data-aos="flip-left" data-aos-easing="linear" data-aos-delay="500"
                data-aod-duration="3000">는</p>
            <p class="fadeContent" data-aos="flip-left" data-aos-easing="linear" data-aos-delay="600"
                data-aod-duration="3000">임직원들 간의 소통, 사내 문화 강화를 지양합니다.</p>
        </div>


        <img class="scroll" src="https://www.baemin.com/_next/static/media/scroll@2x.abce750c.png">

        <script>
            (() => {
                AOS.init();
                let $html = $("html");

                let page = 1;

                $html.animate({ scrollTop: 0 }, 500);

                $(window).on("wheel", function (e) {
                    if ($html.is(":animated")) return;
                    if (e.originalEvent.deltaY > 0) {
                        if (page == 6) return;
                        page++;
                    } else if (e.originalEvent.deltaY < 0) {
                        if (page == 1) return;
                        page--;
                    }
                    let posTop = (page - 1) * $(window).height();
                    $html.animate({ scrollTop: posTop });
                })



                const body = document.querySelector('body');

                body.addEventListener('click', () => {
                    location.href = 'main';
                });


            })();
        </script>
    </body>

    </html>