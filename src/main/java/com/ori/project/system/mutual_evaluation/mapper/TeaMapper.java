package com.ori.project.system.mutual_evaluation.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
@Repository
public interface TeaMapper {

    /**
     *  查询某老师的课题组
     * @param id
     * @param school
     * @return
     */
    @Select("select groupNum from sys_tea where id = #{id} and school = #{school}")
    String findGroup(@Param("id") String id, @Param("school") String school);

    /**
     * 老师评完之后更新学生 老师评分项 的成绩
     * @param A_tea
     * @param B_tea
     * @param C_tea
     * @param id
     * @param school
     */
    @Update("update sys_stu set A_tea=#{A_tea},B_tea=#{B_tea},C_tea=#{C_tea} " +
            " where id = #{id} and school = #{school}")
    void updateTeaScore(@Param("A_tea") String A_tea, @Param("B_tea") String B_tea, @Param("C_tea") String C_tea, @Param("id") String id, @Param("school") String school);

    /**
     * 更改老师评分状态
     * @param id
     * @param school
     */
    @Update("update sys_tea set is_mark = '1' where id = #{id} and school = #{school}")
    void updateIsGrade(@Param("id") String id, @Param("school") String school);

    /**
     * 查询老师是否已评
     * 使用 给老师展示评分页面 前 查看老师是否已评
     * @param id
     * @param school
     * @return
     */
    @Select("select is_mark from sys_tea where id = #{id} and school = #{school}")
    int findIsMark(@Param("id") String id, @Param("school") String school);

    /**
     * 查看同课题组内的老师是否已评
     * @param groupNum
     * @param school
     * @return
     */
    @Select("select is_mark from sys_tea where groupNum = #{groupNum} and school = #{school}")
    int findIsMark1(@Param("groupNum") String groupNum, @Param("school") String school);
}
