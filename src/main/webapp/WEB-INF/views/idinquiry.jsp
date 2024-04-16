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

        <body >
        
            <div class="logo-flex">
                <h1 class="Title">InterestHub</h1>
            </div>

        
                <div class="findid" >
                    <h1 class="inquiry">Find ID</h1>
                    <hr>
                    이메일 <input type="email" name="email" id="txtEmail">
                    <button type="button" id="btnSubmit">확인</button>
                    <hr>
                    <div id="getId"></div>
                    <hr>
                    <button type="button" id="btnfirst">로그인</button>
                </div>
                
            <script src="/JS/jquery-3.7.0.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

            <script>
                (() => {

                    const btnSubmit = document.querySelector('#btnSubmit');
                    const txtEmail = document.querySelector('#txtEmail');
                    const $btnfirst = document.querySelector('#btnfirst');
                    const $getId = document.querySelector('#getId');

                    let idChecking = false;         // 중복확인을 통과하면 true로 변경.
                    let checkedId = '';             // 체크가 완료된 아이디


                    $btnfirst.addEventListener('click', () => {
                        location.href = '/login';
                    });

                    btnSubmit.addEventListener('click', () => {


                        if (txtEmail.value.length === 0) {
                            alert('이메일을 입력하세요');
                            return;
                        }

                        let requestData = {
                            email: txtEmail.value
                        };

                        $.ajax({
                            url: '/checkEmail',
                            type: 'POST',
                            data: requestData,
                            success: function (data) {
                                let res = '';
                                if (data == '$NOUSER') {
                                    alert('입력하신 정보가 없습니다');
                                    console.log(data);
                                    location.href = '/idinquiry';
                                }
                                else {
                                    res = '찾으시는 ID는 ' + '<b>' + data + '</b>' + ' 입니다';
                                    $getId.innerHTML = res;
                                }

                            }
                        })

                    });



                })(); 
            </script>
        </body>