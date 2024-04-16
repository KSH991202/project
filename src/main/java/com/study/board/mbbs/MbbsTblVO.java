package com.study.board.mbbs;

import lombok.Data;

@Data
public class MbbsTblVO {    
    // 설계속성
    private int page;
    private int rowsPerPage;

    private String searchField;
    private String searchKeyword;
    
    // 기본속성
    private int rowNum;
    private String userId;
    private String seq;
    private String title;
    private String content;
    private String divi;
    private String regDate;
    private String maxNum;

}
