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

        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="style.css">

    </head>

    <body>

        <section id="section1">
            <div id="mainpage-logo">
                <h1 id="main-title">InterestHub</h1>
            </div>
            <hr id="main-hr">
            <div class="state">
                <span id="spnWelcome"></span>
                <button type="button" id="btnLogin" class="button">Login</button>
                <button type="button" id="btnJoin" class="button">Join_us</button>
            </div><br>

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
                                    <a class="nav-link" href="/main">Main Page</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/profil">My Page</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/index">Meeting Board</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        Meeting Place
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="/rc_eat">맛집</a></li>
                                        <li><a class="dropdown-item" href="/rc_hof">술</a></li>
                                        <li><a class="dropdown-item" href="/rc_wine">와인/위스키</a></li>
                                        <li><a class="dropdown-item" href="/rc_cafe">카페</a></li>
                                        <li><a class="dropdown-item" href="/rc_activity">액티비티</a></li>
                                        <li><a class="dropdown-item" href="/rc_preview">관람</a></li>
                                        <li><a class="dropdown-item" href="/rc_atelier">공방</a></li>
                                        <li><a class="dropdown-item" href="/rc_hobby">취미</a></li>
                                        <li><a class="dropdown-item" href="/rc_travel">여행</a></li>
                                        <li><a class="dropdown-item" href="/rc_etc">기타</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="/meeting_review">Communication</a></li>
                            </ul>
                            <form class="d-flex mt-3" role="search">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-secondary" type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </nav>

        </section>

        <!-- 슬라이드 쇼 이색 취미 추천 -->
        <section id="section2">
            <a style="display:scroll;position:fixed;bottom:15px;right:10px;color: black;z-index: 10;" href="#" title="top">TOP</a> 
            <!-- <img src="../../images/배경1.png" class="mainImg"> -->
            <div id="carouselExampleDark" style="border-radius: 10px;" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3"
                        aria-label="Slide 4"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4"
                        aria-label="Slide 5"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="5"
                        aria-label="Slide 6"></button>
                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="6"
                        aria-label="Slide 7"></button>
                </div>
                <div class="carousel-inner">

                    `<div class="carousel-item active" data-bs-interval="10000">
                        <img src="../../mainImg/마이리틀케이크.jpg" style="border-radius: 10px;" class="d-block w-100" alt="..." height="500px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="sildeTitle slideMsg1">강남 마이리틀 케이브</h5>
                            <p class="sildeSubTitle slideDetail1">낮에는 개인공간, 저녁에는 칵테일,위스키와 책을 읽을 수 있는 프라이빗한 공간</p>
                        </div>
                    </div>

                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="../../mainImg/서촌블루스.jpg" style="border-radius: 10px;" class="d-block w-100" alt="..." height="500px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="sildeTitle slideMsg2">종로 서촌블루스 </h5>
                            <p class="sildeSubTitle slideDetail2">다양한 장르의 음악과 따듯한 분위기를 제공하는 LP Music Cafe</p>
                        </div>

                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="../../mainImg/익스큐제모아.jpg" style="border-radius: 10px;" class="d-block w-100" alt="..." height="500px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="sildeTitle slideMsg3">용산 익스큐제모아</h5>
                            <p class="sildeSubTitle slideDetail3">뒤돌게 만드는 매력적인 나만의 향을 찾는 기쁨을 누려보세요<br>
                            향수다운 향수를 만드는 인디 퍼퓨머리 익스큐제모아</p>
                        </div>

                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="../../mainImg/서울 생각마루.jpg" style="border-radius: 10px;" class="d-block w-100" alt="..." height="500px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="sildeTitle slideMsg4">서울생각마루</h5>
                            <p class="sildeSubTitle slideDetail4">바꿔야함 휴관임</p>
                        </div>

                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="../../mainImg/카페 무니.jpg" style="border-radius: 10px;" class="d-block w-100" alt="..." height="500px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="sildeTitle slideMsg5">강남 카페무니</h5>
                            <p class="sildeSubTitle slideDetail5">당신의 인생샷을 위한 멋진 핑크 감성의 핫플 대형 카페</p>
                        </div>

                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="../../image/야구장(액티비티).jpg" style="border-radius: 10px;" class="d-block w-100" alt="..." height="500px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="sildeTitle slideMsg6">잠실 야구장</h5>
                            <p class="sildeSubTitle slideDetail6">신나는 야구 경기로 모두를 힐링의 시간으로 초대합니다! <br>함께 스트라이크와 홈런의 열기를 느끼며, 웃음과 함성이 가득한 야구장에서 즐거운 시간을 만들보세요!</p>
                        </div>

                    </div>
                    <div class="carousel-item" data-bs-interval="2000">
                        <img src="../../image/와인바(와인).jpg" style="border-radius: 10px;" class="d-block w-100" alt="..." height="500px">
                        <div class="carousel-caption d-none d-md-block">
                            <h5 class="sildeTitle slideMsg7">을지로 와인바 5시 37분</h5>
                            <p class="sildeSubTitle slideDetail7">Some representative placeholder content for the third slide.</p>
                        </div>
                    </div>


                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

        </section>

        <section id="section4">
            <div>
                <h1 id="KategorieTitle"> MENU </h1>

                <div id="kategorieMenu">

                    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">

                        <div class="btn-group kate" role="group" aria-label="First group">
                            <button type="button" class="btn btn-outline-secondary kateBtn">
                                <img src="../../icon/카테고리.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="First group">
                            <button type="button" class="btn btn-outline-secondary kaBtn1">
                                <img src="../../icon/점심.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Second group">
                            <button type="button" class="btn btn-outline-secondary kaBtn2">
                                <img src="../../icon/맥주.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Third group">
                            <button type="button" class="btn btn-outline-secondary kaBtn3">
                                <img src="../../icon/와인.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Third group">
                            <button type="button" class="btn btn-outline-secondary kaBtn4">
                                <img src="../../icon/카페.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Third group">
                            <button type="button" class="btn btn-outline-secondary kaBtn5">
                                <img src="../../icon/액티비티.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="First group">
                            <button type="button" class="btn btn-outline-secondary kaBtn6">
                                <img src="../../icon/관람.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Second group">
                            <button type="button" class="btn btn-outline-secondary kaBtn7">
                                <img src="../../icon/공방.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Third group">
                            <button type="button" class="btn btn-outline-secondary kaBtn8">
                                <img src="../../icon/노래.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Third group">
                            <button type="button" class="btn btn-outline-secondary kaBtn9">
                                <img src="../../icon/여행.png" alt="">
                            </button>
                        </div>

                        <div class="btn-group " role="group" aria-label="Third group">
                            <button type="button" class="btn btn-outline-secondary kaBtn10">
                                <img src="../../icon/기타.png" alt="">
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </section>




        <section id="section3">
            <!-- 왼쪽 -->
            <div class="test_obj1">
                <div class="card mb-3" style="max-width: 800px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="../../mainImg/소통사진.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">Communication</h5>
                                <h5 class="card-title">- "직장 내 소통 활성화" -</h5>
                                <br>
                                <p class="card-text">"소통은 갈등을 해소하고 협력을 이끌어내는 마법의 열쇠입니다."</p>
                                <br>
                                <p class="card-text">회사에서 투명하고 개방적인 소통이 활발하다면 조직 내에서 긍정적인 문화를 구축할 수 있습니다.
                                    직원들이 자유롭게 의견을 나누고 소통할 수 있으면 조직 내부의 신뢰와 존중이 강화됩니다.
                                    또, 좋은 소통은 직원들의 만족도를 높이고 이직률을 낮출 수 있습니다.
                                    직원들이 의견을 듣고 존중받으며 능동적으로 참여할 수 있다면 직원들의 업무 만족도와 회사에 대한 충성도가 증가합니다.
                                </p>
                                <p class="card-text"><small class="text-body-secondary"></small></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 오른쪽 -->
            <div class="test_obj2">
                <div class="card mb-3" style="max-width: 800px;">
                    <div class="row g-0">
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">happiness</h5>
                                <h5 class="card-title">- "취미를 통한 즐거움" -</h5>
                                <br>
                                <p class="card-text">취미는 일상 생활에서의 스트레스와 압박을 해소하는 데 도움을 줍니다. 특히 일과의 균형을 맞추고 휴식 시간을 갖는 것은
                                    건강과 행복에 긍정적인 영향을 미칩니다.
                                    우리는 좋아하는 일을 하고 즐길 때, 행복을 느끼고 삶에 만족감을 얻을 수 있습니다. 취미 생활을 통한 즐거움은 우리 삶에 풍요롭고 의미 있는 요소를
                                    더해줄 수 있습니다.
                                </p>
                                <p class="card-text"><small class="text-body-secondary"></small></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="../../image/즐거움.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                    </div>
                </div>
            </div>


            <!-- 왼쪽 -->
            <div class="test_obj3">
                <div class="card mb-3" style="max-width: 800px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="../../image/친구들.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">new encounter</h5>
                                <h5 class="card-title">- "새로운 만남의 가치" -</h5>
                                <br>
                                <p class="card-text">"새로운 만남은 우리 인생의 컬러풀한 팔레트입니다. 색다른 사람들과 만남으로써 우리는 더 아름다워지고, 다채롭고 화려한
                                    인생의 그림을 그릴 수 있습니다."</p>
                                <br>
                                <p class="card-text"> 새로운 만남은 성장과 배움, 네트워킹과 기회, 이해와 존중, 즐거움과 기쁨 그리고 세계적 시야 확장 등 다양한 가치를
                                    지닙니다. 새로운 만남은 우리 삶에 풍요로움과 의미를 더해주는 중요한 요소입니다.</p>
                                <p class="card-text"><small class="text-body-secondary"></small></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>



        <section id="section5">
            <h1 id="KategorieTitle"> BEST PLACE </h1>

            <div class="layout main-container2">

                <div id="main-container">
                    <div class="box" ><맛집><br>
                        <img src="../../image/모던오뎅(맛집).jpg" width="100%" height="100%" style="border-radius: 10px;">
                        모던오뎅 - 가로수길
                    </div>
                    <div class="box"><와인><br>
                        <img src="../../image/뮤직컴플렉스(와인).jpg" width="100%" height="100%" style="border-radius: 10px;">
                        뮤직컴플렉스 - 종로
                    </div>
                    <div class="box"><카페><br>
                        <img src="../../image/겨울이머무는집(카페).jpg" width="100%" height="100%" style="border-radius: 10px;">
                        겨울이머무는집 - 마포
                    </div>
                    <div class="box"><공방><br>
                        <img src="../../image/미싱공방(공방).jpg" width="100%" height="100%" style="border-radius: 10px;">
                        미싱공방 - 강남
                    </div>
                    <div class="box"><여행><br>
                        <img src="../../image/해운대(여행).jpg" width="100%" height="100%" style="border-radius: 10px;">
                        해운대 - 부산
                    </div>
                    <div class="box"><취미><br>
                        <img src="../../image/미술(취미).jpg" width="100%" height="100%" style="border-radius: 10px;">
                        미술 - 여의도
                    </div>

    
                </div>

            </div>

            <!-- 버튼을 클릭하면 새 창으로 열릴 콘텐츠 -->
            <div id="content" style="display: none;">
                <h1>새 창에서 볼 콘텐츠</h1>
                <p>이곳에 내용이 들어갑니다.</p>
            </div>
        </section>

        <!-- Remove the container if you want to extend the Footer to full width. -->
<div class="my-5">
    <!-- Footer -->
    <footer
            class="text-center text-lg-start text-dark"
            style="background-color: rgb(120, 134, 107)" 
            >
      <!-- Section: Social media -->
      <section
               class="d-flex justify-content-between p-4 text-white"
               style="background-color: rgb(120, 134, 107)"
               >
        <!-- Left -->
        <div class="me-5">
          <span class="footerTop">InterestHub</span>
          <br><br>
          <span class="footerBo">서울시 내 주요 업무지구 여의도, 종로, 강남주변의 놀거리 추천 플랫폼</span>

          <div id="footerIcon">
            <img src="../../image/인스타.png" alt="">
            <img src="../../image/페이스북.png" alt="">
            <img src="../../image/유투브.png" alt="">
            <img src="../../image/구글.png" alt="">
            </div>

        </div>
        <!-- Left -->
        
        
  
        <!-- Right -->
        <div>
          <a href="" class="text-white me-4">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="" class="text-white me-4">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="" class="text-white me-4">
            <i class="fab fa-google"></i>
          </a>
          <a href="" class="text-white me-4">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="" class="text-white me-4">
            <i class="fab fa-linkedin"></i>
          </a>
          <a href="" class="text-white me-4">
            <i class="fab fa-github"></i>
          </a>
        </div>
        <!-- Right -->
      </section>
      <!-- Section: Social media -->
  
      <!-- Section: Links  -->
      <section class="">
        <div class="text-center text-md-start ">
          <!-- Grid row -->
          <div class="row mt-3">
            <!-- Grid column -->
            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
              <!-- Content -->
              <h6 class="text-uppercase fw-bold">Company name</h6>
              <hr
                  class="mb-4 mt-0 d-inline-block mx-auto"
                  style="width: 60px; background-color: #7c4dff; height: 2px"
                  />
              <p>
                InterestHub Company
              </p>
            </div>
            <!-- Grid column -->
  
            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
              <!-- Links -->
              <h6 class="text-uppercase fw-bold">Members</h6>
              <hr
                  class="mb-4 mt-0 d-inline-block mx-auto"
                  style="width: 60px; background-color: #7c4dff; height: 2px"
                  />
              <p>
                <a href="https://www.instagram.com/j_eeeun_99/" class="text-dark">김성현</a>
              </p>
              <p>
                <a href="https://www.instagram.com/j_eeeun_99/" class="text-dark">박지은</a>
              </p>
              <p>
                <a href="https://www.instagram.com/j_eeeun_99/" class="text-dark">정재근</a>
              </p>
            </div>
            <!-- Grid column -->
  

  
            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
              <!-- Links -->
              <h6 class="text-uppercase fw-bold">Contact</h6>
              <hr
                  class="mb-4 mt-0 d-inline-block mx-auto"
                  style="width: 60px; background-color: #7c4dff; height: 2px"
                  />
              <p><i class="fas fa-home mr-3"></i> Snag Bong, 319, 4th floor</p>
              <p><i class="fas fa-envelope mr-3"></i> https://www.instagram.com/j_eeeun_99 </p>
              <p><i class="fas fa-phone mr-3"></i> + 01 7165 8755</p>
            </div>
            <!-- Grid column -->
          </div>
          <!-- Grid row -->
        </div>
        <br><br>
          </section>
      <!-- Section: Links  -->

      
  
      <!-- Copyright -->
      <div
           class="text-center p-3"
           style="background-color: rgba(0, 0, 0, 0.2)"
           >
        © 2023 Copyright:
        <a class="text-dark" href="https://mdbootstrap.com/"
           >MDBootstrap.com</a
          >
      </div>
      <!-- Copyright -->
    </footer>
    <!-- Footer -->
  </div>
  <!-- End of .container -->

        <!-- <footer>
            <br>
            <div id="footerMsg">
                <h1 id="footerTitle">InterestHub</h1>
                <br>
                <p>서울시 내 주요 업무지구 여의도, 종로, 강남주변의 놀거리 추천 플랫폼</p>
            </div>

            <div id="footerIcon">
                <img src="../../image/인스타.png" alt="">
                <img src="../../image/페이스북.png" alt="">
                <img src="../../image/유투브.png" alt="">
                <img src="../../image/구글.png" alt="">
            </div>
            <div id="footerInfo">
                <p> 문의 사항 : 050-1234-1234</p>
                <p> 김성현, 정재근, 박지은</p>
                <br><br>
            </div>
        </footer> -->

        <script src="/JS/jquery-3.7.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            (() => {

                let sessionState = false;

                // 세션정보


                const hbst_logo = document.querySelector('#main-title');
                const btnJoin = document.querySelector('#btnJoin');
                const spnWelcome = document.querySelector('#spnWelcome');
                const btnLogin = document.querySelector('#btnLogin');

                // 버튼 돔//
                const kaBtn1 = document.querySelector('.kaBtn1');
                const kaBtn2 = document.querySelector('.kaBtn2');
                const kaBtn3 = document.querySelector('.kaBtn3');
                const kaBtn4 = document.querySelector('.kaBtn4');
                const kaBtn5 = document.querySelector('.kaBtn5');
                const kaBtn6 = document.querySelector('.kaBtn6');
                const kaBtn7 = document.querySelector('.kaBtn7');
                const kaBtn8 = document.querySelector('.kaBtn8');
                const kaBtn9 = document.querySelector('.kaBtn9');
                const kaBtn10 = document.querySelector('.kaBtn10');


                const setSessionState = function () {
                    if ('${vo.userId}' === '') {
                        sessionState = false;
                    }
                    else {
                        sessionState = true;
                    }

                }

                const setWelcomeMsg = function () {
                    if (sessionState === true) {
                        spnWelcome.textContent = '${vo.name}님 반갑습니다';
                    }
                    else {
                        spnWelcome.textContent = '';
                    }
                }

                const setLoginButton = function () {
                    if (sessionState === true) {
                        btnLogin.textContent = 'Logout';
                    }
                    else {
                        btnLogin.textContent = 'Login';
                    }

                }

                const setJoinButton = function () {
                    if (sessionState === true) {
                        btnJoin.style.display = 'none';
                    }
                    else {
                        btnJoin.textContent = 'Join_us';
                    }

                }

                //////////// 호출부
                btnLogin.addEventListener('click', () => {
                    console.log("로그인버튼");
                    // 로그인상태
                    if (sessionState === true) {
                        location.href = '/logout';
                    }
                    else {
                        location.href = '/login';
                    }

                });

                btnJoin.addEventListener('click', () => {
                    console.log("회원가입버튼");
                    location.href = '/join';
                });

                hbst_logo.addEventListener('click', () => {
                    location.href = '/main2';
                });

                // 카테고리 버튼 이벤트리스너
                kaBtn1.addEventListener('click', () => {
                    console.log("식당버튼");
                    location.href = '/rc_eat';
                });

                kaBtn2.addEventListener('click', () => {
                    location.href = '/rc_hof'
                });

                kaBtn3.addEventListener('click', () => {
                    location.href = '/rc_wine'
                });

                kaBtn4.addEventListener('click', () => {
                    location.href = '/rc_cafe'
                });

                kaBtn5.addEventListener('click', () => {
                    location.href = '/rc_activity'
                });

                kaBtn6.addEventListener('click', () => {
                    location.href = '/rc_preview'
                });

                kaBtn7.addEventListener('click', () => {
                    location.href = '/rc_atelier'
                });

                kaBtn8.addEventListener('click', () => {
                    location.href = '/rc_hobby'
                });

                kaBtn9.addEventListener('click', () => {
                    location.href = '/rc_travel'
                });

                kaBtn10.addEventListener('click', () => {
                    location.href = '/rc_etc'
                });



                setSessionState();
                setWelcomeMsg();
                setLoginButton();
                setJoinButton();

            })();
        </script>
    </body>

    </html>