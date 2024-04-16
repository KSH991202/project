package com.study.board.mrvbbs;

import lombok.Data;

@Data
public class MrvbbsTblVO 
{
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
    private String regDate;
    private String divi;
}
