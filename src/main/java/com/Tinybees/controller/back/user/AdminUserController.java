package com.Tinybees.controller.back.user;

import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by lukbo on 2017/7/25.
 */
@Controller
public class AdminUserController {
    private AdminDAO adminDAO;
    private UserDAO userDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    public AdminUserController()throws IOException {
        /*-------------------------------------------------------------------------------*/
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");    //类路径
        //创建会话工厂,传入Mybatis的配置文件信息
        this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        this.sqlSession = sqlSessionFactory.openSession();
        adminDAO = sqlSession.getMapper(AdminDAO.class);
        userDAO = sqlSession.getMapper(UserDAO.class);
        /*-------------------------------------------------------------------------------*/
    }

    @RequestMapping("/user_lists")
    public ModelAndView user_lists(Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<User> users = userDAO.getAllUser();
        model.addAttribute("users",users);
        modelAndView.setViewName("admin/user/user_lists");
        return modelAndView;
    }

    @RequestMapping("/delete_user")
    public String delete_user(HttpServletRequest request){
        int user_id=Integer.parseInt(request.getParameter("user_id"));
        userDAO.deleteUserById(user_id);
        return "redirect:/user_lists";
    }

    @RequestMapping("/user_detail_lists")
    public ModelAndView user_detail_lists(Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<User> users = userDAO.getAllUser();
        model.addAttribute("users",users);
        modelAndView.setViewName("admin/user/user_detail_lists");
        return modelAndView;
    }

}
