package com.ori.project.system.mutual_evaluation.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ori.project.system.mutual_evaluation.domain.*;
import com.ori.project.system.mutual_evaluation.service.IAverageScoreService;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.collections.list.TreeList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/**
 * @author : Ori
 * @date : 2019/10/12
 */
@Controller
@RequestMapping("/system/mainEdge")
public class MainController {


    @Autowired
    private IAverageScoreService iAverageScoreService;

    @ApiOperation(value = "主页获取成绩页面")
    @ResponseBody
    @GetMapping("/personalScore")
    public ModelAndView personalScore() throws Exception{
        ObjectMapper mapper = new ObjectMapper(); //转换器
        ModelAndView mav = new ModelAndView(new MappingJackson2JsonView());
        TreeSet<Zhanshi> list = new TreeSet<Zhanshi>();
        Iterator<AverageScore> it = iAverageScoreService.findAverageScore().iterator();
        while(it.hasNext()) {
            AverageScore averageScore = it.next();
            Zhanshi zhanshi = new Zhanshi();
            zhanshi.set创新素养平均分(averageScore.getAverageA());
            zhanshi.set创新能力平均分(averageScore.getAverageB());
            zhanshi.set创新知识平均分(averageScore.getAverageB());
            zhanshi.set总成绩平均分(averageScore.getAverageScore());
            zhanshi.setTerm(averageScore.getTerm());
            list.add(zhanshi);
        }
        ArrayList<Zhanshi> arrayList = new ArrayList<Zhanshi>();
        for(int i = 0;i<5;i++){
            if(list.isEmpty())
                continue;
            arrayList.add(list.pollFirst());
        }
        String json=mapper.writeValueAsString(arrayList); //将对象转换成json
        mav.addObject("data",json);

        return mav;
    }

}
