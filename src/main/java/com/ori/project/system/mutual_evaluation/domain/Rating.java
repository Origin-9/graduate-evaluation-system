package com.ori.project.system.mutual_evaluation.domain;

/**
 *  组内评分实体类
 * @author : Ori
 * @date : 2019/9/30
 */
public class Rating {

    private String school;
    private String id;
    private String grade;

    private int A_1;
    private int A_2;
    private int A_3;
    private int A_4;
    private int A_5;
    private int A_6;
    private int A_7;
    private int A_8;
    private int A_9;
    private int A_10;

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
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

    public int getA_1() {
        return A_1;
    }

    public void setA_1(int a_1) {
        A_1 = a_1;
    }

    public int getA_2() {
        return A_2;
    }

    public void setA_2(int a_2) {
        A_2 = a_2;
    }

    public int getA_3() {
        return A_3;
    }

    public void setA_3(int a_3) {
        A_3 = a_3;
    }

    public int getA_4() {
        return A_4;
    }

    public void setA_4(int a_4) {
        A_4 = a_4;
    }

    public int getA_5() {
        return A_5;
    }

    public void setA_5(int a_5) {
        A_5 = a_5;
    }

    public int getA_6() {
        return A_6;
    }

    public void setA_6(int a_6) {
        A_6 = a_6;
    }

    public int getA_7() {
        return A_7;
    }

    public void setA_7(int a_7) {
        A_7 = a_7;
    }

    public int getA_8() {
        return A_8;
    }

    public void setA_8(int a_8) {
        A_8 = a_8;
    }

    public int getA_9() {
        return A_9;
    }

    public void setA_9(int a_9) {
        A_9 = a_9;
    }

    public int getA_10() {
        return A_10;
    }

    public void setA_10(int a_10) {
        A_10 = a_10;
    }

    @Override
    public String toString() {
        return "Rating{" +
                "school='" + school + '\'' +
                ", id='" + id + '\'' +
                ", A_1=" + A_1 +
                ", A_2=" + A_2 +
                ", A_3=" + A_3 +
                ", A_4=" + A_4 +
                ", A_5=" + A_5 +
                ", A_6=" + A_6 +
                ", A_7=" + A_7 +
                ", A_8=" + A_8 +
                ", A_9=" + A_9 +
                ", A_10=" + A_10 +
                '}';
    }

    public String A_groupToString() {
        return A_1 +","+ A_2
                +","+ A_3
                +","+ A_4
                +","+ A_5
                +","+ A_6
                +","+ A_7
                +","+ A_8
                +","+ A_9
                +","+ A_10;
    }
}
