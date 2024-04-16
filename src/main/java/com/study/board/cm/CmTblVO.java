package com.study.board.cm;

import lombok.Data;

@Data
public class CmTblVO {    
    // 설계속성
    private int page;
    private int commentPage;
    

    // CMTBL
    private int rowNum;
    private String userId;
    private String mbSeq;
    private String cmSeq;
    private String cmContent;
    private String cmDate;
    private String writer;

}
