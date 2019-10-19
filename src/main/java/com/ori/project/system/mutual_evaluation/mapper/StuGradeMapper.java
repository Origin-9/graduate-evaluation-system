package com.ori.project.system.mutual_evaluation.mapper;

import com.ori.project.system.mutual_evaluation.domain.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
@Repository
public interface StuGradeMapper {

    /**
     * 查询学生同年级名单
     * @return
     */
    @Select("select * from sys_stu where grade = #{grade} AND school = #{school}")
    List<Student> findStuGradeList(@Param("grade") String grade, @Param("school") String school);

    /**
     * 查询同年级学生成员人数
     * @param grade
     * @param school
     * @return
     */
    @Select("select count(*) from sys_stu where grade = #{grade} AND school = #{school}")
    int findGradeMemberNum(@Param("grade") String grade, @Param("school") String school);
}
