<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>profil</title>

            <style>
                .square {
                    width: 500px;
                    /* 원의 가로 길이 */
                    height: 700px;
                    /* 원의 세로 길이 */
                    background-color: #5edb34;
                    /* 원의 배경색 */
                    border-radius: 100px;
                    /* 원 모양을 만들기 위해 */
                    margin: 0 auto;
                    flex-direction: column;
                    display: flex;
                    align-items: center;
                }

                .circle {
                    width: 150px;
                    /* 원의 가로 길이 */
                    height: 150px;
                    /* 원의 세로 길이 */
                    background-color: gray;
                    /* 원의 배경색 */
                    border-radius: 50%;
                    /* 원 모양을 만들기 위해 */
                    cursor: pointer;
                    margin-right: 30px;
                }

                .center-text {
                    text-align: center;
                }

                .profile-name {
                    text-align: center;
                }

                .profile-menu {
                    font-size: 30px;
                    flex-direction: column;
                    justify-content: space-evenly;

                }

                a {
                    text-decoration: none;
                }

                #title {
                    margin: 0 auto;
                }


                #mainpro {
                    display: flex;
                    justify-content: left;
                }

                #profiltable {
                    width: 60%;
                    border: 1px solid black;
                    border-radius: 10px;
                    margin-left: auto;
                    margin-right: auto;
                }

                #mainAll {
                    width: 60%;
                    margin-left: auto;
                    margin-right: auto;
                    margin-top: 50px;
                    
                }

                #main-txt {
                    position: relative;
                    top: 10px;
                }

                #btn {
                    display: flex;
                    justify-content: center;
                }

                #btn button {
                    margin-top: 30px;
                    margin-left: 2em;
                }
            </style>

        </head>

        <body>


            <tiles:insertDefinition name="main-layout" />

            <div>
                <!-- <h1 class="center-text" id="title">My Page</h1> -->

                <div id="mainAll">
                    <div id="mainpro">
                        <img class="circle" width="100%" height="100%" id="profile-button" src="data:image/jpeg;base64,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">

                        <div id="main-txt">
                            <h1 id="userId">${vo.name}</h1><br>
                            <h3>${vo.email}</h3><br>
                            <h3>관심사</h3>
                            <p>${vo.inter}</p>
                        </div>

                    </div>
                    <div id="btn">
                        <button class="button">일반 회원</button>
                        <button class="button">회원 정보 수정</button>
                        <button class="button">회원 탈퇴</button>
                    </div>
                </div>
            </div>
            <br>
            <hr>

            <div id="profiltable">
                <div class="profile-menu">
                    <oi>일정 관리 : </oi>
                    <select>
                        <option>내가 만든 모임 </option>
                        <option>내가 참여할 모임 </option>
                    </select>
                    <br>
                    <oi>활동 기록 : </oi>
                </div>
            </div>







            <script>
                (() => {
                    let sessionState = false;

                    const userId = document.querySelector("#userId");

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
                            userId.textContent = '${vo.name} 님';
                        }
                        else {
                            userId.textContent = '로그인 해주세요';
                        }
                    }


                    // const profiltxt = function()
                    // {
                    //     let name = "박지은입니다 테스트";

                    //     profil.innerHTML = name;
                    // }

                    document.getElementById("profile-button").addEventListener("click", function () {
                        var options = "width=600, height=400, menubar=no, toolbar=no";

                        var newWindow = window.open("멍멍멍", "", options);

                        newWindow.addEventListener("load", () => {
                            let content = '${vo.name} 님의 회원 정보입니다' + '<br>' + '<br>' +
                                '아이디 : ${vo.userId}' + '<br>' + '<br>' +
                                '이메일 : ${vo.email}' + '<br>' + '<br>' +
                                '주소 : ${vo.address}' + '<br>' + '<br>' +
                                '성별 : ${vo.gender}' + '<br>' + '<br>' +
                                '관심사 : ${vo.inter}';
                            newWindow.document.body.innerHTML = content;
                        });
                    });


                    // //////////////////호출부
                    setSessionState();
                    setWelcomeMsg();

                })();
            // })();
            </script>
        </body>

        </html>