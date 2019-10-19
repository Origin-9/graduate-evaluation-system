package com.ori.project.system.mutual_evaluation.service.impl;

import com.ori.project.system.mutual_evaluation.domain.Rating;
import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.mapper.StuGroupMapper;
import com.ori.project.system.mutual_evaluation.mapper.StuMapper;
import com.ori.project.system.mutual_evaluation.service.IStuGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;

/**
 * @author : Ori
 * @date : 2019/9/29
 */
@Service
public class StuGroupServiceImpl implements IStuGroupService {

    @Autowired
    private StuServiceImpl stuService;
    @Autowired
    private StuGroupMapper stuGroupMapper;
    @Autowired
    private StuMapper stuMapper;

    //留一前边未完成的功能，从 session 中获取用户 学校，学号
    /**
     * 查询本人同组人员
     * @return
     */
    @Override
    public List<Student> findStuGroupList(String id,String school) {
        String group  = stuService.findGroup(id,school);
        List<Student> list = stuGroupMapper.findStuGroupList(group,school);
        Iterator<Student> it = list.iterator();
        while(it.hasNext()){
            Student student = it.next();
            if(id.equals(student.getId())){
                it.remove();
            }
        }
        return list;
    }

    /**
     *  向 sys_stu 添加 A_group 、A_group_sum、A_group_num 评分数据
     * @param list
     * @return
     */
    @Override
    public String addGroupScore(List<Rating> list,String id,String school) {
        Iterator<Rating> it = list.iterator();
        while(it.hasNext()){
            Rating rating = it.next();
            String A_group_sum = stuMapper.findA_group_sum(rating.getId(), rating.getSchool());
            int[] arr = StringToInt(A_group_sum.split(","));
            String A_group_submit = rating.A_groupToString();

            int A_group_num = stuMapper.findA_group_num(rating.getId(), rating.getSchool());
            if(A_group_num ==
                    stuGroupMapper.findteamMemberNum(stuMapper.findGroup(rating.getId(),
                            rating.getSchool()),
                            rating.getSchool()) - 2){
                //平均分计算方式采用四舍五入
                A_group_num = A_group_num + 1;
                rating.setA_1(Math.round((float)(arr[0] + rating.getA_1())/A_group_num));
                rating.setA_2(Math.round((float)(arr[1] + rating.getA_2())/A_group_num));
                rating.setA_3(Math.round((float)(arr[2] + rating.getA_3())/A_group_num));
                rating.setA_4(Math.round((float)(arr[3] + rating.getA_4())/A_group_num));
                rating.setA_5(Math.round((float)(arr[4] + rating.getA_5())/A_group_num));
                rating.setA_6(Math.round((float)(arr[5] + rating.getA_6())/A_group_num));
                rating.setA_7(Math.round((float)(arr[6] + rating.getA_7())/A_group_num));
                rating.setA_8(Math.round((float)(arr[7] + rating.getA_8())/A_group_num));
                rating.setA_9(Math.round((float)(arr[8] + rating.getA_9())/A_group_num));
                rating.setA_10(Math.round((float)(arr[9] + rating.getA_10())/A_group_num));
                stuMapper.updateGroupScore(A_group_submit, rating.A_groupToString(),A_group_num, rating.getId(), rating.getSchool());
            }else {
                rating.setA_1(arr[0] + rating.getA_1());
                rating.setA_2(arr[1] + rating.getA_2());
                rating.setA_3(arr[2] + rating.getA_3());
                rating.setA_4(arr[3] + rating.getA_4());
                rating.setA_5(arr[4] + rating.getA_5());
                rating.setA_6(arr[5] + rating.getA_6());
                rating.setA_7(arr[6] + rating.getA_7());
                rating.setA_8(arr[7] + rating.getA_8());
                rating.setA_9(arr[8] + rating.getA_9());
                rating.setA_10(arr[9] + rating.getA_10());
                stuMapper.updateGroupScore(A_group_submit, rating.A_groupToString(),A_group_num+1, rating.getId(), rating.getSchool());
            }

        }
        //修改评分人对组内评分的标识
        stuMapper.updateIsGroup(id,school);

        return "success";
    }
    private int[] StringToInt(String[] arrs){
        int[] ints = new int[arrs.length];
        for(int i=0;i<arrs.length;i++){
            ints[i]=Integer.parseInt(arrs[i]);
        }
        return ints;
    }

    public int findIsGroup(String id,String school){
        return stuMapper.findIsGroup(id,school);
    }
}
