package com.ori.project.system.mutual_evaluation.service.impl;

import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.domain.TeacherRating;
import com.ori.project.system.mutual_evaluation.mapper.StuGroupMapper;
import com.ori.project.system.mutual_evaluation.mapper.TeaMapper;
import com.ori.project.system.mutual_evaluation.service.ITeaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

/**
 * @author : Ori
 * @date : 2019/10/3
 */
@Service
public class TeaServiceImpl implements ITeaService {

    @Autowired
    private TeaMapper teaMapper;

    @Autowired
    private StuGroupMapper stuGroupMapper;

    @Override
    public List<Student> findGroupList(String id,String school) {
        return stuGroupMapper.findStuGroupList(teaMapper.findGroup(id,school),school);
    }

    @Override
    public String teaAddScore(List<TeacherRating> list,String id,String school) {
        Iterator<TeacherRating> it = list.iterator();
        while(it.hasNext()) {
            TeacherRating teacherRating = it.next();
            teaMapper.updateTeaScore(teacherRating.A_ScoreToString(),teacherRating.B_ScoreToString(),teacherRating.C_ScoreToString(),teacherRating.getId(),teacherRating.getSchool());
        }
        teaMapper.updateIsGrade(id,school);
        return "success";
    }

    @Override
    public List<Student> findGroupIsEvaluationList(String id, String school) {
        return stuGroupMapper.findStuGroupList(teaMapper.findGroup(id,school),school);
    }

    @Override
    public int findIsMark(String id, String school) {
        return teaMapper.findIsMark(id,school);
    }
}
