//导师评价页面
'use strict';
let studentNames = [],
    jsonObj = null,
    //学生数量
    studentNum = 0,
    //问题列表
    questions = [
        '1.1开拓精神，敢于接受学习科研中的挑战',
        '1.2学习毅力，面对困难问题不轻言放弃',
        '1.3交流沟通，善于沟通、交流、讨论',
        '1.4心态积极，自信而又不自负',
        '1.5责任心，不推诿、不阳奉阴违',
        '1.6探索精神，善于发现问题并解决问题',
        '1.7果敢决断，不优柔寡断、拖泥带水',
        '1.8演绎推理，理论联系实际',
        '1.9感染力，善于传播正能量',
        '1.10发散思维，举一反三'
    ],
    bQuestions=[
        '2.1创新设备、装置内部评价',
        '2.2创新设备、装置外部评价',
        '2.3参与科技创新竞赛次数',
        '2.4参与科技竞赛级别',
        '2.5科技创新竞赛获奖情况',
        '2.6参与社会实践次数',
        '2.7参与社会实践的级别',
        '2.8社会实践报告的获奖情况',
        '2.9发表论文数',
        '2.10发表论文所在期刊级别',
        '2.11作者署名次序',
        '2.12参与项目（课题）数',
        '2.13参与项目（课题）的级别',
        '2.14项目（课题）报告贡献排名',
        '2.15参与学术会议次数',
        '2.16参与学术会议级别',
        '2.17大会报告/分会报告/张贴',
        '2.18项目等级评价',
        '2.19项目管理角色',
        '2.20导师评价',
        '2.21课题组评价',
        '2.22阅读期刊数',
        '2.23阅读报告',
        '2.24专业基础课成绩',
        '2.25专业选修课成绩'
    ],
    selectQuestions = [
        '3.1常用办公软件、工具的使用',
        '3.2中外文语言、文字表达能力',
        '3.3基础物理、数学知识的掌握',
        '3.4计算机编程/嵌入式编程能力',
        '3.5电路分析与设计能力',
        '3.6建模与分析工具的掌握',
        '3.7控制系统开发与调试能力',
        '3.8攥写学术论文、技术报告、演示文档的能力'
    ],
    //问题数量
    questionNum = questions.length,
    htmlList = ``,
    button = null;
window.onload = () => {
    $.ajax({
        url: "/system/teacher_evaluation/group_list",
        async: false,
        dataType: 'json',
        crossDomain: true,
        success: (data) => {
            // 没有数据的情况
            // console.log(data);
            if (data.is_mark === '1') {

                alert('您已经提交过了，不能再次提交！');

                parent.parent.$.modal.closeLoading();
                parent.document.getElementsByClassName('tabCloseCurrent')[0].click();


            }else {
                console.log('成功提取数据');
                jsonObj = JSON.parse(data.data);
                studentNum = jsonObj.length;
            }



        },
        error: () => {
            console.log('服务器错啦～！');
        }
    });
    init();

    button = document.getElementById('button');
};
/**
 * 创建问题列表
 * @param studentNum
 * @param questionNum
 * @param questions
 */
let createList = () => {
    let htmlList = ``;
    //循环出多个学生模块
    for (let i = 0; i < studentNum; i++) {
        htmlList += `<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title" data-school="${jsonObj[i].school}" data-grade="${jsonObj[i].grade}"
            data-id="${jsonObj[i].id}">${i + 1}. ${studentNames[i]}</h3>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                    class="fa fa-minus"></i></button>
        </div>
    </div>
             
`;
        //循环第一部分问题
        for (let j = 0; j < questionNum; j++) {
            htmlList += `
             <div class="box-body">
            <div class="form-group">
                <label>${questions[j]}</label>
                <input type="number" class="form-control a_${j + 1}" placeholder="请输入评分（0-100）" min="1" max="100" step="1" value="98" required>
            </div>
        </div>
            `;
        };

        //循环第二部分问题
        for (let j = 0; j < bQuestions.length; j++) {
            htmlList += `
             <div class="box-body">
            <div class="form-group">
                <label>${bQuestions[j]}</label>
                <input type="number" class="form-control b_${j + 1}" placeholder="请输入评分（0-100）" min="1" max="100" step="1" value="98" required>
            </div>
        </div>
            `;
        };

        //循环第三部分
        for (let j = 0; j < selectQuestions.length; j++) {
            htmlList += `<div class="form-group  box-body">
    <label>${selectQuestions[j]}</label>
    <select class="form-control" id="c_${j+1}">
        <option value="95">突出（95分）</option>
        <option value="90">优秀（90分）</option>
        <option value="85">良好（85分）</option>
        <option value="70">中等（70分）</option>
        <option value="60">差（60分）</option>
        <option value="0">很差（0分）</option>
    </select>
</div>
            `;
        };

        htmlList += ` </div>`;

    }
    htmlList += `
    <div class="box-footer">
        <div id="button" class="btn btn-primary" onclick="submitData()">提交</div>
    </div>
    `;

    return htmlList;
};
/**
 * 初始化
 */
let init = () => {
    for (let i = 0; i < studentNum; i++) {
        studentNames.push(jsonObj[i].name);
    }
    //获取表单
    let form = document.getElementById('form');
    // console.log('createList之前');
    form.innerHTML = createList();
    // console.log('createList之后');

};

