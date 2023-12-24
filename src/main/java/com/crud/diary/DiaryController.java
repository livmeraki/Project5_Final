package com.crud.diary;

import com.crud.bean.DiaryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DiaryController {

    @Autowired
    DiaryService diaryService;

    @RequestMapping(value="/view/{id}",method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model){
        DiaryVO diaryVO = diaryService.getDiary(id);
        model.addAttribute("u", diaryVO);
        return "view";
    }
    @RequestMapping(value = "/posts",method= RequestMethod.GET)
    public String diarylist(Model model){
        model.addAttribute("list",diaryService.getDiaryList());
        return "posts";
    }
    @RequestMapping(value="/add",method=RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value="/addok",method=RequestMethod.POST)
    public String addPostOK(DiaryVO vo){
        if(diaryService.insertDiary(vo) == 0){
            System.out.println("데이터 추가 실패");
        }else{
            System.out.println("데이터 추가 성공!!");
        }
        return "redirect:posts";
    }

    @RequestMapping(value="/editform/{id}",method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        DiaryVO diaryVO = diaryService.getDiary(id);
        model.addAttribute("diaryVO", diaryVO);
        return "editform";
    }

    @RequestMapping(value="/editok",method = RequestMethod.POST)
    public String editPostOK(DiaryVO vo){
        if(diaryService.updateDiary(vo) == 0){
            System.out.println("데이터 수정 실패 :(");
        }else{
            System.out.println("데이터 수정 성공!!");
        }
        return "redirect:posts";
    }

    @RequestMapping(value="/deleteok/{id}",method = RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id){
        if(diaryService.deleteDiary(id) == 0){
            System.out.println("데이터 삭제 실패");
        }else{
            System.out.println("데이터 삭제 성공!!");
        }
        return "redirect:../posts";
    }
}
