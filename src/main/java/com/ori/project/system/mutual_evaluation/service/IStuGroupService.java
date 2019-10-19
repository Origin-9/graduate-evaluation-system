package com.ori.project.system.mutual_evaluation.service;

import com.ori.project.system.mutual_evaluation.domain.Rating;
import com.ori.project.system.mutual_evaluation.domain.Student;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */

public interface IStuGroupService {

    /**
     * 查询题组成员
     * @return
     */
    @Transactional
    public List<Student> findStuGroupList(String id, String school);

    /**
     * 向 sys_stu 添加 A_group 、A_group_sum、A_group_num 评分数据
     * @param list
     * @return
     */
    @Transactional
    public String addGroupScore(List<Rating> list, String id, String school);

    /**
     * 查看该同学是否已经提交评分
     * @return
     */
    @Transactional
    public int findIsGroup(String id, String school);

}
