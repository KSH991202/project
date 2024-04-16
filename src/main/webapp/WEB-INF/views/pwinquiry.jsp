<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title></title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link
                href="https://fonts.googleapis.com/css2?family=Dokdo&family=Josefin+Sans:ital,wght@1,500&family=Poor+Story&display=swap"
                rel="stylesheet">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

            <link rel="stylesheet" href="reset.css">
            <link rel="stylesheet" href="style.css">
        </head>

        <body>
            <div class="logo-flex">
                <h1 class="Title">InterestHub</h1>
            </div>

            <div class="findid" >
                <h1 class="inquiry">Find PW</h1>
                <hr>
                아이디 <input type="text" name="userId" id="txtUserId">
                <button type="button" id="btnSubmit">확인</button>
                <hr>
                <div id="getId"></div>
                <hr>
                <button type="button" id="btnLogin">로그인</button>
            </div>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <script src="/JS/jquery-3.7.0.min.js"></script>

            <script>
                (() => {

                    const btnSubmit = document.querySelector('#btnSubmit');
                    const txtUserId = document.querySelector('#txtUserId');
                    const $btnLogin = document.querySelector('#btnLogin');
                    const $getId = document.querySelector('#getId');


                    $btnLogin.addEventListener('click', () => {
                        location.href = '/login';
                    });

                    btnSubmit.addEventListener('click', () => {


                        if (txtUserId.value.length === 0) {
                            alert('아이디를 입력하세요');
                            return;
                        }

                        let requestData = {
                            userId: txtUserId.value
                        };

                        $.ajax({
                            url: '/checkPw',
                            type: 'POST',
                            data: requestData,
                            success: function (data) {
                                let res = '';
                                if (data == '$NOID') {
                                    alert('입력하신 정보가 없습니다');
                                    console.log(data);
                                    location.href = '/pwinquiry';
                                }
                                else {
                                    res = '입력한 아이디의 비밀번호를 가입했을때 입력했던 메일 주소로 보냈습니다.';
                                    $getId.innerHTML = res;
                                }

                            }
                        })
                    });


                })(); 
            </script>
        </body>