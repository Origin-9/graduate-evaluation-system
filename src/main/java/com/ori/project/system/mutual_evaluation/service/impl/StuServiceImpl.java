package com.ori.project.system.mutual_evaluation.service.impl;

import com.ori.project.system.mutual_evaluation.domain.AverageScore;
import com.ori.project.system.mutual_evaluation.domain.Man;
import com.ori.project.system.mutual_evaluation.domain.StuScore;
import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.mapper.*;
import com.ori.project.system.mutual_evaluation.service.IStuService;
import com.ori.project.system.mutual_evaluation.tool.ScoreCalculation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
@Service
public class StuServiceImpl implements IStuService {

    @Autowired
    private StuMapper stuMapper;

    @Autowired
    private StuGroupMapper stuGroupMapper;

    @Autowired
    private TeaMapper teaMapper;

    @Autowired
    private UploadExcelMapper uploadExcelMapper;

    @Autowired
    private AverageScoreMapper averageScoreMapper;


    /**
     *  查询学生题组
     * @param id
     * @param school
     * @return
     */
    @Override
    public String findGroup(String id, String school) {
        return stuMapper.findGroup(id,school);
    }

    @Override
    public StuScore findScore(String id, String school,String term) {
        return stuMapper.findScore(id,school,term);
    }

    @Override
    public int is_EvaluationCompleted(String group, String id, String school, String grade,String term) {
        List<Student> list = stuMapper.findStu(term,school);
        Iterator<Student> it = list.iterator();
        System.out.println(list);
        while(it.hasNext()){
            Student student = it.next();
            if(student.getIs_gradee() == 0 || student.getIs_groupe() == 0)
                return 0;
        }

        if(teaMapper.findIsMark1(group,school) == 0)
            return 0;
        return 1;
    }

    @Override
    public void UpdateScore(Man man) {

        //计算成绩存入数据表
        Student student = uploadExcelMapper.findAStudent(man.getId(),man.getSchool());

        //a_calculation A项二级指标 分数字符串
        String a_calculation = ScoreCalculation.A_calculation(student.getA_group_sum(),student.getA_grade_sum(),student.getA_tea());

        //b_calculation B项二级指标 分数字符串
        String b_calculation  = ScoreCalculation.B_calculation(student.getB_tea());

        //        //b_calculation B项三级指标 分数字符串
        String b1_calculation = ScoreCalculation.B1_calculation(student.getB_tea());

        //A，C 二级指标 B项三级指标 分数 set 属性值，写入数据库
        StuScore stuScore = new StuScore(StringToInt(a_calculation.split(",")),StringToInt(b1_calculation.split(",")),StringToInt(student.getC_tea().split(",")));
        stuScore.setId(man.getId());
        stuScore.setSchool(man.getSchool());
        String term = stuMapper.findTerm(man.getId(),man.getSchool());
        stuScore.setTerm(term);

        //总分计算
        int calculation = ScoreCalculation.calculation(a_calculation,b_calculation,student.getC_tea());

        stuScore.setScores(calculation);

        // 学生A，C 二级指标 B项三级指标，以及总分，学期存入数据库
        stuMapper.insertScore(stuScore);

        //计算 创新能力，创新素养，创新知识 分值，存入 averagescore
        //更新平均分
        int a = ScoreCalculation.Acalculation(a_calculation);
        int b = ScoreCalculation.Bcalculation(b_calculation);
        int c = ScoreCalculation.Ccalculation(student.getC_tea());

        if(averageScoreMapper.findAAverageScore(term) == null){
            AverageScore averageScore = new AverageScore();
            averageScore.setTerm(term);
            averageScoreMapper.insertStu(term);
        }
        AverageScore averageScore = averageScoreMapper.findAAverageScore(term);

        averageScore.setASum(averageScore.getASum() + a);
        averageScore.setBSum(averageScore.getBSum() + b);
        averageScore.setCSum(averageScore.getCSum() + c);
        averageScore.setScoreSum(averageScore.getScoreSum() + calculation);

        averageScore.setANum(averageScore.getANum() + 1);
        averageScore.setBNum(averageScore.getBNum() + 1);
        averageScore.setCNum(averageScore.getCNum() + 1);
        averageScore.setScoreNum(averageScore.getScoreNum() + 1);

        averageScore.setAverageA((int)Math.round(averageScore.getASum()/averageScore.getANum()));
        averageScore.setAverageB((int)Math.round(averageScore.getBSum()/averageScore.getBNum()));
        averageScore.setAverageC((int)Math.round(averageScore.getCSum()/averageScore.getCNum()));
        averageScore.setAverageScore((int)Math.round(averageScore.getScoreSum()/averageScore.getScoreNum()));

        averageScoreMapper.updateAverageScore(averageScore);
    }
    private int[] StringToInt(String[] arrs){
        int[] ints = new int[arrs.length];
        for(int i=0;i<arrs.length;i++){
            ints[i]=Integer.parseInt(arrs[i]);
        }
        return ints;
    }
}
