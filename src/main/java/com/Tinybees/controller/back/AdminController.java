package com.Tinybees.controller.back;

import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.model.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by lukbo on 2017/7/17.
 */
@Controller
public class AdminController {

    private AdminDAO adminDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    public AdminController()throws IOException {
        /*-------------------------------------------------------------------------------*/
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");    //类路径
        //创建会话工厂,传入Mybatis的配置文件信息
        this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        this.sqlSession = sqlSessionFactory.openSession();
        adminDAO = sqlSession.getMapper(AdminDAO.class);
        /*-------------------------------------------------------------------------------*/
    }
    @RequestMapping("/admin_login")
    public ModelAndView admin_login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/admin_login");
        return modelAndView;
    }

    @RequestMapping("post_admin")
    public ModelAndView post_admin(Admin admin, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        Admin admin1 = adminDAO.selectAdminByName(admin);
        if(admin1!=null){
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("login_user",admin1);
            modelAndView.setViewName("admin/admin_home");
            return modelAndView;
        }else{

            modelAndView.setViewName("admin/admin_login");
            return modelAndView;
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

    @RequestMapping("/add_product")
    public ModelAndView add_product(Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Category> categories = adminDAO.getAllCategory();
        List<Category_second> category_seconds = adminDAO.getAllCategorySecond();
        List<Category_third> category_thirds = adminDAO.getAllCategoryThird();
        model.addAttribute("categories",categories);
        model.addAttribute("categories_seconds",category_seconds);
        model.addAttribute("categories_thirds",category_thirds);
        modelAndView.setViewName("admin/add_product");
        return modelAndView;
    }

}
