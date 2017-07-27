package com.Tinybees.controller.back.order;

import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.Orderitem;
import com.Tinybees.model.Orders;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by lukbo on 2017/7/25.
 */

@Controller
public class OrderController {

    private AdminDAO adminDAO;
    private UserDAO userDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    public OrderController()throws IOException {
        /*-------------------------------------------------------------------------------*/
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");    //类路径
        //创建会话工厂,传入Mybatis的配置文件信息
        this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        this.sqlSession = sqlSessionFactory.openSession();
        adminDAO = sqlSession.getMapper(AdminDAO.class);
        userDAO = sqlSession.getMapper(UserDAO.class);
        /*-------------------------------------------------------------------------------*/
    }

    @RequestMapping("/order_lists")
    public ModelAndView order_lists(Model model){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/order/order_lists");
        List<Orders> orders = adminDAO.getAllOrders();
        model.addAttribute("orders",orders);
        return modelAndView;
    }

    @RequestMapping("/order_delete_lists")
    public ModelAndView order_delete_lists(Model model){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/order/order_delete_lists");
        List<Orders> orders = adminDAO.getAllOrders();
        model.addAttribute("orders",orders);
        return modelAndView;
    }

    @RequestMapping("/post_order/{order_id}")
    public String post_order(@PathVariable int order_id){
        adminDAO.postOrderById(order_id);
        return "redirect:/order_lists";
    }
}
