package com.ori.project.system.mutual_evaluation.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ori.project.system.mutual_evaluation.domain.Man;
import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.domain.TeacherRating;
import com.ori.project.system.mutual_evaluation.service.ITeaService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author : Ori
 * @date : 2019/10/3
 */
@Controller
@RequestMapping("/system/teacher_evaluation")
@CrossOrigin(allowCredentials="true",maxAge = 3600)
public class TeaController {

    private String prefix = "system/teacher_evaluation";

    @Autowired
    private ITeaService iTeaService;


    //跳转教师评分
    @GetMapping("")
    public String tea_eva()
    {
        return prefix + "/teacher";
    }

    //跳转 查看组员评分状态
    @GetMapping("/stuOfTea")
    public String stuOfTea()
    {
        return prefix + "/stuOfTea";
    }

    @ApiOperation(value = "老师获取学生课题组成员")
    @GetMapping("/group_list")
    public ModelAndView group_list(HttpSession session) throws Exception{
        ObjectMapper mapper = new ObjectMapper(); //转换器
        Man man = (Man)session.getAttribute("man");
        String json=mapper.writeValueAsString(iTeaService.findGroupList(man.getId(),man.getSchool())); //将对象转换成json

        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        mav.addObject("is_mark",iTeaService.findIsMark(man.getId(),man.getSchool())+"");
        mav.addObject("data", json);
        return mav;
    }

    @ApiOperation(value = "老师提交对小组内成员评分数据")
    @ApiImplicitParams(
            @ApiImplicitParam( name = "list", value = "小组评分列表", required = true, dataType = "TeacherRating"))
    @PutMapping("/teaAddScore")
    public ModelAndView teaAddScore(@RequestBody List<TeacherRating> list,HttpSession session){
        Man man = (Man)session.getAttribute("man");

        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        mav.addObject("message", iTeaService.teaAddScore(list,man.getId(),man.getSchool()));
        return mav;
    }


    @ApiOperation(value = "老师获取学生课题组成员以及查看是否评价")
    @GetMapping("/GroupIsEvaluationList")
    @ResponseBody
    public List<Student> GroupIsEvaluationList(HttpSession session){
        Man man = (Man)session.getAttribute("man");

        return  iTeaService.findGroupIsEvaluationList(man.getId(),man.getSchool());
    }
}
