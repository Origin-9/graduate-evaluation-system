package com.ori.project.system.mutual_evaluation.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ori.project.system.mutual_evaluation.domain.*;
import com.ori.project.system.mutual_evaluation.service.IStuGradeService;
import com.ori.project.system.mutual_evaluation.service.IStuGroupService;
import com.ori.project.system.mutual_evaluation.service.IStuService;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
@Controller
@RequestMapping("/system/mutual_evaluation")
public class StudentController {

    private String prefix = "system/mutual_evaluation";

    @Autowired
    private IStuGroupService iStuGroupService;
    @Autowired
    private IStuGradeService iStuGradeService;

    @Autowired
    private IStuService iStuService;
    


    //跳转组内评分
    @GetMapping("/inter-group_evaluation")
    public String inter_group_eva()
    {
        return prefix + "/inter-group_evaluation";
    }

    //跳转年级评分
    @GetMapping("/grade_evaluation")
    public String grade_eva()
    {
        return prefix + "/grade_evaluation";
    }

    //跳转年级评分
    @GetMapping("/score")
    public String score()
    {
        return prefix + "/score";
    }

    //思路：通过登录后服务器 session 中存的 学校 专业 学号，查找其课题组号
    @ApiOperation(value = "学生获取学生课题组成员")
    @GetMapping("/inter-group_list")
    public ModelAndView  inter_group_list(HttpSession session) throws Exception{
        ObjectMapper mapper = new ObjectMapper(); //转换器
        Man man = (Man)session.getAttribute("man");
        String json=mapper.writeValueAsString(iStuGroupService.findStuGroupList(man.getId(),man.getSchool())); //将对象转换成json

        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        mav.addObject("is_mark",iStuGroupService.findIsGroup(man.getId(),man.getSchool())+"");
        mav.addObject("data", json);
        return mav;
    }
    @ApiOperation(value = "获取学生同年级成员")
    @GetMapping("/grade_list")
    public ModelAndView grade_list(HttpSession session) throws Exception{
        ObjectMapper mapper = new ObjectMapper(); //转换器
        Man man = (Man)session.getAttribute("man");
        String json=mapper.writeValueAsString(iStuGradeService.findStuGradeList(man.getId(),man.getGrade(),man.getSchool())); //将对象转换成json

        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        mav.addObject("is_mark",iStuGradeService.findIsGrade(man.getId(),man.getSchool())+"");
        mav.addObject("data", json);
        return mav;
    }

    @ApiOperation(value = "提交对小组内成员评分数据")
    @ApiImplicitParams(
            @ApiImplicitParam( name = "list", value = "小组评分列表", required = true, dataType = "Rating"))
    @PutMapping("/addGroupScore")
    public ModelAndView addGroupScore(@RequestBody List<Rating> list,HttpSession session){
        Man man = (Man)session.getAttribute("man");
        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        mav.addObject("message", iStuGroupService.addGroupScore(list,man.getId(),man.getSchool()));
        return mav;
    }

    @ApiOperation(value = "提交对同年级内成员评分数据")
    @ApiImplicitParams(
            @ApiImplicitParam( name = "list", value = "班级评分列表", required = true, dataType = "Rating"))
    @PutMapping("/addGradeScore")
    public ModelAndView addGradeScore(@RequestBody List<Rating> list,HttpSession session){
        Man man = (Man)session.getAttribute("man");
        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        mav.addObject("message", iStuGradeService.addGradeScore(list,man.getId(),man.getSchool()));
        return mav;
    }

    @ApiOperation(value = "获取学生个人成绩")
    @GetMapping("/personalScore")
    public ModelAndView personalScore(HttpSession session) throws Exception{
        ObjectMapper mapper = new ObjectMapper(); //转换器
        Man man = (Man)session.getAttribute("man");
        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        StuScore stuScore = iStuService.findScore(man.getId(),man.getSchool(),man.getTerm());
        if(stuScore!=null){
            String json=mapper.writeValueAsString(stuScore); //将对象转换成json

            mav.addObject("is_EvaluationCompleted",1);
            mav.addObject("data",json);
            return mav;
        }else{
            if (iStuService.is_EvaluationCompleted(man.getGroupNum(),man.getId(),man.getSchool(),man.getGrade(),man.getTerm()) == 0){
                //互评未完成
                mav.addObject("is_EvaluationCompleted",0);
            }else if(iStuService.is_EvaluationCompleted(man.getGroupNum(),man.getId(),man.getSchool(),man.getGrade(),man.getTerm()) == 1){
                //互评完成且成绩表中没数据
                iStuService.UpdateScore(man);

                StuScore stuScore1 = iStuService.findScore(man.getId(),man.getSchool(),man.getTerm());

                String json=mapper.writeValueAsString(stuScore1); //将对象转换成json
                mav.addObject("is_EvaluationCompleted",1);
                mav.addObject("data",json);
                return mav;
            }
        }
                return mav;
    }
}
