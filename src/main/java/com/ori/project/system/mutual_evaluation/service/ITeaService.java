package com.ori.project.system.mutual_evaluation.service;

import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.domain.TeacherRating;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
public interface ITeaService {

    @Transactional
    public List<Student> findGroupList(String id, String school);

    @Transactional
    public String teaAddScore(List<TeacherRating> list, String id, String school);

    @Transactional
    public List<Student> findGroupIsEvaluationList(String id, String school);

    int findIsMark(String id, String school);
}
