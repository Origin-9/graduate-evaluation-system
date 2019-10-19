package com.ori.project.system.mutual_evaluation.domain;

/**
 * @author : Ori
 * @date : 2019/10/11
 */
public class StuScore {

    public StuScore(String school, String id, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int b1, int b2, int b3, int b4, int b5, int b6, int b7, int b8, int b9, int b10, int c1, int c2, int c3, int c4, int c5, int c6, int c7, int c8, int scores, String term) {
        this.school = school;
        this.id = id;
        this.a1 = a1;
        this.a2 = a2;
        this.a3 = a3;
        this.a4 = a4;
        this.a5 = a5;
        this.a6 = a6;
        this.a7 = a7;
        this.a8 = a8;
        this.a9 = a9;
        this.a10 = a10;
        this.b1 = b1;
        this.b2 = b2;
        this.b3 = b3;
        this.b4 = b4;
        this.b5 = b5;
        this.b6 = b6;
        this.b7 = b7;
        this.b8 = b8;
        this.b9 = b9;
        this.b10 = b10;
        this.c1 = c1;
        this.c2 = c2;
        this.c3 = c3;
        this.c4 = c4;
        this.c5 = c5;
        this.c6 = c6;
        this.c7 = c7;
        this.c8 = c8;
        this.scores = scores;
        this.term = term;
    }

    public StuScore(int a[], int b[], int c[]){
        this.a1 = a[0];
        this.a2 = a[1];
        this.a3 = a[2];
        this.a4 = a[3];
        this.a5 = a[4];
        this.a6 = a[5];
        this.a7 = a[6];
        this.a8 = a[7];
        this.a9 = a[8];
        this.a10 = a[9];

        this.b1 = b[0];
        this.b2 = b[1];
        this.b3 = b[2];
        this.b4 = b[3];
        this.b5 = b[4];
        this.b6 = b[5];
        this.b7 = b[6];
        this.b8 = b[7];
        this.b9 = b[8];
        this.b10 = b[9];

        this.c1 = c[0];
        this.c2 = c[1];
        this.c3 = c[2];
        this.c4 = c[3];
        this.c5 = c[4];
        this.c6 = c[5];
        this.c7 = c[6];
        this.c8 = c[7];

    }

    private String school;
    private String id;
    private int a1;
    private int a2;
    private int a3;
    private int a4;
    private int a5;
    private int a6;
    private int a7;
    private int a8;
    private int a9;
    private int a10;
    private int b1;
    private int b2;
    private int b3;
    private int b4;
    private int b5;
    private int b6;
    private int b7;
    private int b8;
    private int b9;
    private int b10;
    private int c1;
    private int c2;
    private int c3;
    private int c4;
    private int c5;
    private int c6;
    private int c7;
    private int c8;
    private int scores;
    private String term;

    @Override
    public String toString() {
        return "StuScore{" +
                "school='" + school + '\'' +
                ", id='" + id + '\'' +
                ", a1=" + a1 +
                ", a2=" + a2 +
                ", a3=" + a3 +
                ", a4=" + a4 +
                ", a5=" + a5 +
                ", a6=" + a6 +
                ", a7=" + a7 +
                ", a8=" + a8 +
                ", a9=" + a9 +
                ", a10=" + a10 +
                ", b1=" + b1 +
                ", b2=" + b2 +
                ", b3=" + b3 +
                ", b4=" + b4 +
                ", b5=" + b5 +
                ", b6=" + b6 +
                ", b7=" + b7 +
                ", b8=" + b8 +
                ", b9=" + b9 +
                ", b10=" + b10 +
                ", c1=" + c1 +
                ", c2=" + c2 +
                ", c3=" + c3 +
                ", c4=" + c4 +
                ", c5=" + c5 +
                ", c6=" + c6 +
                ", c7=" + c7 +
                ", c8=" + c8 +
                ", scores=" + scores +
                ", term='" + term + '\'' +
                '}';
    }

    public int getB6() {
        return b6;
    }

    public void setB6(int b6) {
        this.b6 = b6;
    }

    public int getB7() {
        return b7;
    }

    public void setB7(int b7) {
        this.b7 = b7;
    }

    public int getB8() {
        return b8;
    }

    public void setB8(int b8) {
        this.b8 = b8;
    }

    public int getB9() {
        return b9;
    }

    public void setB9(int b9) {
        this.b9 = b9;
    }

    public int getB10() {
        return b10;
    }

    public void setB10(int b10) {
        this.b10 = b10;
    }

    public int getA1() {
        return a1;
    }

    public void setA1(int a1) {
        this.a1 = a1;
    }

    public int getA2() {
        return a2;
    }

    public void setA2(int a2) {
        this.a2 = a2;
    }

    public int getA3() {
        return a3;
    }

    public void setA3(int a3) {
        this.a3 = a3;
    }

    public int getA4() {
        return a4;
    }

    public void setA4(int a4) {
        this.a4 = a4;
    }

    public int getA5() {
        return a5;
    }

    public void setA5(int a5) {
        this.a5 = a5;
    }

    public int getA6() {
        return a6;
    }

    public void setA6(int a6) {
        this.a6 = a6;
    }

    public int getA7() {
        return a7;
    }

    public void setA7(int a7) {
        this.a7 = a7;
    }

    public int getA8() {
        return a8;
    }

    public void setA8(int a8) {
        this.a8 = a8;
    }

    public int getA9() {
        return a9;
    }

    public void setA9(int a9) {
        this.a9 = a9;
    }

    public int getA10() {
        return a10;
    }

    public void setA10(int a10) {
        this.a10 = a10;
    }

    public int getB1() {
        return b1;
    }

    public void setB1(int b1) {
        this.b1 = b1;
    }

    public int getB2() {
        return b2;
    }

    public void setB2(int b2) {
        this.b2 = b2;
    }

    public int getB3() {
        return b3;
    }

    public void setB3(int b3) {
        this.b3 = b3;
    }

    public int getB4() {
        return b4;
    }

    public void setB4(int b4) {
        this.b4 = b4;
    }

    public int getB5() {
        return b5;
    }

    public void setB5(int b5) {
        this.b5 = b5;
    }

    public int getC1() {
        return c1;
    }

    public void setC1(int c1) {
        this.c1 = c1;
    }

    public int getC2() {
        return c2;
    }

    public void setC2(int c2) {
        this.c2 = c2;
    }

    public int getC3() {
        return c3;
    }

    public void setC3(int c3) {
        this.c3 = c3;
    }

    public int getC4() {
        return c4;
    }

    public void setC4(int c4) {
        this.c4 = c4;
    }

    public int getC5() {
        return c5;
    }

    public void setC5(int c5) {
        this.c5 = c5;
    }

    public int getC6() {
        return c6;
    }

    public void setC6(int c6) {
        this.c6 = c6;
    }

    public int getC7() {
        return c7;
    }

    public void setC7(int c7) {
        this.c7 = c7;
    }

    public int getC8() {
        return c8;
    }

    public void setC8(int c8) {
        this.c8 = c8;
    }

    public int getScores() {
        return scores;
    }

    public void setScores(int scores) {
        this.scores = scores;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }



    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }


}
