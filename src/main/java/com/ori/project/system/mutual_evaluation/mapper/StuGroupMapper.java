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
public interface StuGroupMapper {

    /**
     * 查询同学校下同课题组人员
     * @param group
     * @param school
     * @return
     */
    @Select("select * from sys_stu where groupNum = #{group} AND school = #{school}")
    List<Student> findStuGroupList(@Param("group") String group, @Param("school") String school);

    /**
     * 查询组内人员数量
     * @param group
     * @param school
     * @return
     */
    @Select("select count(*) from sys_stu where groupNum = #{group} AND school = #{school}")
    int findteamMemberNum(@Param("group") String group, @Param("school") String school);
}
