package com.ori.project.system.mutual_evaluation.domain;

/**
 * @author : Ori
 * @date : 2019/10/12
 */
public class AverageScore  {

    private int ASum;
    private int ANum;
    private int averageA;
    private int BSum;
    private int BNum;
    private int averageB;
    private int CSum;
    private int CNum;
    private int averageC;
    private int scoreSum;
    private int scoreNum;
    private int averageScore;
    private String term;


    public int getScoreSum() {
        return scoreSum;
    }

    public void setScoreSum(int scoreSum) {
        this.scoreSum = scoreSum;
    }

    public int getScoreNum() {
        return scoreNum;
    }

    public void setScoreNum(int scoreNum) {
        this.scoreNum = scoreNum;
    }

    public int getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(int averageScore) {
        this.averageScore = averageScore;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public int getASum() {
        return ASum;
    }

    public void setASum(int ASum) {
        this.ASum = ASum;
    }

    public int getANum() {
        return ANum;
    }

    public void setANum(int ANum) {
        this.ANum = ANum;
    }

    public int getAverageA() {
        return averageA;
    }

    public void setAverageA(int averageA) {
        this.averageA = averageA;
    }

    public int getBSum() {
        return BSum;
    }

    public void setBSum(int BSum) {
        this.BSum = BSum;
    }

    public int getBNum() {
        return BNum;
    }

    public void setBNum(int BNum) {
        this.BNum = BNum;
    }

    public int getAverageB() {
        return averageB;
    }

    public void setAverageB(int averageB) {
        this.averageB = averageB;
    }

    public int getCSum() {
        return CSum;
    }

    public void setCSum(int CSum) {
        this.CSum = CSum;
    }

    public int getCNum() {
        return CNum;
    }

    public void setCNum(int CNum) {
        this.CNum = CNum;
    }

    public int getAverageC() {
        return averageC;
    }

    public void setAverageC(int averageC) {
        this.averageC = averageC;
    }

    @Override
    public String toString() {
        return "AverageScore{" +
                "ASum=" + ASum +
                ", ANum=" + ANum +
                ", averageA=" + averageA +
                ", BSum=" + BSum +
                ", BNum=" + BNum +
                ", averageB=" + averageB +
                ", CSum=" + CSum +
                ", CNum=" + CNum +
                ", averageC=" + averageC +
                ", scoreSum=" + scoreSum +
                ", scoreNum=" + scoreNum +
                ", averageScore=" + averageScore +
                ", term='" + term + '\'' +
                '}';
    }


}
