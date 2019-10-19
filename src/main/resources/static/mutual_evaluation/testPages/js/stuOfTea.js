//导师列表组内评价页面
'use strict';

let studentNum = null,
    data = null;

window.onload = () => {



    $.ajax({
        url: "/system/teacher_evaluation/GroupIsEvaluationList",
        async: false,
        dataType: 'json',
        crossDomain: true,
        success: (res) => {
            // console.log(res);
            data=res;
            studentNum = data.length;
            init();

        },
        error: () => {
            alert('服务器错啦～！');
        }
    });

};
/**
 * 创建问题列表
 * @param studentNum
 * @param questionNum
 * @param questions
 */
let createList = () => {


    let htmlList = ``;
    htmlList += `<div class="col-xs-12">
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">导师的学生列表</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body table-responsive no-padding">
            <table class="table table-hover">
                <tbody>
                <tr>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>年级</th>
                    <th>手机号</th>
                    <th>课题组评价</th>
                    <th>年级评价</th>
                </tr>
    `;
    //循环出多个学生模块
    for (let i = 0; i < studentNum; i++) {
        htmlList += `<tr>
    <td>${data[i].id}</td>
    <td>${data[i].name}</td>
    <td>${data[i].grade}</td>
    <td>${data[i].phone}</td>
    <td><span class="label ${data[i].is_groupe ? 'label-success' : 'label-warning'}">${data[i].is_groupe ? '已评价' : '未评价'}</span></td>
    <td><span class="label ${data[i].is_groupe ? 'label-success' : 'label-warning'}">${data[i].is_groupe ? '已评价' : '未评价'}</span></td>
</tr>
`;
    }
    htmlList += `</tbody>
</table>
</div>
<!-- /.box-body -->
</div>
<!-- /.box -->
</div>
`;
    return htmlList;
};
/**
 * 初始化
 */
let init = () => {
    //获取表单
    let list = document.getElementById('list');
    list.innerHTML = createList();

};






