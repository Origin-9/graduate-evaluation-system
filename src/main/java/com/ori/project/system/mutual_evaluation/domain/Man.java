package com.ori.project.system.mutual_evaluation.domain;

/**
 * @author : Ori
 * @date : 2019/10/10
 */
public class Man {

    private String school;
    private String grade;
    private String id;
    private String groupNum;

    private String term;

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

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

    public String getGroupNum() {
        return groupNum;
    }

    public void setGroupNum(String groupNum) {
        this.groupNum = groupNum;
    }

    @Override
    public String toString() {
        return "Man{" +
                "school='" + school + '\'' +
                ", grade='" + grade + '\'' +
                ", id='" + id + '\'' +
                ", groupNum='" + groupNum + '\'' +
                '}';
    }
}
