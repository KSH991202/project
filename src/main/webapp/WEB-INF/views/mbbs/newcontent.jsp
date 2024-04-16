<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>


        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>모임 추가</title>
            <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
        </head>

        <body>
            <tiles:insertDefinition name="main-layout2" />

            <br>
            <div class="txtCenter">
                <h1>모임 작성</h1><br>
            </div>
            <div class="newCt">

                제목 : <input type="text" id="txtTitle" maxlength="150">
                <br>
                날짜 : <input type="text" id="selectDate">
                정원 :
                <select id="selNum">
                    <option value="2">2명</option>
                    <option value="3">3명</option>
                    <option value="4">4명</option>
                    <option value="5">5명</option>
                </select>
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
                </select>
                <br><br>
                <span style="vertical-align: top;">내용 : </span>
                <textarea id="txtContent1" cols="70" rows="30"></textarea>
            </div>
            <br>
            <div class="txtCenter">
                <button type="button" class="button" id="btnList">목록으로</button>
                <button type="button" class="button" id="btnInsert">저장</button>
            </div>

            <script src="/JS/jquery-3.7.0.min.js"></script>
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
            <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
            <script>
                (() => {
                    const txtTitle = document.querySelector('#txtTitle');
                    const selDivi = document.querySelector('#selDivi');
                    const txtContent = document.querySelector('#txtContent1');
                    const btnList = document.querySelector('#btnList');
                    const btnInsert = document.querySelector('#btnInsert');
                    const selNum = document.querySelector('#selNum');


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
                        location.href = '/index';

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
                            divi: selDivi.options[selDivi.selectedIndex].value,
                            maxNum: selNum.options[selNum.selectedIndex].value

                        }
                        console.log(requestData);

                        $.ajax({
                            url: '/mbbs/newcontent',
                            type: 'POST',
                            data: requestData,
                            success: function (data) {
                                if (data === 'OK') {
                                    alert('저장되었습니다.');
                                    location.href = '/index';
                                }
                                else {
                                    alert('저장에 실패하였습니다.');
                                }
                            }
                        });

                    });

                })();

                $(function () {
                    $("#selectDate").datepicker({
                    });
                });
            </script>

        </body>