package com.ori.project.system.mutual_evaluation.mapper;

import com.ori.project.system.mutual_evaluation.domain.StuScore;
import com.ori.project.system.mutual_evaluation.domain.Student;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
@Repository
public interface StuMapper {

    /**
     *  查询某学校某学生的课题组
     * @param id
     * @param school
     * @return
     */
    @Select("select groupNum from sys_stu where id = #{id} and school = #{school}")
    String findGroup(@Param("id") String id, @Param("school") String school);

    /**
     * 查询某学校某学期的人员
     * 使用：查看某学校某学期学生是否已经互评完毕
     * @param term
     * @param school
     * @return
     */
    @Select("select * from sys_stu where term = #{term} and school = #{school}")
    List<Student> findStu(@Param("term") String term,@Param("school") String school);

    /**
     *  查询 A_group_sum 列值
     * @param id
     * @param school
     * @return
     */
    @Select("select A_group_sum from sys_stu where id = #{id} and school = #{school}")
    String findA_group_sum(@Param("id") String id, @Param("school") String school);

    /**
     * 查询 A_group_num 列值
     * @param id
     * @param school
     * @return
     */
    @Select("select A_group_num from sys_stu where id = #{id} and school = #{school}")
    int findA_group_num(@Param("id") String id, @Param("school") String school);

    /**
     *  更新 被评分学生 同课题组被评成绩
     * @param A_group
     * @param A_group_sum
     * @param A_group_num
     * @param id
     * @param school
     */
    @Update("update sys_stu set A_group=#{A_group},A_group_sum=#{A_group_sum},A_group_num=#{A_group_num} " +
            " where id = #{id} and school = #{school}")
    void updateGroupScore(@Param("A_group") String A_group,
                                 @Param("A_group_sum") String A_group_sum, @Param("A_group_num") int A_group_num,
                                 @Param("id") String id, @Param("school") String school);

    /**
     *  当组内评分提交 修改该表示为已评
     * @param id
     * @param school
     */
    @Update("update sys_stu set is_groupe = '1' where id = #{id} and school = #{school}")
    void updateIsGroup(@Param("id") String id, @Param("school") String school);
    /**
     *  当组内评分提交 修改该表示为已评
     * @param id
     * @param school
     */
    @Update("update sys_stu set is_gradee = '1' where id = #{id} and school = #{school}")
    void updateIsGrade(@Param("id") String id, @Param("school") String school);


    /**
     *  查询 A_group_sum 列值
     * @param id
     * @param school
     * @return
     */
    @Select("select A_grade_sum from sys_stu where id = #{id} and school = #{school}")
    String findA_grade_sum(@Param("id") String id, @Param("school") String school);

    /**
     * 查询 A_group_num 列值
     * @param id
     * @param school
     * @return
     */
    @Select("select A_grade_num from sys_stu where id = #{id} and school = #{school}")
    int findA_grade_num(@Param("id") String id, @Param("school") String school);

    /**
     *  更新 被评分学生 同课题组被评成绩
     * @param A_grade
     * @param A_grade_sum
     * @param A_grade_num
     * @param id
     * @param school
     */
    @Update("update sys_stu set A_grade=#{A_grade},A_grade_sum=#{A_grade_sum},A_grade_num=#{A_grade_num} " +
            " where id = #{id} and school = #{school}")
    void updateGradeScore(@Param("A_grade") String A_grade,
                                 @Param("A_grade_sum") String A_grade_sum, @Param("A_grade_num") int A_grade_num,
                                 @Param("id") String id, @Param("school") String school);


    /**
     * 查询 该学生 是否小组内已经评完
     * @param id
     * @param school
     * @return
     */
    @Select("select is_groupe from sys_stu where id = #{id} and school = #{school}")
    int findIsGroup(@Param("id") String id, @Param("school") String school);

    /**
     * 查询 该学生 年纪内是否已经评完
     * @param id
     * @param school
     * @return
     */
    @Select("select is_gradee from sys_stu where id = #{id} and school = #{school}")
    int findIsGrade(@Param("id") String id, @Param("school") String school);

    /**
     * 查询 学生个人成绩
     * @param id
     * @param school
     * @return
     */
    @Select("select * from personalscore where id = #{id} and school = #{school} and term = #{term}")
    StuScore findScore(@Param("id") String id, @Param("school") String school, @Param("term") String term);

    /**
     * 查询该学生所处学期
     * @param id
     * @param school
     * @return
     */
    @Select("select term from sys_stu where id = #{id} and school = #{school}")
    String findTerm(@Param("id") String id, @Param("school") String school);

    /**
     * 添加该学生成绩到 个人成绩表
     * @param stuScore
     */
    @Insert("INSERT INTO personalscore (school,id,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,c1,c2,c3,c4,c5,c6,c7,c8,scores,term) values" +
            "(#{school},#{id},#{a1},#{a2},#{a3},#{a4},#{a5},#{a6},#{a7},#{a8},#{a9},#{a10},#{b1},#{b2},#{b3},#{b4},#{b5},#{b6},#{b7},#{b8},#{b9},#{b10},#{c1},#{c2},#{c3},#{c4},#{c5},#{c6},#{c7},#{c8},#{scores},#{term})")
    void insertScore(StuScore stuScore);
}
