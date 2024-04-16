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

            <div class="container-sm master_container">
                <div class="mb-3 titleArea">
                    <div id="divi">[${vo.divi}]</div>
                    <h1 id="txtTitle" name="title">${vo.title}</h1>
                    <span id="txtId">${vo.userId}</span><br>
                    <div class="writerInfo">
                        <div class="profileAreaLower">
                            <span id="txtId">참여 인원 [<span id="participationNum">1</span> / ${vo.maxNum} ]</span><br>
                            <span class="regDate">${vo.regDate}</span>
                        </div>
                    </div>
                </div>
                <textarea id="txtContent">${vo.content}</textarea>

                <div id="comment">
                    <table id="contentBBS" class=" table-hover">
                        <thead id="thead">
                            <th id="comment-seq">순번</th>
                            <th id="comment-contents">내용</th>
                            <th id="comment-id">아이디</th>
                            <th id="comment-date">날짜</th>
                        </thead>
                        <tbody style="background-color: white;">
                        </tbody>
                    </table>


                    댓글 작성 : <input type="text" id="cmWrite">
                    <button type="button" class="button" id="btnCM1">댓글 등록</button>
                    <br><br>
                </div>
                <div id="contentBtn">
                    <button type="button" id="btnParticipation" class="btnCM">참여하기</button>
                    <button type="button" id="btnList" class="btnCM">목록으로</button>
                    <button type="button" id="btnUpdate" class="btnCM">수정</button>
                    <button type="button" id="btnDelete" class="btnCM">삭제</button>

                </div>
            </div>


            <script src="/JS/jquery-3.7.0.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <script>
                (() => {
                    let myContent = false;    // 내 컨텐츠 인지
                    let partCount = 1;        // 참여 인원
                    let partCheck = false;    // 참여가능 여부


                    let rowsPerPage = 10;
                    let commentPage = 500;   //댓글 얼마나 보여줄지



                    const btnParticipation = document.querySelector('#btnParticipation');
                    const txtTitle = document.querySelector('#txtTitle');
                    const txtContent = document.querySelector('#txtContent');
                    const btnList = document.querySelector('#btnList');
                    const btnUpdate = document.querySelector('#btnUpdate');
                    const btnDelete = document.querySelector('#btnDelete');
                    const btnCM = document.querySelector('#btnCM1');
                    const cmWrite = document.querySelector('#cmWrite');
                    const participationNum = document.querySelector('#participationNum');


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

                    // 댓글리스트 가져오기
                    const setCMbbs = function (page) {
                        let requestData = {
                            page: page,
                            commentPage: commentPage,
                            mbSeq: '${vo.seq}',
                            writer: '${vo.userId}'
                        }

                        $.ajax({
                            url: '/cm/list',
                            type: 'POST',
                            data: requestData,
                            success: function (data)    //data :rowCount, bbsList
                            {
                                console.log(data);
                                let bstr = '';
                                const tblBody = document.querySelector('#contentBBS > tbody');


                                // 전체 카운트를 저장.
                                rowCount = data.rowCount;

                                // 테이블 body를 채워준다.
                                tblBody.innerHTML = '';

                                for (let i = 0; i < data.cmList.length; i++) {

                                    bstr = '';
                                    bstr += '<tr>';
                                    bstr += '<td>' + data.cmList[i].rowNum + '</td>';
                                    bstr += '<td>' + data.cmList[i].cmContent + '</td>';
                                    bstr += '<td>' + data.cmList[i].userId + '</td>';
                                    bstr += '<td>' + data.cmList[i].cmDate + '</td>';
                                    bstr += '</tr>';
                                    tblBody.innerHTML += bstr;

                                }

                            }
                        });


                    }

                    ///////////////////////////////////////////////////////////////////
                    // 이벤트 핸들러.

                    btnParticipation.addEventListener('click', () => {


                        if (partCount == '${vo.maxNum}') {
                            alert('인원이 다 찼습니다');
                        }
                        else if ('${vo.userId}' == '${session.userId}') {
                            alert('이미 참여하셨습니다');
                        }
                        else {
                            partCount++;
                            participationNum.innerHTML = partCount;
                        }
                    });

                    btnList.addEventListener('click', () => {
                        location.href = '/index';
                    });

                    // 게시판 수정
                    btnUpdate.addEventListener('click', () => {

                        let requestData = {
                            userId: '${vo.userId}',
                            seq: '${vo.seq}',
                            title: txtTitle.value,
                            content: txtContent.value
                        };

                        $.ajax({
                            url: '/mbbs/content',
                            type: 'POST',
                            data: requestData,
                            success: function (data) {
                                if (data === "OK") {
                                    alert('수정되었습니다.');
                                    location.href = "/index";
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
                            url: '/mbbs/deletecontent',
                            type: 'POST',
                            data: reqData,
                            success: function (data) {

                                if (data === "OK") {

                                    alert('삭제.');
                                    location.href = "/index";

                                }
                                else {
                                    alert('실패.');
                                }
                            }
                        });
                    });

                    // 댓글달기
                    btnCM.addEventListener('click', () => {
                        console.log("댓글 추가");
                        if (cmWrite.value === "") {
                            alert("내용을 입력해주세요");
                            history.go(0);
                        }

                        else {

                            let requestData = {
                                userId: '${session.userId}',
                                cmContent: cmWrite.value,
                                mbSeq: '${vo.seq}',
                                writer: '${vo.userId}'
                            }

                            $.ajax({
                                url: '/cm/coment',
                                type: 'POST',
                                data: requestData,
                                success: function (data) {
                                    if (data === "OK") {
                                        alert('추가 되었습니다.');
                                        setCMbbs(0);
                                        cmWrite.value = "";
                                    }
                                    else {
                                        alert('추가에 실패하였습니다.');
                                    }
                                }

                            });

                        }

                    });
                    ///////////////////////////////////////////////////////////////////
                    // 호출부
                    checkMyContent();       // 내 컨텐츠인지를 체크.내 컨텐츠 인 경우 myContent => true
                    setUiObject();          // UI 설정을 해준다. (readonly 등등)
                    setCMbbs(0);
                })(); 
            </script>

        </body>