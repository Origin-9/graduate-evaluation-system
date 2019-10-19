package com.ori.project.system.mutual_evaluation.service;

import com.ori.project.system.mutual_evaluation.domain.AverageScore;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/10/12
 */
public interface IAverageScoreService {


    public List<AverageScore> findAverageScore();
}
