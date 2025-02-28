<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>회원가입</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Dokdo&family=Josefin+Sans:ital,wght@1,500&family=Poor+Story&display=swap"
            rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="style.css">

        <style>
            #table {
                text-align: left;
                margin: auto;
            }

            .button {
                background-color: rgb(143, 151, 121);
                border-color: rgb(143, 151, 121);
                border-radius: 5px;
            }

            .login-container {
                border: 1px solid gray;
                border-radius: 10px;
                margin: 0 auto;
                width: 550px;
                height: 550px;
                padding-top: 5%;
                padding-left: 3%;
            }

            .input {
                border: 1px solid gray;
                border-radius: 5px;
                display: block;
                width: 300px;
                height: 25px;
            }

            .logo-flex {
                width: 600px;
                display: flex;
                justify-content: center;
                margin: 0 auto;
            }

            .btJoin {
                text-align: center;
            }

            .itv {
                height: 10px;
            }

            .Join-title {
                color: rgb(120, 134, 107);
                font-size: 3rem;
                font-weight: bold;
                position: relative;
                margin-top: 15%;
                margin-bottom: 30px;
            }
        </style>





    </head>

    <body>

        <div class="logo-flex">
            <p class="Join-title"> Join-us </p>
        </div>
        <hr>

        <!-- 네비게이션 -->
        <div id="joinNav">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="/main">Home</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="./login">Login</a>
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


        <div class="login-container">
            <table id="table">
                <tr>
                    <td><input class="input" placeholder="아이디" type="text" name="userId" id="txtUserId"></td>
                    <td><button class="button" type="button" id="btnCheckId" style="width: 100px;">중복확인</button></td>
                </tr>
                <tr class="itv"></tr>
                <tr>
                    <td><input class="input" placeholder="비밀번호" type="password" name="userPw" id="txtUserPw"></td>
                </tr>
                <tr class="itv"></tr>
                <tr>
                    <td><input class="input" placeholder="비밀번호확인" type="password" id="txtCheckPw"></td>
                </tr>
                <tr class="itv"></tr>
                <tr>
                    <td><input class="input" placeholder="이름" type="text" name="name" id="txtName"></td>
                </tr>
                <tr class="itv"></tr>
                <tr>
                    <td><label for="txtGender">성별</label>
                        <label><input type="radio" value="남자" name="gender" id="male">남</label>
                        <label><input type="radio" value="여자" name="gender" id="female">여</label>
                    </td>
                </tr>
                <tr class="itv"></tr>
                <!-- <tr>
                    <td>프로필 사진</td>
                    <td>
                        <input type="file" name="thumbnail" id="thumbnail" accept="image/*">
                    </td>
                </tr><tr class="itv"></tr> -->
                <tr>
                    <td><label for="txtInterests">관심사</label>
                        <select name="interests" id="txtInterests">
                            <option>없음</option>
                            <option>맛집</option>
                            <option>술</option>
                            <option>와인</option>
                            <option>카페</option>
                            <option>액티비티</option>
                            <option>관람</option>
                            <option>공방</option>
                            <option>취미</option>
                            <option>여행</option>
                            <option>기타</option>
                        </select>
                    </td>
                    <td>
                        <select>
                            <option>회사</option>
                            <option>삼성</option>
                            <option>LG</option>
                            <option>KT</option>
                            <option>SK</option>
                            <option>현대</option>
                            <option>기아</option>
                            <option>한화</option>
                            <option>롯데</option>
                            <option>포스코</option>
                            <option>GS</option>
                            <option>신세계</option>
                            <option>카카오</option>
                            <option>네이버</option>
                        </select>
                    </td>
                </tr>
                <tr class="itv"></tr>
                <tr>
                    <td><input class="input" placeholder="이메일" type="email" name="email" id="txtEmail"></td>
                </tr>
                <tr class="itv"></tr>

                <tr>
                    <td><input class="input" type="text" id="postcode" placeholder="우편번호"></td>
                    <td><button class="button" type="button" , id="findAddress">우편번호 찾기</button></td>
                </tr>
                <tr class="itv"></tr>
                <tr>
                    <td><input class="input" type="text" id="address" placeholder="주소"></td>
                </tr>
                <tr class="itv"></tr>
                <tr>
                    <td><input class="input" type="text" id="detailAddress" placeholder="상세주소"></td>
                </tr>
                <tr>
                    <td><input type="text" id="extraAddress" placeholder="참고항목"></td>
                </tr> 


            </table>
            <br>
        </div>
        <br>
        <div class="btJoin">
            <button class="button" type="button" id="btnJoin" style="width: 600px; height: 40px;">회원가입</button>
        </div>


        <script src="/JS/jquery-3.7.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
            (() => {
                const txtUserId = document.querySelector('#txtUserId');
                const txtUserPw = document.querySelector('#txtUserPw');
                const txtCheckPw = document.querySelector('#txtCheckPw');
                const txtName = document.querySelector('#txtName');
                const txtEmail = document.querySelector('#txtEmail');
                const txtInterests = document.querySelector('#txtInterests');
                const btnJoin = document.querySelector('#btnJoin');
                const btnCheckId = document.querySelector('#btnCheckId');
                const $findAddress = document.querySelector('#findAddress');
                const $postcode = document.querySelector('#postcode');
                const $address = document.querySelector('#address');
                const $detailAddress = document.querySelector('#detailAddress');
                const $extraAddress = document.querySelector('#extraAddress');

                let idChecking = false;         // 중복확인을 통과하면 true로 변경.
                let checkedId = '';             // 체크가 완료된 아이디

                //////////////////////////////////////////////////////////////////////
                // 함수
                const checkJoinData = function () {
                    if ((idChecking === false) || (checkedId != txtUserId.value)) {
                        alert('아이디 중복확인을 해주세요.');
                        txtUserId.value = '';
                        txtUserId.focus();

                        return false;
                    }

                    if (txtUserPw.value.length === 0) {
                        alert('비밀번호를 넣어주세요');
                        txtUserPw.value = '';
                        txtCheckPw.value = '';
                        txtUserPw.focus();

                        return false;

                    }

                    if (txtUserPw.value != txtCheckPw.value) {
                        alert('비밀번호와 비밀번호 확인이 서로 다릅니다.');
                        txtCheckPw.value = '';
                        txtCheckPw.focus();

                        return false;

                    }

                    if (txtName.value.length === 0) {
                        alert('이름을 넣어주세요');
                        txtName.focus();
                        return false;
                    }

                    if (txtEmail.value.length === 0) {
                        alert('이메일을 넣어주세요');
                        txtEmail.focus();
                        return false;
                    }

                    if (($postcode.value.length === 0) || ($address.value.length === 0) ||
                        ($detailAddress.value.length === 0) || ($extraAddress.value.length === 0)) {
                        alert('주소를 넣어주세요');
                        return false;
                    }

                    return true;
                }

                const execDaumPostcode = function () {
                    new daum.Postcode({
                        oncomplete: function (data) {
                            var addr = '';
                            var extraAddr = '';

                            if (data.userSelectedType === 'R') {
                                addr = data.roadAddress;
                            } else {
                                addr = data.jibunAddress;
                            }

                            if (data.userSelectedType === 'R') {
                                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                                    extraAddr += data.bname;
                                }
                                if (data.buildingName !== '' && data.apartment === 'Y') {
                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                }
                                if (extraAddr !== '') {
                                    extraAddr = ' (' + extraAddr + ')';
                                }
                                $extraAddress.value = extraAddr;

                            } else {
                                $extraAddress.value = '';
                            }

                            $postcode.value = data.zonecode;
                            $address.value = addr;
                            $detailAddress.focus();
                        }
                    }).open();
                }


                //////////////////////////////////////////////////////////////////////
                // 이벤트 핸들러.

                btnJoin.addEventListener('click', () => {

                    // 데이터를 검사한다.
                    if (false === checkJoinData()) {
                        return;

                    }

                    // 가입을 위한 요청데이터를 만든다.
                    let requestData = {
                        userId: txtUserId.value,
                        userPw: txtUserPw.value,
                        name: txtName.value,
                        gender: $("input[type=radio][name=gender]:checked").val(),
                        inter: txtInterests.value,
                        email: txtEmail.value,
                        address: $address.value + $extraAddress.value + $detailAddress.value
                    };


                    $.ajax({
                        url: '/join',
                        type: 'POST',
                        data: requestData,
                        success: function (data) {
                            console.log(requestData);
                            if (data === "OK") {
                                alert("회원가입이 완료되었습니다. 로그인 후 이용해주세요.");
                                location.href = '/login';
                            }
                            else {
                                alert("회원가입에 실패하였습니다.")
                            }
                        }

                    });



                });

                // 중복확인
                btnCheckId.addEventListener('click', () => {
                    //1. 아이디를 가지고 온다.
                    if (txtUserId.value.length === 0) {
                        alert('아이디를 입력하세요');
                        return;
                    }

                    let requestData = {
                        userId: txtUserId.value
                    };

                    // 서버와 통신을 수행하는 객체
                    let xhr = new XMLHttpRequest();

                    xhr.open('POST', '/checkid', true);
                    xhr.setRequestHeader('Content-Type', 'application/json');

                    xhr.onreadystatechange = function () {
                        // 서버와 통신하는 객체의 상태가 바뀌었다 ==> 서버에서 새로운 데이터가 왔다.
                        if (xhr.readyState === XMLHttpRequest.DONE) {
                            // http 200은 요청이 성공했음을 의미한다
                            // 400은 잘못 요청했음을 의미
                            // 500은 요청을 수행할수 없음을 의미
                            if (xhr.status === 200) {
                                let data = xhr.responseText;
                                if (data == 'FAIL') {
                                    alert('이미 가입된 아이디가 있습니다.');
                                    idChecking = false;
                                    txtUserId.value = '';
                                    txtUserId.focus();
                                }
                                else {
                                    alert('가입할 수 있는 아이디입니다');
                                    idChecking = true;
                                    checkedId = txtUserId.value;
                                    txtUserPw.focus();
                                }
                            }
                            else {
                                console.error('Request failed with status:', xhr.status);
                            }
                        }
                    };

                    let dat = JSON.stringify(requestData);
                    console.log(dat);
                    xhr.send(dat);


                });

                $findAddress.addEventListener('click', () => {
                    execDaumPostcode();
                });

            })(); 
        </script>

    </body>