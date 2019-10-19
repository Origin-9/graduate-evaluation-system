package com.ori.project.system.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ori.project.system.mutual_evaluation.domain.Man;
import com.ori.project.system.mutual_evaluation.domain.Student;
import com.ori.project.system.mutual_evaluation.mapper.UploadExcelMapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ori.common.utils.ServletUtils;
import com.ori.common.utils.StringUtils;
import com.ori.framework.web.controller.BaseController;
import com.ori.framework.web.domain.AjaxResult;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * 登录验证
 * 
 * @author ori
 */
@Controller
@SessionAttributes({"man"})

public class LoginController extends BaseController
{

    @Autowired
    private UploadExcelMapper uploadExcelMapper;

    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response)
    {
        // 如果是Ajax请求，返回Json字符串。
        if (ServletUtils.isAjaxRequest(request))
        {
            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
        }

        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe, Model model)
    {
        UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
        Subject subject = SecurityUtils.getSubject();
        try
        {
            subject.login(token);
            Man man = new Man();
            if(uploadExcelMapper.findStudent(username)!=null){
                Student student = uploadExcelMapper.findStudent(username);
                man.setSchool(student.getSchool());
                man.setGrade(student.getGrade());
                man.setId(student.getId());
                man.setGroupNum(student.getGroupNum());
                man.setTerm(student.getTerm());
                model.addAttribute("man",man);
            }else if(uploadExcelMapper.findTea(username)!=null){
                Student student = uploadExcelMapper.findTea(username);
                man.setSchool(student.getSchool());
                man.setGrade(student.getGrade());
                man.setId(student.getId());
                man.setGroupNum(student.getGroupNum());
                model.addAttribute("man",man);
            }
            return success();
        }
        catch (AuthenticationException e)
        {
            String msg = "用户或密码错误";
            if (StringUtils.isNotEmpty(e.getMessage()))
            {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }

    @GetMapping("/unauth")
    public String unauth()
    {
        return "error/unauth";
    }
}
