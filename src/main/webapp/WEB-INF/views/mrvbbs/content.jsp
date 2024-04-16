<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>content</title>
        </head>

        <body>

            <tiles:insertDefinition name="main-layout2" />

            <!-- <div id="content">
                <h2 id="txtTitle">${vo.title}</h2><span id="txtId">작성자 : ${vo.userId}</span>
                <br><br>
                <textarea id="txtContent">${vo.content}</textarea>
                <br>
            </div> -->

            <div class="container-sm master_container">
                <div class="mb-3 titleArea">
                    <div id="divi">[${vo.divi}]</div>
                    <h1 id="txtTitle" name="title">${vo.title}</h1>
                    <span id="txtId">${vo.userId}</span><br>
                    <div class="writerInfo">
                        <div class="profileAreaLower">
                            <span class="regDate">${vo.regDate}</span>
                        </div>
                    </div>
                </div>
                <textarea id="txtContent">${vo.content}</textarea>

                <div id="contentBtn">
                    <button type="button" id="btnList" class="button">목록으로</button>
                    <button type="button" id="btnUpdate" class="button">수정</button>
                    <button type="button" id="btnDelete" class="button">삭제</button>
                </div>
            </div>

            <script src="/JS/jquery-3.7.0.min.js"></script>
            <script>
                (() => {
                    let myContent = false;

                    const txtTitle = document.querySelector('#txtTitle');
                    const txtContent = document.querySelector('#txtContent');
                    const btnList = document.querySelector('#btnList');
                    const btnUpdate = document.querySelector('#btnUpdate');
                    const btnDelete = document.querySelector('#btnDelete');


                    //////////////////////////////////////////////////////////////////
                    // 함수
                    const checkMyContent = function () {
                        if ('${session.userId}' === '${vo.userId}') {
                            myContent = true;
                        }
                        else {
                            myContent = false;
                        }

                    }

                    const setUiObject = function () {
                        // 내 컨텐츠가 아니라면 읽기만 가능하다.
                        if (myContent === false) {
                            txtTitle.setAttribute('readonly', 'readonly');
                            txtContent.setAttribute('readonly', 'readonly');
                            btnUpdate.setAttribute('disabled', 'disabled');

                        }

                    }
                    ///////////////////////////////////////////////////////////////////
                    // 이벤트 핸들러.
                    btnList.addEventListener('click', () => {
                        history.back();
                    });

                    btnUpdate.addEventListener('click', () => {

                        // 던질 데이터를 마련한다. (id, seq, title, content)
                        let requestData = {
                            userId: '${vo.userId}',
                            seq: '${vo.seq}',
                            title: txtTitle.value,
                            content: txtContent.value
                        };

                        $.ajax({
                            url: '/mrbbs/content',
                            type: 'POST',
                            data: requestData,
                            success: function (data) {
                                if (data === "OK") {
                                    alert('수정되었습니다.');
                                    history.back();
                                }
                                else {
                                    alert('수정에 실패하였습니다.');
                                }
                            }

                        });

                    });

                    // 게시판 지우기
                    btnDelete.addEventListener('click', () => {

                        let reqData = {
                            userId: '${vo.userId}',
                            seq: '${vo.seq}'
                        };

                        console.log(reqData);
                        $.ajax({
                            url: '/mrvbbs/deletecontent',
                            type: 'POST',
                            data: reqData,
                            success: function (data) {

                                if (data === "OK") {

                                    alert('삭제.');
                                    location.href = "/meeting_review";

                                }
                                else {
                                    alert('실패.');
                                }
                            }
                        });
                    });

                    ///////////////////////////////////////////////////////////////////
                    // 호출부
                    checkMyContent();       // 내 컨텐츠인지를 체크.내 컨텐츠 인 경우 myContent => true
                    setUiObject();          // UI 설정을 해준다. (readonly 등등)

                })(); 
            </script>

        </body>