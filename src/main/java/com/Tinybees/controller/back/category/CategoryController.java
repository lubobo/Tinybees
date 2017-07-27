package com.Tinybees.controller.back.category;

import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.Category;
import com.Tinybees.model.Category_second;
import com.Tinybees.model.Category_third;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by lukbo on 2017/7/25.
 */
@Controller
public class CategoryController {

    private AdminDAO adminDAO;
    private UserDAO userDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    public CategoryController()throws IOException {
        /*-------------------------------------------------------------------------------*/
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");    //类路径
        //创建会话工厂,传入Mybatis的配置文件信息
        this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        this.sqlSession = sqlSessionFactory.openSession();
        adminDAO = sqlSession.getMapper(AdminDAO.class);
        userDAO = sqlSession.getMapper(UserDAO.class);
        /*-------------------------------------------------------------------------------*/
    }

    @RequestMapping("/sort_list")
    public ModelAndView sort_list(Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Category> categories = adminDAO.getAllCategory();
        model.addAttribute("categories",categories);
        modelAndView.setViewName("/admin/classfication/sort_lists");
        return modelAndView;
    }

    @RequestMapping("/sort_list_2/{category_id}")
    public ModelAndView sort_list_2(@PathVariable String category_id, Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Category_second> category_seconds = adminDAO.getAllCategorySecondById(category_id);
        Category category = adminDAO.getCategoryById(category_id);
        model.addAttribute("category",category);
        model.addAttribute("category_seconds",category_seconds);
        modelAndView.setViewName("admin/classfication/sort_list_2");
        return modelAndView;
    }

    @RequestMapping("/sort_list_3/{category_id}/{category_second_id}")
    public ModelAndView sort_list_3(@PathVariable String category_id,@PathVariable String category_second_id,Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Category_third> category_thirds = adminDAO.getAllCategoryThirdById(category_second_id);
        Category_second category_second = adminDAO.getCategorySecondById(category_second_id);
        Category category = adminDAO.getCategoryById(category_id);
        model.addAttribute("category",category);
        model.addAttribute("category_second",category_second);
        model.addAttribute("category_thirds",category_thirds);
        modelAndView.setViewName("admin/classfication/sort_list_3");
        return modelAndView;
    }

    @RequestMapping("/add_sort")
    public ModelAndView add_sort(Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Category> categories = adminDAO.getAllCategory();
        model.addAttribute("categories",categories);
        modelAndView.setViewName("admin/classfication/add_sort");
        return modelAndView;
    }

    @RequestMapping("/post_sort_1")
    public String post_sort_1(HttpServletRequest request){
        String category = request.getParameter("category");
        Category category1 = new Category();
        category1.setC_name(category);
        adminDAO.add_category(category1);
        return "redirect:/add_sort";
    }

    @RequestMapping("/add_sort_2/{category_id}")
    public ModelAndView add_sort_2(@PathVariable String category_id,Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Category_second> category_seconds = adminDAO.getAllCategorySecondById(category_id);
        Category category = adminDAO.getCategoryById(category_id);
        model.addAttribute("category",category);
        model.addAttribute("category_id",category_id);
        model.addAttribute("category_seconds",category_seconds);
        modelAndView.setViewName("admin/classfication/add_sort_2");
        return modelAndView;
    }

    @RequestMapping("/post_sort_2")
    public String post_sort_2(HttpServletRequest request){
        String category_id = request.getParameter("category_id");
        String category_second = request.getParameter("category_second");
        Category_second category_second1 = new Category_second();
        category_second1.setCs_name(category_second);
        adminDAO.add_category_second(category_second1,category_id);
        return "redirect:/add_sort_2/"+category_id;
    }

    @RequestMapping("/add_sort_3/{category_id}/{category_second_id}")
    public ModelAndView add_sort_3(@PathVariable String category_id,@PathVariable String category_second_id,Model model){

        ModelAndView modelAndView = new ModelAndView();
        List<Category_third> category_thirds = adminDAO.getAllCategoryThirdById(category_second_id);
        Category_second category_second = adminDAO.getCategorySecondById(category_second_id);
        Category category = adminDAO.getCategoryById(category_id);
        model.addAttribute("category",category);
        model.addAttribute("category_second",category_second);
        model.addAttribute("category_id",category_id);
        model.addAttribute("category_second_id",category_second_id);
        model.addAttribute("category_thirds",category_thirds);
        modelAndView.setViewName("admin/classfication/add_sort_3");
        return modelAndView;
    }

