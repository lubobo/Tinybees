package com.Tinybees.controller.back;

import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.model.*;
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
    public ModelAndView add_product(Model model,HttpServletRequest request,HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        List<Category> categories = adminDAO.getAllCategory();
        model.addAttribute("categories",categories);
        modelAndView.setViewName("admin/product/add_product");
        return modelAndView;
    }

    @RequestMapping(value = "/getCategory_second/{categories}")
    public void getCategories_second(@PathVariable String categories,HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(categories);
    }

    @RequestMapping(value = "/category_second/{categories}")
    public ModelAndView getCategory_second(@PathVariable String categories, Model model, HttpServletRequest request, HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        List<Category_second> category_seconds = adminDAO.getAllCategorySecondById(categories);
        List<Category> categories1 =adminDAO.getAllCategory();
        model.addAttribute("category",adminDAO.getCategoryById(categories));
        model.addAttribute("categories",categories1);
        model.addAttribute("categories_seconds",category_seconds);
        modelAndView.setViewName("admin/product/add_product_1");
        return modelAndView;
    }

    @RequestMapping(value = "/getCategory_third/{categories}/{categories_second}")
    public void getCategory_third(@PathVariable String categories,@PathVariable String categories_second,HttpServletResponse response) throws IOException{
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("categories",categories);
        response.setHeader("categories_second",categories_second);
    }

    @RequestMapping(value = "/category_third/{categories}/{categories_second}")
    public ModelAndView category_third(@PathVariable String categories,@PathVariable String categories_second, Model model,HttpServletRequest request,HttpServletResponse response){
        ModelAndView modelAndView = new ModelAndView();
        List<Category_third> category_thirds = adminDAO.getAllCategoryThirdById(categories_second);

        model.addAttribute("category",adminDAO.getCategoryById(categories));
        model.addAttribute("category_second",adminDAO.getCategorySecondById(categories_second));

        model.addAttribute("categories",adminDAO.getAllCategory());
        model.addAttribute("categories_second",adminDAO.getAllCategorySecondById(categories_second));

        model.addAttribute("categories_third",category_thirds);
        modelAndView.setViewName("admin/product/add_product_2");
        return modelAndView;
    }

    @RequestMapping("/post_product")
    public String post_product(Model model,HttpServletRequest request)throws IllegalStateException,IOException{
        Product product = new Product();
        String ct_name = request.getParameter("ct_name");
        String p_name = request.getParameter("p_name");
        String p_desc = request.getParameter("p_desc");
        String p_market = request.getParameter("p_market");
        String p_current = request.getParameter("p_current");
        String p_color = request.getParameter("p_color");
        String p_size = request.getParameter("p_size");
        CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
        if(multipartResolver.isMultipart(request)){
            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
            Iterator iter=multiRequest.getFileNames();
            int count = 0;
            while(iter.hasNext()){
                count++;
                MultipartFile file=multiRequest.getFile(iter.next().toString());
                if(file!=null){
                    String path= "E:/Programs/IdeaProjects/Tinybees/src/main/webapp/public/images/"+file.getOriginalFilename();
                    //上传
                    if(count==1){
                        product.setImage(path);
                    }else if(count==2){
                        product.setImage1(path);
                    }else if(count==3){
                        product.setImage2(path);
                    }else if(count==4){
                        product.setImage3(path);
                    }
                    file.transferTo(new File(path));
                }
            }
        }
        product.setP_name(p_name);
        product.setMarket_price(p_market);
        product.setCurrent_price(p_current);
        product.setColor(p_color);
        product.setCt_id(ct_name);
        product.setPdesc(p_desc);
        product.setSize(p_size);
        product.setAvailability(0);
        adminDAO.addProduct(product);
        return "redirect:/product_lists";
    }

    @RequestMapping("/product_lists")
    public ModelAndView product_lists(Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products = adminDAO.getAllProduct();
        model.addAttribute("products",products);
        modelAndView.setViewName("admin/product/product_lists");
        return modelAndView;
    }

    @RequestMapping("/delete_product")
    public String delete_product(HttpServletRequest request){
        int product_id=Integer.parseInt(request.getParameter("product_id"));
        adminDAO.deleteProductById(product_id);
        return "redirect:/product_lists";
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
    public ModelAndView sort_list_2(@PathVariable String category_id,Model model){
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

    @RequestMapping("add_sort")
    public ModelAndView add_sort(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/classfication/add_sort");
        return modelAndView;
    }
}
