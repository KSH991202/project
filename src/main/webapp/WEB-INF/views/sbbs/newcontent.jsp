<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>meeting</title>
        </head>

        <body>

            <tiles:insertDefinition name="main-layout2" />

            <br>
            <div class="txtCenter">
                <h1>장소 추천</h1><br>
            </div>

            <div class="newCt">
                제목 : <input type="text" id="txtTitle" maxlength="150">
                <br>
                분류 : 
                <select id="selDivi">
                    <option value="BEST">맛집</option>
                    <option value="HOF">술</option>
                    <option value="WINE">와인</option>
                    <option value="CAFE">카페</option>
                    <option value="ACT">액티비티</option>
                    <option value="PV">관람</option>
                    <option value="ATE">공방</option>
                    <option value="HOBBY">취미</option>
                    <option value="TRIP">여행</option>
                    <option value="ETC">기타</option>
                </select><br><br>
                <span style="vertical-align: top;">내용 : </span>
                <textarea id="txtContent1" cols="70" rows="30"></textarea>
            </div><br>
            <div class="txtCenter">

                <input type="file" name="thumbnail" id="thumbnail" accept="image/*"><br><br>

                <button type="button" class="button" id="btnList">목록으로</button>
                <button type="button" class="button" id="btnInsert">저장</button>

            </div>



            <script src="/JS/jquery-3.7.0.min.js"></script>
            <script>
                (() => {
                    const txtTitle = document.querySelector('#txtTitle');
                    const selDivi = document.querySelector('#selDivi');
                    const txtContent = document.querySelector('#txtContent1');
                    const btnList = document.querySelector('#btnList');
                    const btnInsert = document.querySelector('#btnInsert');
                    const $thumbnail = document.getElementById('thumbnail');



                    //////////////////////////////////////////////////////////////////////
                    // 함수
                    const checkValues = function () {
                        if ((txtTitle.value.length == 0) ||
                            (txtContent.value.length == 0)) {
                            return false;
                        }

                        return true;

                    }



                    //////////////////////////////////////////////////////////////////////
                    // 이벤트 핸들러
                    btnList.addEventListener('click', () => {
                        history.back();

                    });


                    btnInsert.addEventListener('click', () => {

                        // 서버에 전달할 데이터를 만든다.
                        if (false === checkValues()) {
                            alert('제목이나 내용이 없거나 문제가 있습니다.');
                            return;
                        }

                        let formData = new FormData();

                        formData.append('userId', '${session.userId}');
                        formData.append('title', txtTitle.value);
                        formData.append('content', txtContent.value);
                        formData.append('divi', selDivi.options[selDivi.selectedIndex].value);

                        if ($thumbnail.files[0] !== undefined) {
                            formData.append('thumbnail', $thumbnail.files[0]);
                        }

                        let xhr = new XMLHttpRequest();
                        xhr.open('POST', '/sbbs/newcontent', true);

                        xhr.onreadystatechange = function () {
                            if (xhr.readyState === XMLHttpRequest.DONE) {
                                if (xhr.status === 200) {
                                    location.href = document.referrer;
                                }
                                else {
                                    console.log('실패');
                                }
                            }
                        }
                        xhr.send(formData);

                    });

                })(); 
            </script>

        </body>