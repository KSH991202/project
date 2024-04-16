package com.study.board.cm;

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
public class CmController {

    @Autowired
    CmDAO cmDAO;

    @PostMapping("/cm/list")
    @ResponseBody  
    public CmMstVO cmList(@ModelAttribute("CmTblVO") CmTblVO vo) throws Exception
    {
        CmMstVO mbsMstVO = new CmMstVO();

        int rowCount = cmDAO.selectcmRowCount();
        System.out.println("list : " + vo);
        
        List<CmTblVO> list = cmDAO.selectcmList(vo);
        System.out.println("listlistlist : " + list);

        mbsMstVO.setRowCount(rowCount);
        mbsMstVO.setCmList(list);

        return mbsMstVO;
        
    }

    
    @GetMapping("/cm/content")     
    public String content(@ModelAttribute("CmTblVO") CmTblVO vo, 
                          Model model) throws Exception
    {        
        CmTblVO resultVO = cmDAO.selectcmContent(vo);

        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");

        model.addAttribute("vo", resultVO);
        model.addAttribute("session", userTblVO);

        return "cm/content";
    }

    @PostMapping("/cm/content")
    @ResponseBody         
    public String content(@ModelAttribute("CmTblVO") CmTblVO vo) throws Exception
    {
        int updateCount = cmDAO.updatecmContent(vo);

        if (updateCount == 1) {
            return "OK";
        }
        else {
            return "FAIL";
        }
    }

    @PostMapping("/cm/coment")
    @ResponseBody         
    public String conment(@ModelAttribute("CmTblVO") CmTblVO vo) throws Exception
    {

        CmMstVO cmMstVO = new CmMstVO();
        int rowCount = cmDAO.selectcmRowCount();
        
        List<CmTblVO> list = cmDAO.selectcmList(vo);
        
        cmMstVO.setRowCount(rowCount);
        cmMstVO.setCmList(list);

        System.out.println("댓글 리스트 : " + list);
        int count = cmDAO.insertComent(vo);

        System.out.println("count : " + count);
        
        if (count == 1) {
            return "OK";
        }
        else {
            return "FAIL";
        }

    }

    @PostMapping("/cm/deletecontent")
    @ResponseBody
    public String deleteContent(@ModelAttribute("CmTblVO")CmTblVO vo) throws Exception
    {
        int deleteCount = cmDAO.deletecmContent(vo);

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
    
    @GetMapping("/cm/newcontent")
    public String newContent(Model model) throws Exception
    {
        System.out.println("겟트");
        UserTblVO userTblVO = (UserTblVO) SessionUtil.getAttribute("USER");
        model.addAttribute("session", userTblVO);

        return "cm/newcontent";
    }


}