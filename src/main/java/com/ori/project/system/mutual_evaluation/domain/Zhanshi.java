package com.ori.project.system.mutual_evaluation.domain;

/**
 *  职业生涯耻辱，写了中文变量
 *   为了配合前端展示 各项分数平均分
 * @author : Ori
 * @date : 2019/10/12
 */
public class Zhanshi implements Comparable<Zhanshi>{

    private int 创新素养平均分;
    private int 创新能力平均分;
    private int 创新知识平均分;

    private int 总成绩平均分;

    private String term;

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public int get创新素养平均分() {
        return 创新素养平均分;
    }

    public void set创新素养平均分(int 创新素养平均分) {
        this.创新素养平均分 = 创新素养平均分;
    }

    public int get创新能力平均分() {
        return 创新能力平均分;
    }

    public void set创新能力平均分(int 创新能力平均分) {
        this.创新能力平均分 = 创新能力平均分;
    }

    public int get创新知识平均分() {
        return 创新知识平均分;
    }

    public void set创新知识平均分(int 创新知识平均分) {
        this.创新知识平均分 = 创新知识平均分;
    }

    public int get总成绩平均分() {
        return 总成绩平均分;
    }

    public void set总成绩平均分(int 总成绩平均分) {
        this.总成绩平均分 = 总成绩平均分;
    }

    @Override
    public int compareTo(Zhanshi o) {
        return o.getTerm().compareTo(this.term);
    }
}
