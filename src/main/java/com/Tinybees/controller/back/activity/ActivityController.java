package com.Tinybees.controller.back.activity;

import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.Activity;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.security.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by lukbo on 2017/7/26.
 */

@Controller
public class ActivityController {
    private AdminDAO adminDAO;
    private UserDAO userDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    public ActivityController()throws IOException {
        /*-------------------------------------------------------------------------------*/
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");    //类路径
        //创建会话工厂,传入Mybatis的配置文件信息
        this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        this.sqlSession = sqlSessionFactory.openSession();
        adminDAO = sqlSession.getMapper(AdminDAO.class);
        userDAO = sqlSession.getMapper(UserDAO.class);
        /*-------------------------------------------------------------------------------*/
    }

    @RequestMapping("/add_activity")
    public ModelAndView add_activity(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/activity/add_activity");
        return modelAndView;
    }

    @RequestMapping("/activity_lists")
    public ModelAndView activity_lists(Model model){
        ModelAndView modelAndView = new ModelAndView();
        List<Activity> activities=adminDAO.getAllActivity();
        model.addAttribute("activities",activities);
        modelAndView.setViewName("admin/activity/activity_lists");
        return modelAndView;
    }

    @RequestMapping("/post_activity")
    public String post_activity(Model model, HttpServletRequest request){
        String a_name = request.getParameter("a_name");
        String a_reward = request.getParameter("a_reward");
        String s_time = request.getParameter("start_time");
        String e_time = request.getParameter("end_time");
        Date start_time = null;
        Date end_time = null;
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            start_time = dateFormat.parse(s_time);
            end_time = dateFormat.parse(e_time);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(adminDAO.getActivityByName(a_name)==null){
            Activity activity = new Activity();
            activity.setA_name(a_name);
            activity.setA_reward(a_reward);
            activity.setStart_time(start_time);
            activity.setEnd_time(end_time);
            adminDAO.add_activity(activity);
            sqlSession.commit();
            return "redirect:/activity_lists";
        }else {
            return "redirect:/add_activity";
        }
    }

    @RequestMapping("/delete_activity")
    public String delete_activity(HttpServletRequest request){
        int a_id=Integer.parseInt(request.getParameter("a_id"));
        adminDAO.deleteActivityById(a_id);
        return "redirect:/activity_lists";
    }

    @RequestMapping("/update_activity/{activity_name}")
    public ModelAndView update_activity(@PathVariable String activity_name,Model model){
        ModelAndView modelAndView = new ModelAndView();
        Activity activity = adminDAO.getActivityByName(activity_name);
        model.addAttribute("activity",activity);
        modelAndView.setViewName("admin/activity/update_activity");
        return modelAndView;
    }

    @RequestMapping("/post_update_activity")
    public String post_update_activity(HttpServletRequest request){
        int a_id = Integer.parseInt(request.getParameter("a_id").toString());
        String a_name = request.getParameter("a_name");
        String a_reward = request.getParameter("a_reward");
        String s_time = request.getParameter("start_time");
        String e_time = request.getParameter("end_time");
        Date start_time = null;
        Date end_time = null;
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            start_time = dateFormat.parse(s_time);
            end_time = dateFormat.parse(e_time);
        }catch (Exception e){
            e.printStackTrace();
        }
        Activity activity = new Activity();
        activity.setA_name(a_name);
        activity.setA_reward(a_reward);
        activity.setStart_time(start_time);
        activity.setEnd_time(end_time);
        adminDAO.updateActivityById(activity,a_id);
        return "redirect:/activity_lists";
    }
}
