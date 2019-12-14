package com.ori.project.system.mutual_evaluation.mapper;

import com.ori.project.system.mutual_evaluation.domain.AverageScore;
import com.ori.project.system.mutual_evaluation.domain.Student;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/10/12
 */
@Repository
public interface AverageScoreMapper {

    /**
     * 查询平均分数表
     * 使用：首页玫瑰图平均分展示
     * @return
     */
    @Select("select * from averagescore")
    List<AverageScore> findAverageScore();

    /**
     * 查询该学其平均分是否存在
     * 使用: 新学期同学查看成绩，生成成绩后插入 平均分表 前查看是否其他同学已先生成成绩
     * @param term
     * @return
     */
    @Select("select * from averagescore where term = #{term}")
    AverageScore findAAverageScore(@Param("term") String term);

    /**
     * 新同学插入，更新 平均分表
     * @param averageScore
     */
    @Update("update averagescore set ASum=#{ASum},ANum=#{ANum},averageA=#{averageA}, " +
            "BSum=#{BSum},BNum=#{BNum},averageB=#{averageB}," +
            "CSum=#{CSum},CNum=#{CNum},averageC=#{averageC}," +
            "scoreSum=#{scoreSum},scoreNum=#{scoreNum},averageScore=#{averageScore}" +
            " where term = #{term}")
    void updateAverageScore(AverageScore averageScore);

    /**
     * 新学期第一个同学查看成绩后，在 平局分表中 插入新学期
     * @param term
     */
    @Insert("INSERT INTO averagescore (term) values (#{term})")
    void insertStu(@Param("term")String term);

}
