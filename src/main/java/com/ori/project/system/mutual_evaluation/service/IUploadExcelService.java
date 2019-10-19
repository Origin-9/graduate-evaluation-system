package com.ori.project.system.mutual_evaluation.service;

import com.ori.project.system.mutual_evaluation.domain.Student;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author : Ori
 * @date : 2019/10/9
 */
public interface IUploadExcelService {

    @Transactional
    String IdComparison(List<Student> list);

    @Transactional
    public String IdComparison1(List<Student> list);
}