    @RequestMapping("/post_sort_3")
    public String post_sort_3(HttpServletRequest request){
        String category_second_id = request.getParameter("category_second_id");
        String category_third = request.getParameter("category_third");
        String category_id = request.getParameter("category_id");
        Category_third category_third1 = new Category_third();
        category_third1.setCt_name(category_third);
        adminDAO.add_category_third(category_third1,category_second_id);
        return "redirect:/add_sort_3/"+category_id+"/"+category_second_id;
    }

    @RequestMapping("/delete_category")
    public String delete_category(HttpServletRequest request){
        String category_id = request.getParameter("category_id");
        adminDAO.deleteCategory(category_id);
        return "redirect:/add_sort";
    }

    @RequestMapping("/delete_category_second")
    public String delete_category_second(HttpServletRequest request){
        String category_id = request.getParameter("category_id");
        String category_second_id = request.getParameter("category_second_id");
        adminDAO.deleteCategory_Second(category_second_id);
        return "redirect:/add_sort_2/"+category_id;
    }

    @RequestMapping("/delete_category_third")
    public String delete_category_third(HttpServletRequest request){
        String category_id = request.getParameter("category_id");
        String category_second_id = request.getParameter("category_second_id");
        String category_third_id = request.getParameter("category_third_id");
        adminDAO.deleteCategory_Third(category_third_id);
        return "redirect:/add_sort_3/"+category_id+"/"+category_second_id;
    }

    @RequestMapping("/sort_second/{categories}")
    public ModelAndView sort_second(@PathVariable String categories,Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Category_second> category_seconds = adminDAO.getAllCategorySecondById(categories);
        List<Category> categories1 = adminDAO.getAllCategory();
        model.addAttribute("categories",categories1);
        model.addAttribute("category",adminDAO.getCategoryById(categories));
        model.addAttribute("categories_seconds",category_seconds);
        modelAndView.setViewName("admin/classfication/add_sort_2");
        return modelAndView;
    }

    @RequestMapping(value = "/sort_third/{categories}/{categories_second}")
    public ModelAndView sort_third(@PathVariable String categories,@PathVariable String categories_second, Model model,HttpServletRequest request,HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        List<Category_third> category_thirds = adminDAO.getAllCategoryThirdById(categories);
        model.addAttribute("category",adminDAO.getCategoryById(categories));
        model.addAttribute("category_second",adminDAO.getCategorySecondById(categories_second));

        model.addAttribute("categories",adminDAO.getAllCategory());
        model.addAttribute("categories_second",adminDAO.getAllCategorySecondById(categories_second));

        model.addAttribute("categories_third",category_thirds);
        modelAndView.setViewName("admin/classfication/add_sort_3");
        return modelAndView;
    }

    @RequestMapping("/update_sort_1")
    public String update_sort_1(HttpServletRequest request){
        int c_id = Integer.parseInt(request.getParameter("c_id").toString());
        String c_name = request.getParameter("c_name");
        adminDAO.updateCategoryById(c_id,c_name);
        return "redirect:/sort_list";
    }

    @RequestMapping("/update_sort_2")
    public String update_sort_2(HttpServletRequest request){
        int cs_id = Integer.parseInt(request.getParameter("cs_id").toString());
        int c_id = Integer.parseInt(request.getParameter("c_id").toString());
        String cs_name = request.getParameter("cs_name");
        adminDAO.updateCategorySecondById(cs_id,cs_name);
        return "redirect:/sort_list_2/"+c_id;
    }

    @RequestMapping("/update_sort_3")
    public String update_sort_3(HttpServletRequest request){
        int c_id = Integer.parseInt(request.getParameter("c_id").toString());
        int cs_id = Integer.parseInt(request.getParameter("cs_id").toString());
        int ct_id = Integer.parseInt(request.getParameter("ct_id").toString());
        String ct_name = request.getParameter("ct_name");
        adminDAO.updateCategoryThirdById(ct_id,ct_name);
        return "redirect:/sort_list_3/"+c_id+"/"+cs_id;
    }
}
