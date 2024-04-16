<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>만남 추천</title>
        </head>

        <body>
            <tiles:insertDefinition name="main-layout" />

            <div id="rcSpace">
                <h1 id="rcSpaceTitle">여행</h1>

                <div class="btnWrite">
                    <button type="button" id="btw" class="button">글작성</button>
                </div>
            </div>

            <div class="layout">

                <div id="main-container2" class="main-tbl">

                </div>
            </div>
            <br><br><br><br>
            <div id="indexBtn" class="btn rcbtn">
                <button type="button" class="button1" id="btnPrev">이전</button>
                <button type="button" class="button1" id="btn1">1</button>
                <button type="button" class="button1" id="btn2">2</button>
                <button type="button" class="button1" id="btn3">3</button>
                <button type="button" class="button1" id="btn4">4</button>
                <button type="button" class="button1" id="btn5">5</button>
                <button type="button" class="button1" id="btnNext">다음</button>
            </div>

            <script src="/JS/jquery-3.7.0.min.js"></script>
            <script>
                (() => {

                    let sessionState = false;

                    let rowCount = 0;

                    let rowsPerPage = 6;

                    let curSection = 0;
                    let pagesPerSection = 5;

                    let count = 0;
                    let remainRow = rowCount;
                    let realPage = 0;

                    const btnPrev = document.querySelector('#btnPrev');
                    const btn1 = document.querySelector('#btn1');
                    const btn2 = document.querySelector('#btn2');
                    const btn3 = document.querySelector('#btn3');
                    const btn4 = document.querySelector('#btn4');
                    const btn5 = document.querySelector('#btn5');
                    const btnNext = document.querySelector('#btnNext');

                    const setBBS = function (page) {
                        let requestData = {
                            divi: 'TRIP',
                            page: page,
                            rowsPerPage: rowsPerPage,
                        };
                        $.ajax({
                            url: '/sbbs/list',
                            type: 'POST',
                            data: requestData,
                            success: function (data) {
                                let bstr = '';

                                const maintbl = document.querySelector('.main-tbl');

                                rowCount = data.rowCount;
                                
                                maintbl.innerHTML = '';
                                
                                for (let i = 0; i < data.sbbsList.length; i++) {

                                    console.log("sbbsList : " + i + "--" + data.sbbsList[i].divi);
                                    if (data.sbbsList[i].divi == 'TRIP') {

                                        bstr = '';
                                        bstr += '<div class="box">';
                                        bstr += '<img class="rcimg" src=\"imgs/member/thumbnail/' + data.sbbsList[i].fileCode + '.jpg' + '\">';
                                        bstr += '<h3><a href=\"/sbbs/content?userId=' + data.sbbsList[i].userId + '&seq=' + data.sbbsList[i].seq + '&divi=' + data.sbbsList[i].divi + '\">' + data.sbbsList[i].title + '</a></h3>';
                                        bstr += '</div>';
                                        maintbl.innerHTML += bstr;
                                    }

                                }
                            }
                        });

                    }

                    const getRealPage = function (pageOffset) {
                        return (curSection * pagesPerSection) + pageOffset;

                    }

                    const setSessionState = function () {
                        if ('${vo.userId}' === '') {
                            sessionState = false;
                        }
                        else {
                            sessionState = true;
                        }
                    }

                    const $btw = document.getElementById('btw');

                    $btw.addEventListener('click', () => {
                        if (sessionState == true) {
                            location.href = "/sbbs/newcontent";
                        }
                        else {
                            alert('로그인을 해야 합니다.');
                            location.href = "/login";
                        }
                    });


                    btnPrev.addEventListener('click', () => {

                        if (curSection <= 0) {
                            alert('이전 내용은 없습니다.');
                            return;
                        }

                        curSection--;

                        //이전페이지의 0번으로 설정한다.
                        let realPage = getRealPage(0);
                        setBBS(realPage);

                        for (let i = 0; i < curSection + 1; i++) {
                            btn1.innerHTML = 1 + (rowsPerPage * curSection);
                            btn2.innerHTML = 2 + (rowsPerPage * curSection);
                            btn3.innerHTML = 3 + (rowsPerPage * curSection);
                            btn4.innerHTML = 4 + (rowsPerPage * curSection);
                            btn5.innerHTML = 5 + (rowsPerPage * curSection);
                        }
                    });

                    //Next
                    btnNext.addEventListener('click', () => {
                        // 남은페이지
                        let rowsPerSection = rowsPerPage * pagesPerSection;
                        remainRow = rowCount - (rowsPerSection * (curSection + 1));

                        if (remainRow > 0) {
                            curSection++;
                            // 페이지 띄워주기
                            let realPage = getRealPage(0);
                            setBBS(realPage);
                            console.log("setbbs(번호) : " + (rowsPerPage * curSection));

                            // 버튼숫자 바꿔주기
                            for (let i = 0; i < curSection; i++) {
                                btn1.innerHTML = 1 + (rowsPerPage * curSection - pagesPerSection);
                                btn2.innerHTML = 2 + (rowsPerPage * curSection - pagesPerSection);
                                btn3.innerHTML = 3 + (rowsPerPage * curSection - pagesPerSection);
                                btn4.innerHTML = 4 + (rowsPerPage * curSection - pagesPerSection);
                                btn5.innerHTML = 5 + (rowsPerPage * curSection - pagesPerSection);
                            }

                        }
                        else {
                            alert("다음페이지가 없습니다");
                        }

                    });

                    btn1.addEventListener('click', () => {
                        const offset = 0;

                        const realPage = getRealPage(offset);
                        setBBS(realPage);

                    });

                    btn2.addEventListener('click', () => {
                        const offset = 1;

                        const realPage = getRealPage(offset);
                        setBBS(realPage);

                    });

                    btn3.addEventListener('click', () => {
                        const offset = 2;

                        const realPage = getRealPage(offset);
                        setBBS(realPage);

                    });

                    btn4.addEventListener('click', () => {
                        const offset = 3;

                        const realPage = getRealPage(offset);
                        setBBS(realPage);

                    });

                    btn5.addEventListener('click', () => {
                        const offset = 4;

                        const realPage = getRealPage(offset);
                        setBBS(realPage);

                    });
                    setBBS(0);
                    setSessionState();

                })();
            </script>
        </body>

        </html>