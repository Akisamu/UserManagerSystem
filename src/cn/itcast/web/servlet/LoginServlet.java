package cn.itcast.web.servlet;

import cn.itcast.domain.Student;
import cn.itcast.domain.User;
import cn.itcast.service.StudentService;
import cn.itcast.service.UserService;
import cn.itcast.service.impl.StudentServiceImpl;
import cn.itcast.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置编码
        request.setCharacterEncoding("utf-8");


        HttpSession session = request.getSession();


        Map<String, String[]> map = request.getParameterMap();
        // 封装User对象
        User user = new User();
        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }


        // 调用Service查询
        UserService service = new UserServiceImpl();
        User loginStudent = service.login(user);
        // 判断是否登录成功
        if(loginStudent != null){
            //登录成功
            //将用户存入session
            session.setAttribute("user", loginStudent);
            //跳转页面
            response.sendRedirect(request.getContextPath()+"/findUserByPageServlet");
        }else{
            //登录失败
            //提示信息
            request.setAttribute("login_msg","用户名或密码错误！");
            //跳转登录页面
            request.getRequestDispatcher("/login.jsp").forward(request,response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
