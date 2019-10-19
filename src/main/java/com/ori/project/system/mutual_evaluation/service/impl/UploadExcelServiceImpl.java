package com.ori.project.system.mutual_evaluation.service.impl;

import com.ori.framework.shiro.service.PasswordService;
import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.domain.User1;
import com.ori.project.system.mutual_evaluation.mapper.UploadExcelMapper;
import com.ori.project.system.mutual_evaluation.service.IUploadExcelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

/**
 * 导入 excel Service层处理
 * @author : Ori
 * @date : 2019/10/9
 */
@Service
public class UploadExcelServiceImpl implements IUploadExcelService {

    @Autowired
    private UploadExcelMapper uploadExcelMapper;
    @Autowired
    private PasswordService passwordService;

    @Override
    public String IdComparison(List<Student> list){
        //首先先比较提交的 excel 中是否有学号相同的
        TreeSet<Student> treeSet = new TreeSet<Student>(list);
        if(treeSet.size()<list.size())
            return "表中数据有误，存在学号相同情况";

        //与数据库中学号对比，存在相同学号则不可导入
        ArrayList<Student> arrayList = new ArrayList<Student>(list);
        for (int i = 0; i < arrayList.size(); i++) {
            if(uploadExcelMapper.findAStudent(arrayList.get(i).getId(),arrayList.get(i).getSchool())!=null){
                return "第"+ (i+1) + "行学号已存在在数据库，请检查表中数据！";
            }
        }
        try {
            for (Student student : arrayList) {
                String role_name = student.getSchool() + student.getDepartment() + student.getIdentity();
                int dept_id = uploadExcelMapper.findDept_id(role_name);
                int role_id = uploadExcelMapper.findRole_id(role_name);
                uploadExcelMapper.insertStu(student);



                User1 user = new User1();
                user.setDept_id(dept_id);
                user.setId(student.getId());
                user.setName(student.getName());
                user.randomSalt();
                user.setPassword(passwordService.encryptPassword(user.getId(), "000000", user.getSalt()));
                uploadExcelMapper.insertUser(user);
                int user_id = user.getUser_id();
                uploadExcelMapper.insertUser_role(user_id,role_id);

            }
        }catch (Exception e){
            return e.getMessage();
        }
        return "导入成功";
    }

    @Override
    public String IdComparison1(List<Student> list){
        //首先先比较提交的 excel 中是否有学号相同的
        TreeSet<Student> treeSet = new TreeSet<Student>(list);
        if(treeSet.size()<list.size())
            return "表中数据有误，存在工号号相同情况";

        //与数据库中学号对比，存在相同学号则不可导入
        ArrayList<Student> arrayList = new ArrayList<Student>(list);
        for (int i = 0; i < arrayList.size(); i++) {
            if(uploadExcelMapper.findATea(arrayList.get(i).getId(),arrayList.get(i).getSchool())!=null){
                return "第"+ (i+1) + "行工号已存在在数据库，请检查表中数据！";
            }
        }
        try {
            for (Student student : arrayList) {
                String role_name = student.getSchool() + student.getDepartment() + student.getIdentity();
                int dept_id = uploadExcelMapper.findDept_id(role_name);
                int role_id = uploadExcelMapper.findRole_id(role_name);
                uploadExcelMapper.insertTea(student);



                User1 user = new User1();
                user.setDept_id(dept_id);
                user.setId(student.getId());
                user.setName(student.getName());
                user.randomSalt();
                user.setPassword(passwordService.encryptPassword(user.getId(), "admin", user.getSalt()));
                uploadExcelMapper.insertUser(user);
                int user_id = user.getUser_id();
                uploadExcelMapper.insertUser_role(user_id,role_id);

            }
        }catch (Exception e){
            return e.getMessage();
        }



        return "导入成功";
    }
}
