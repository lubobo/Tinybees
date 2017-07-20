package com.Tinybees.controller.front;

import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by lukbo on 2017/7/17.
 */
@Controller
public class UserController {
    private UserDAO userDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    public UserController()throws IOException{
        /*-------------------------------------------------------------------------------*/
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");    //类路径
        //创建会话工厂,传入Mybatis的配置文件信息
        this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        this.sqlSession = sqlSessionFactory.openSession();
        userDAO = sqlSession.getMapper(UserDAO.class);
        /*-------------------------------------------------------------------------------*/
    }

    @RequestMapping("/post_login")
    public ModelAndView post_login(User user, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession httpSession = request.getSession();
        User user1 = userDAO.selectByEmail(user);
        if(user1 != null){
            httpSession.setAttribute("login_user",user1);
            modelAndView.setViewName("home/home");
            return modelAndView;
        }else{
            modelAndView.setViewName("home/login");
            return modelAndView;
        }
    }

    @RequestMapping("/user_register")
    public ModelAndView user_register(User user){
        userDAO.insert_user(user);
        this.sqlSession.commit();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/login");
        return modelAndView;
    }

    @RequestMapping("/logout")
    public ModelAndView logout(HttpServletRequest request,HttpServletResponse response,HttpSession session){
        HttpSession httpSession = request.getSession();
        httpSession.removeAttribute("login_user");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/home");
        return modelAndView;
    }
}

