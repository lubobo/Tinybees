package com.Tinybees.controller.back.admin;

import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import java.util.Iterator;
import java.util.List;

/**
 * Created by lukbo on 2017/7/17.
 */
@Controller
public class AdminController {

    private AdminDAO adminDAO;
    private UserDAO userDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    public AdminController()throws IOException {
        /*-------------------------------------------------------------------------------*/
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");    //类路径
        //创建会话工厂,传入Mybatis的配置文件信息
        this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        this.sqlSession = sqlSessionFactory.openSession();
        adminDAO = sqlSession.getMapper(AdminDAO.class);
        userDAO = sqlSession.getMapper(UserDAO.class);
        /*-------------------------------------------------------------------------------*/
    }
    @RequestMapping("/admin_login")
    public ModelAndView admin_login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/admin_login");
        return modelAndView;
    }

    @RequestMapping("/post_admin")
    public String post_admin(Admin admin, HttpServletRequest request, HttpServletResponse response){
        Admin admin1 = adminDAO.selectAdminByName(admin);
        if(admin1!=null){
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("login_admin",admin1);
            return "redirect:/admin_home";
        }else{
            return "redirect:/admin_login";
        }
    }

    @RequestMapping("/admin_logout")
    public ModelAndView admin_logout(HttpServletRequest request,HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        HttpSession httpSession = request.getSession();
        httpSession.removeAttribute("login_user");
        modelAndView.setViewName("home/home");
        return modelAndView;
    }

    @RequestMapping("/admin_home")
    public ModelAndView admin_home(HttpServletRequest request,HttpSession session){
        HttpSession httpSession = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if(httpSession.getAttribute("login_admin")!=null){
            modelAndView.setViewName("admin/admin_home");
            return modelAndView;
        }else{
            modelAndView.setViewName("admin/admin_login");
            return modelAndView;
        }
    }

    @RequestMapping("/community")
    public ModelAndView community(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/user/community");
        return modelAndView;
    }
}
