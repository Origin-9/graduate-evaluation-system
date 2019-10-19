package com.ori.project.system.mutual_evaluation.tool;

import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 解决跨域问题
 */
@Component
public class AccessControlAllowOriginFilter implements Filter {

    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) res;
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST,GET,DELETE,PUT");
        response.setHeader("Access-Control-Allow-Headers","Origin,X-Requested-With,Content-Type,Accept");
        response.setHeader("Access-Control-Allow-Credentials", "true");

        chain.doFilter(req, response);
    }

    public void init(FilterConfig filterConfig) {

    }

    public void destroy() {

    }

}
