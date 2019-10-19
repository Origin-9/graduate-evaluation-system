package com.ori.project.system.mutual_evaluation.service;

import com.ori.project.system.mutual_evaluation.domain.Rating;
import com.ori.project.system.mutual_evaluation.domain.Student;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
public interface IStuGradeService {

    /**
     * 查询题组成员
     * @return
     */
    @Transactional
    public List<Student> findStuGradeList(String id, String grade, String school);

    /**
     * 向 sys_stu 添加 A_grade、A_grade_sum、A_grade_num 评分数据
     * @param list
     * @return
     */
    @Transactional
    public String addGradeScore(List<Rating> list, String id, String school);

    /**
     * 查看该同学是否已经提交评分
     * @return
     */
    @Transactional
    public int findIsGrade(String id, String school);
}
