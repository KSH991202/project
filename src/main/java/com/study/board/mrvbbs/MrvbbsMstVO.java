package com.study.board.mrvbbs;

import java.util.List;

import lombok.Data;

@Data
public class MrvbbsMstVO {
    private int rowCount;
    private List<MrvbbsTblVO> mrvbbsList;
    private List<MrvbbsTblVO> mrvbbsSearchList;

}
