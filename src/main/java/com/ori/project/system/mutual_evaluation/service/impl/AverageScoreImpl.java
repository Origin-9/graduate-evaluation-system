package com.ori.project.system.mutual_evaluation.service.impl;

import com.ori.project.system.mutual_evaluation.domain.AverageScore;
import com.ori.project.system.mutual_evaluation.mapper.AverageScoreMapper;
import com.ori.project.system.mutual_evaluation.service.IAverageScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/10/12
 */
@Service

public class AverageScoreImpl implements IAverageScoreService {

    @Autowired
    private AverageScoreMapper averageScoreMapper;

    @Override
    public List<AverageScore> findAverageScore() {
        return averageScoreMapper.findAverageScore();
    }
}
