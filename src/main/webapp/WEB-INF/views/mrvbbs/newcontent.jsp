class="button" <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Communication</title>
        </head>


        <body>

            <tiles:insertDefinition name="main-layout2" />
            <br>
            <div class="txtCenter">
                <h1>커뮤니티</h1>
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

                        let requestData = {
                            userId: '${session.userId}',
                            title: txtTitle.value,
                            content: txtContent.value,
                            divi: selDivi.options[selDivi.selectedIndex].value

                        }

                        console.log(requestData);

                        $.ajax({
                            url: '/mrvbbs/newcontent',
                            type: 'POST',
                            data: requestData,
                            success: function (data) {
                                if (data === 'OK') {
                                    alert('저장되었습니다.');
                                    location.href = '/meeting_review';
                                }
                                else {
                                    alert('저장에 실패하였습니다.');
                                }
                            }
                        });

                    });

                })(); 
            </script>

        </body>