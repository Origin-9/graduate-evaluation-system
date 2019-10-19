package com.ori.project.system.mutual_evaluation.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
@ApiModel(description= "返回响应数据")
public class Student implements Comparable<Student>{
    @ApiModelProperty(value = "学校")
    private String school;
    @ApiModelProperty(value = "学院")
    private String department;
    @ApiModelProperty(value = "年级")
    private String grade;
    @ApiModelProperty(value = "学号")
    private String id;
    @ApiModelProperty(value = "姓名")
    private String name;
    @ApiModelProperty(value = "性别")
    private String sex;
    @ApiModelProperty(value = "电话")
    private String phone;
    @ApiModelProperty(value = "课题组")
    private String groupNum;
    @ApiModelProperty(value = "组内互评")
    private String A_group;
    @ApiModelProperty(value = "组内互评总分")
    private String A_group_sum;
    @ApiModelProperty(value = "组内互评人数")
    private int A_group_num;
    @ApiModelProperty(value = "年级互评")
    private String A_grade;
    @ApiModelProperty(value = "年级互评总分")
    private String A_grade_sum;
    @ApiModelProperty(value = "年级互评人数")
    private int A_grade_num;
    @ApiModelProperty(value = "老师评分A")
    private String A_tea;
    @ApiModelProperty(value = "老师评分B")
    private String B_tea;
    @ApiModelProperty(value = "老师评分C")
    private String C_tea;
    private String identity;
    private int is_groupe;
    private int is_gradee;
    private String term;

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public int getIs_groupe() {
        return is_groupe;
    }

    public void setIs_groupe(int is_groupe) {
        this.is_groupe = is_groupe;
    }

    public int getIs_gradee() {
        return is_gradee;
    }

    public void setIs_gradee(int is_gradee) {
        this.is_gradee = is_gradee;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGroupNum() {
        return groupNum;
    }

    public void setGroupNum(String groupNum) {
        this.groupNum = groupNum;
    }

    public String getA_group() {
        return A_group;
    }

    public void setA_group(String a_group) {
        A_group = a_group;
    }

    public String getA_group_sum() {
        return A_group_sum;
    }

    public void setA_group_sum(String a_group_sum) {
        A_group_sum = a_group_sum;
    }

    public int getA_group_num() {
        return A_group_num;
    }

    public void setA_group_num(int a_group_num) {
        A_group_num = a_group_num;
    }

    public String getA_grade() {
        return A_grade;
    }

    public void setA_grade(String a_grade) {
        A_grade = a_grade;
    }

    public String getA_grade_sum() {
        return A_grade_sum;
    }

    public void setA_grade_sum(String a_grade_sum) {
        A_grade_sum = a_grade_sum;
    }

    public int getA_grade_num() {
        return A_grade_num;
    }

    public void setA_grade_num(int a_grade_num) {
        A_grade_num = a_grade_num;
    }

    public String getA_tea() {
        return A_tea;
    }

    public void setA_tea(String a_tea) {
        A_tea = a_tea;
    }

    public String getB_tea() {
        return B_tea;
    }

    public void setB_tea(String b_tea) {
        B_tea = b_tea;
    }

    public String getC_tea() {
        return C_tea;
    }

    public void setC_tea(String c_tea) {
        C_tea = c_tea;
    }

    @Override
    public String toString() {
        return "mutual_evaluation{" +
                "school='" + school + '\'' +
                ", department='" + department + '\'' +
                ", grade='" + grade + '\'' +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", phone='" + phone + '\'' +
                ", group='" + groupNum + '\'' +
                ", A_group='" + A_group + '\'' +
                ", A_group_sum='" + A_group_sum + '\'' +
                ", A_group_num=" + A_group_num +
                ", A_cm='" + A_grade+ '\'' +
                ", A_cm_sum='" + A_grade_sum + '\'' +
                ", A_cm_num=" + A_grade_num +
                ", A_tea='" + A_tea + '\'' +
                ", B_tea='" + B_tea + '\'' +
                ", C_tea='" + C_tea + '\'' +
                '}';
    }

    @Override
    public int compareTo(Student student) {
        if(this.id.equals(student.getId())){
            return 0;
        }
        return this.id.compareTo(student.getId());
    }
}
