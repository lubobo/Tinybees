package com.Tinybees.controller.back.admin;

import com.Tinybees.listener.ConsumerMessageListener;
import com.Tinybees.listener.UserManager;
import com.Tinybees.mapper.admin.AdminDAO;
import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.activemq.ActiveMQConnection;
import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import sun.plugin2.message.Message;
import sun.plugin2.message.Serializer;

import javax.jms.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/**
 * Created by lukbo on 2017/7/17.
 */
@Controller
public class AdminController {

    private List<String> messages = new ArrayList<String>();
    private List<String> send_message = new ArrayList<String>();

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
    public ModelAndView community(Model model){
        //connectionFactory 连接工厂，JMS用它创建连接
        ConnectionFactory connectionFactory;
        //connection JMS客户端到JMS provider 的连接
        Connection connection = null;
        //session一个发送或者接收的线程
        Session session;
        //destination 消息目的地，发送给谁接收
        Destination destination;
        //消费者消息接收者
        MessageConsumer consumer;
        connectionFactory = new ActiveMQConnectionFactory(
                ActiveMQConnection.DEFAULT_USER,
                ActiveMQConnection.DEFAULT_PASSWORD,
                "tcp://localhost:61616");
        try {
            //构造工厂得到连接对象
            connection = connectionFactory.createConnection();
            //启动
            connection.start();
//        *****************************获取消费者消息**************************
            //获取操作连接
            session = connection.createSession(Boolean.FALSE, Session.AUTO_ACKNOWLEDGE);
            destination = session.createQueue("con_message");
            consumer = session.createConsumer(destination);
            while(true){
                //设置接收者收消息的时间，为了方便测试，这里暂定设置为100s
                TextMessage message1 = (TextMessage)consumer.receive(100);
                if(null != message1){
                    messages.add(message1.getText());
                    System.out.println("收到消息==="+message1.getText());
                }else{
                    break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if(null != connection){
                    connection.close();
                }
            } catch (Throwable ignore) {
            }
        }
        model.addAttribute("con_messages",messages);
        model.addAttribute("send_messages",send_message);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("admin/user/community");
        return modelAndView;
    }

    @RequestMapping("/pro_send_message")
    public String pro_send_message(HttpServletRequest request){
        String message = request.getParameter("message");
        //ConnectionFactory是连接工厂，JMS用它创建连接
        ConnectionFactory connectionFactory;
        //Connection JMS客户端到JMS provider的连接
        Connection connection = null;
        //Session 一个发送或者接收消息的线程
        Session session;
        //Destination 消息发送目的地，消息发送给谁接收
        Destination destination;
        //MessageProducer 消息发送者
        MessageProducer messageProducer;
        //消费者消息接收者
        MessageConsumer consumer;
        //构造ConnectionFactory 实例对象，此处采用ActiveMQ的实现jar
        connectionFactory = new ActiveMQConnectionFactory(
                ActiveMQConnection.DEFAULT_USER,
                ActiveMQConnection.DEFAULT_PASSWORD,
                "tcp://localhost:61616");
        try {
            //构造工厂得到连接对象
            connection = connectionFactory.createConnection();
            //启动
            connection.start();
            //获取操作连接
            session = connection.createSession(Boolean.TRUE, Session.AUTO_ACKNOWLEDGE);
            //创建一个Queue，名称为SongLiGuo_FirstQueue
            destination = session.createQueue("pro_message");
            //得到消息生产者【发送者】
            messageProducer = session.createProducer(destination);
            //设置不持久化，根据实际情况而定
            messageProducer.setDeliveryMode(DeliveryMode.NON_PERSISTENT);
            //构造消息，此处写死，项目就是参数或者方法获取
            sendMessage(message,session, messageProducer);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if(null != connection){
                    connection.close();
                }
            } catch (Throwable ignore) {
            }
        }
        send_message.add(message);
//        attributes.addFlashAttribute("send_messages",send_message);
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("admin/user/community");
//        return modelAndView;
        return "redirect:/community";
    }

    public static void sendMessage(String pro_message, Session session, MessageProducer producer)throws Exception {
        TextMessage message = session.createTextMessage(pro_message);
        // 发送消息到目的地方
        System.out.println(pro_message);
        producer.send(message);
    }
}