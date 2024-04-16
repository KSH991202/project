package com.study.board.mrvbbs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





@Repository
public class MrvbbsDAO 
{
    
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;


    public int selectMrvbbsRowCount() throws Exception
    {
        return sqlSessionTemplate.selectOne("selectMrvbbsRowCount");
    }

    public List<MrvbbsTblVO> selectMrvbbsList(MrvbbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectMrvbbsList", vo);

    }

    public MrvbbsTblVO selectMrvbbsContent(MrvbbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectMrvbbsContent", vo);
    }

    public int updateMrvbbsContent(MrvbbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.update("updateMrvbbsContent", vo);
    }

    public int insertMrvbbsContent(MrvbbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.insert("insertMrvbbsContent", vo);
    }

      public int deleteMrvbbsContent(MrvbbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.delete("deleteMrvbbsContent", vo);
    }

    public List<MrvbbsTblVO> selectMrvbbsSearchList(MrvbbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectMrvbbsSearchList", vo);
    }


}