/**
 * 提交本表单
 */
let submitData = () => {
    let isSubmit = checkPass();
    if (isSubmit) {
        let json = mixJson();
        console.log('提交表单');
        sendJson(json);
    }

};

/**
 * 检查所有input是否为空
 * @returns {boolean} 返回是否通过空数据检查
 */
let checkPass = () => {
    let isPass = true;
    let inputs = document.getElementsByTagName("input");
    for (let i = 0; i < inputs.length; i++) {
        //验证是否为空
        if (inputs[i].value === '') {
            isPass = false;
            alert('请检查！有未填写的输入框！');
            break;
        }
        //验证是否非1-100的值
        else if (parseInt(inputs[i].value) > 100 || parseInt(inputs[i].value) < 1) {
            alert('请检查！只能输入1-100的值');
            isPass = false;
            break;
        }
    }
    return isPass;
};

/**
 * 组合json
 */
let mixJson = () => {
    let json = [];
    let baseData = document.getElementsByTagName("h3");
    // console.log(baseData);
    for (let i = 0; i < baseData.length; i++) {
        let obj = {};
        obj['a_1'] = (document.getElementsByClassName('a_1'))[i].value;
        obj['a_2'] = (document.getElementsByClassName('a_2'))[i].value;
        obj['a_3'] = (document.getElementsByClassName('a_3'))[i].value;
        obj['a_4'] = (document.getElementsByClassName('a_4'))[i].value;
        obj['a_5'] = (document.getElementsByClassName('a_5'))[i].value;
        obj['a_6'] = (document.getElementsByClassName('a_6'))[i].value;
        obj['a_7'] = (document.getElementsByClassName('a_7'))[i].value;
        obj['a_8'] = (document.getElementsByClassName('a_8'))[i].value;
        obj['a_9'] = (document.getElementsByClassName('a_9'))[i].value;
        obj['a_10'] = (document.getElementsByClassName('a_10'))[i].value;
        obj['b_1'] = (document.getElementsByClassName('b_1'))[i].value;
        obj['b_2'] = (document.getElementsByClassName('b_2'))[i].value;
        obj['b_3'] = (document.getElementsByClassName('b_3'))[i].value;
        obj['b_4'] = (document.getElementsByClassName('b_4'))[i].value;
        obj['b_5'] = (document.getElementsByClassName('b_5'))[i].value;
        obj['b_6'] = (document.getElementsByClassName('b_6'))[i].value;
        obj['b_7'] = (document.getElementsByClassName('b_7'))[i].value;
        obj['b_8'] = (document.getElementsByClassName('b_8'))[i].value;
        obj['b_9'] = (document.getElementsByClassName('b_9'))[i].value;
        obj['b_10'] = (document.getElementsByClassName('b_10'))[i].value;
        obj['b_11'] = (document.getElementsByClassName('b_11'))[i].value;
        obj['b_12'] = (document.getElementsByClassName('b_12'))[i].value;
        obj['b_13'] = (document.getElementsByClassName('b_13'))[i].value;
        obj['b_14'] = (document.getElementsByClassName('b_14'))[i].value;
        obj['b_15'] = (document.getElementsByClassName('b_15'))[i].value;
        obj['b_16'] = (document.getElementsByClassName('b_16'))[i].value;
        obj['b_17'] = (document.getElementsByClassName('b_17'))[i].value;
        obj['b_18'] = (document.getElementsByClassName('b_18'))[i].value;
        obj['b_19'] = (document.getElementsByClassName('b_19'))[i].value;
        obj['b_20'] = (document.getElementsByClassName('b_20'))[i].value;
        obj['b_21'] = (document.getElementsByClassName('b_21'))[i].value;
        obj['b_22'] = (document.getElementsByClassName('b_22'))[i].value;
        obj['b_23'] = (document.getElementsByClassName('b_23'))[i].value;
        obj['b_24'] = (document.getElementsByClassName('b_24'))[i].value;
        obj['b_25'] = (document.getElementsByClassName('b_25'))[i].value;
        obj['c_1'] = (document.getElementById('c_1')).value;
        obj['c_2'] = (document.getElementById('c_2')).value;
        obj['c_3'] = (document.getElementById('c_3')).value;
        obj['c_4'] = (document.getElementById('c_4')).value;
        obj['c_5'] = (document.getElementById('c_5')).value;
        obj['c_6'] = (document.getElementById('c_6')).value;
        obj['c_7'] = (document.getElementById('c_7')).value;
        obj['c_8'] = (document.getElementById('c_8')).value;

        obj['grade'] = baseData[i].dataset.grade;
        obj['id'] = baseData[i].dataset.id;
        obj['school'] = baseData[i].dataset.school;
        json.push(obj);
    }

    return json;
};

/**
 * 发送json
 */
let sendJson = json => {

    $.ajax({
        url: "/system/teacher_evaluation/teaAddScore",
        async: false,
        type: 'PUT',
        dataType: 'json',
        contentType: 'application/json',
        data: JSON.stringify(json),
        crossDomain: true,
        success: (data) => {
            if (data.message === 'success') {
                alert('辛苦了！提交成功！');
                parent.document.getElementsByClassName('tabCloseCurrent')[0].click();

            }
        },
        error: () => {
            alert('数据提交错误，请联系管理员！');
        }
    });
};


