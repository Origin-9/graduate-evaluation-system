//年纪内评价页面
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
    //问题数量
    questionNum = questions.length,
    htmlList = ``,
    button = null;
window.onload = () => {
    $.ajax({
        url: "/system/mutual_evaluation/grade_list",
        async: false,
        dataType: 'json',
        crossDomain: true,
        success: (data) => {
            if (data.is_mark === '1') {
                alert('您已经提交过了，不能再次提交！');

                parent.parent.$.modal.closeLoading();
                parent.document.getElementsByClassName('tabCloseCurrent')[0].click();
            }else {
                jsonObj = JSON.parse(data.data);
                studentNum = jsonObj.length;

                init();
                button = document.getElementById('button');
            }


        },
        error: () => {
            console.log('服务器错啦～！');
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
    //循环出多个学生模块
    for (let i = 0; i < studentNum; i++) {
        htmlList += ` 
        <div class="box">
             <div class="box-header with-border">
                <h3 class="box-title" data-school="${jsonObj[i].school}" data-grade="${jsonObj[i].grade}" data-id="${jsonObj[i].id}">${i + 1}. ${studentNames[i]}</h3>
                 <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                class="fa fa-minus"></i></button>
                    </div>
             </div>
`;
        //循环问题列表
        for (let j = 0; j < questionNum; j++) {
            htmlList += `
             <div class="box-body">
            <div class="form-group">
                <label>${questions[j]}</label>
                <input type="number" class="form-control a_${j + 1}" placeholder="请输入评分（0-100）" min="1" max="100" step="1" value="99" required>
            </div>
        </div>
            `;
        }
        htmlList += ` </div>
`;
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
    form.innerHTML = createList();

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
        url: "/system/mutual_evaluation/addGradeScore",
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


