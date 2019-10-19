package com.ori.project.system.mutual_evaluation.mapper;

import com.ori.project.system.mutual_evaluation.domain.AverageScore;
import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.domain.User1;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


/**
 * @author : Ori
 * @date : 2019/10/9
 */
@Repository
public interface UploadExcelMapper {

    @Select("select * from sys_stu where school = #{school} and id = #{id}")
    Student findAStudent(@Param("id") String id, @Param("school") String school);

    @Select("select * from sys_tea where school = #{school} and id = #{id}")
    Student findATea(@Param("id") String id, @Param("school") String school);

    @Select("select * from sys_stu where  id = #{id}")
    Student findStudent(@Param("id") String id);

    @Select("select * from sys_tea where id = #{id}")
    Student findTea(@Param("id") String id);


    @Insert("INSERT INTO sys_stu (school,department,grade,id,name,sex,phone,groupNum,term) values" +
            "(#{school},#{department},#{grade},#{id},#{name},#{sex},#{phone},#{groupNum},#{term})")
    void insertStu(Student student);

    @Insert("INSERT INTO sys_tea (school,department,id,name,sex,phone,groupNum) values" +
            "(#{school},#{department},#{id},#{name},#{sex},#{phone},#{groupNum})")
    void insertTea(Student student);

    //3
    @Insert("insert into sys_user (dept_id,login_name,user_name,password,salt) values" +
            "(#{dept_id},#{id},#{name},#{password},#{salt})")
    @Options(useGeneratedKeys = true, keyProperty = "user_id")
    void insertUser(User1 user);

    //4
    @Insert("insert into sys_user_role (user_id,role_id) values(#{user_id},#{role_id})")
    int insertUser_role(@Param("user_id") int user_id, @Param("role_id") int role_id);
    //2
    @Select("select role_id from sys_role where role_name = #{role_name}")
    int findRole_id(@Param("role_name") String role_name);
    //1
    @Select("select dept_id from sys_dept where dept_name = #{dept_name}")
    int findDept_id(@Param("dept_name") String dept_name);
}
