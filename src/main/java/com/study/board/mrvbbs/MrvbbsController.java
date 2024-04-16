package com.study.board.mrvbbs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.study.board.common.SessionUtil;
import com.study.board.user.UserTblVO;





@Controller
public class MrvbbsController 
{
    @Autowired
    MrvbbsDAO mrvbbsDAO;


    @PostMapping("/mrvbbs/list")
    @ResponseBody
    public MrvbbsMstVO bbsList(@ModelAttribute("MrvbbsTblVO") MrvbbsTblVO vo) throws Exception
    {
        MrvbbsMstVO mrvbbsMstVO = new MrvbbsMstVO();

        System.out.println(mrvbbsMstVO);
        int rowCount = mrvbbsDAO.selectMrvbbsRowCount();
        System.out.println(rowCount);

        List<MrvbbsTblVO> list = mrvbbsDAO.selectMrvbbsList(vo);

        System.out.println(list);
        mrvbbsMstVO.setRowCount(rowCount);
        mrvbbsMstVO.setMrvbbsList(list);

        return mrvbbsMstVO;

    }

    @PostMapping("/mrvbbs/searchList")
    @ResponseBody  
    public MrvbbsMstVO mrvbbsSearchList(MrvbbsTblVO vo) throws Exception
    {
        MrvbbsMstVO mrvbbsMstVO = new MrvbbsMstVO();


        int rowCount = mrvbbsDAO.selectMrvbbsRowCount();
        List<MrvbbsTblVO> list = mrvbbsDAO.selectMrvbbsSearchList(vo);

        System.out.println("list : " + list);
        
        mrvbbsMstVO.setRowCount(rowCount);
        mrvbbsMstVO.setMrvbbsSearchList(list);

        return mrvbbsMstVO;

    }


    @GetMapping("/mrvbbs/content")
    public String content(@ModelAttribute("MrvbbsTblVO") MrvbbsTblVO vo, 
                          Model model) throws Exception
    {
        MrvbbsTblVO resultVO = mrvbbsDAO.selectMrvbbsContent(vo);

        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");

        model.addAttribute("vo", resultVO);
        model.addAttribute("session", userTblVO);

        return "mrvbbs/content";
    }

    @PostMapping("/mrvbbs/content")
    @ResponseBody
    public String content(@ModelAttribute("MrvbbsTblVO") MrvbbsTblVO vo) throws Exception
    {
        int updateCount = mrvbbsDAO.updateMrvbbsContent(vo);

        if (updateCount == 1) {
            return "OK";
        }
        else {
            return "FAIL";
        }
    }

    @PostMapping("/mrvbbs/deletecontent")
    @ResponseBody
    public String deleteContent(@ModelAttribute("MrvbbsTblVO")MrvbbsTblVO vo) throws Exception
    {
        int deleteCount = mrvbbsDAO.deleteMrvbbsContent(vo);

        System.out.println("tqtq");
        if (deleteCount == 1)
        {
            System.out.println("tqd");
            return "OK";
        }
        else
        {
            System.out.println(deleteCount);
            return "FAIL";
        }
    }

    @GetMapping("/mrvbbs/newcontent")
    public String newContent(Model model) throws Exception
    {
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
        model.addAttribute("session", userTblVO);

        return "mrvbbs/newcontent";
    }

    @PostMapping("/mrvbbs/newcontent")
    @ResponseBody            
    public String newContent(@ModelAttribute("MrvbbsTblVO") MrvbbsTblVO vo) throws Exception    
    {
        int count = mrvbbsDAO.insertMrvbbsContent(vo);

        if (count == 1) {
            return "OK";
        }
        else {
            return "FAIL";
        }

    }






}
