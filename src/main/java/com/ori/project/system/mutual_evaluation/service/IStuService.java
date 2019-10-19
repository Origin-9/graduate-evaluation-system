package com.ori.project.system.mutual_evaluation.service;

import com.ori.project.system.mutual_evaluation.domain.Man;
import com.ori.project.system.mutual_evaluation.domain.StuScore;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author : Ori
 * @date : 2019/9/29
 */

public interface IStuService {

    /**
     * 查询学生题组
     * @param id
     * @param school
     * @return
     */
    @Transactional
    public String findGroup(String id, String school);

    @Transactional
    public StuScore findScore(String id, String school);

    @Transactional
    public int is_EvaluationCompleted(String group, String id, String school, String grade,String term);

    @Transactional
    void UpdateScore(Man man);
}
