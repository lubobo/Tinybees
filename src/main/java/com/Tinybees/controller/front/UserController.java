package com.Tinybees.controller.front;

import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.User;
import org.apache.activemq.ActiveMQConnection;
import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jms.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lukbo on 2017/7/17.
 */
@Controller
public class UserController {
    private UserDAO userDAO;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    private String pro_messages;
    private String send_messages;
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
            httpSession.setAttribute("user_id",user1.getU_id());
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
//        this.sqlSession.commit();
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


    @RequestMapping("/con_comm")
    public ModelAndView con_comm(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/community");
        return modelAndView;
    }

    @RequestMapping("/con_community")
    public void con_community(Model model,HttpServletResponse response){
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
//             **************************获取生产者消息************************
            //获取操作连接
            session = connection.createSession(Boolean.FALSE, Session.AUTO_ACKNOWLEDGE);
            destination = session.createQueue("pro_message");
            consumer = session.createConsumer(destination);
//            while(true){
                //设置接收者收消息的时间，为了方便测试，这里暂定设置为100s
                TextMessage message1 = (TextMessage)consumer.receive(100);
                if(null != message1){
                    System.out.println("收到消息==="+message1.getText());
                    pro_messages = message1.getText();
                }
//                else{
//                    break;
//                }
//            }
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
        System.out.println("pro_message:"+pro_messages);
        System.out.println("send_message:"+send_messages);
//        model.addAttribute("pro_messages",pro_messages);
//        model.addAttribute("send_messages",send_messages);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("pro_messages",pro_messages);
        response.setHeader("send_messages",send_messages);
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("home/community");
//        return modelAndView;
    }

    @RequestMapping("/con_send_message")
    public String con_send_message(HttpServletRequest request,Model model){
        String send_message = request.getParameter("send_message");
//        String message = request.getParameter("send_message");
        //connectionFactory 连接工厂，JMS用它创建连接
        ConnectionFactory connectionFactory;
        //connection JMS客户端到JMS provider 的连接
        Connection connection = null;
        //session一个发送或者接收的线程
        Session session;
        //destination 消息目的地，发送给谁接收
        Destination destination;
        //MessageProducer 消息发送者
        MessageProducer messageProducer;
        connectionFactory = new ActiveMQConnectionFactory(
                ActiveMQConnection.DEFAULT_USER,
                ActiveMQConnection.DEFAULT_PASSWORD,
                "tcp://localhost:61616");
        try {
            //构造工厂得到连接对象
            connection = connectionFactory.createConnection();
            //启动
            connection.start();
//          *********************************往消费者队列放消息***************************
            //获取操作连接
            session = connection.createSession(Boolean.TRUE, Session.AUTO_ACKNOWLEDGE);
            //创建一个Queue，名称为SongLiGuo_FirstQueue
            destination = session.createQueue("con_message");
            //得到消息生产者【发送者】
            messageProducer = session.createProducer(destination);
            //设置不持久化，根据实际情况而定
            messageProducer.setDeliveryMode(DeliveryMode.NON_PERSISTENT);
            //构造消息，此处写死，项目就是参数或者方法获取
            sendMessage(send_message,session, messageProducer);
            session.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if(null != connection){
                    connection.close();
                }
            } catch (Throwable ignore) {
            }
        }
        send_messages=send_message;
//        model.addAttribute("send_messages",send_messages);
//        model.addAttribute("pro_massage",pro_messages);
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("home/community");
//        return modelAndView;
        return "redirect:/con_community";
    }

    public static void sendMessage(String pro_message, Session session, MessageProducer producer)throws Exception {
        TextMessage message = session.createTextMessage(pro_message);
        // 发送消息到目的地方
        System.out.println(pro_message);
        producer.send(message);
    }

    @RequestMapping("/profile")
    public ModelAndView profile(Model model,HttpSession session,HttpServletRequest request){
        HttpSession httpSession = request.getSession();
        int user_id = Integer.parseInt(httpSession.getAttribute("user_id").toString());
        User user = userDAO.getUserById(user_id);
        model.addAttribute("user",user);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/profile");
        return modelAndView;
    }

    @RequestMapping("/update_user_password")
    public String update_user(HttpServletRequest request){
        int u_id = Integer.parseInt(request.getParameter("u_id").toString());
        String password = request.getParameter("password");
        userDAO.updateUserPasswordById(u_id,password);
        return "redirect:/profile";
    }

    @RequestMapping("/update_user_name")
    public String update_user_name(HttpServletRequest request){
        int u_id = Integer.parseInt(request.getParameter("u_id").toString());
        String name = request.getParameter("name");
        userDAO.updateUserNameById(u_id,name);
        return "redirect:/profile";
    }

    @RequestMapping("/update_user_email")
    public String update_user_email(HttpServletRequest request){
        int u_id = Integer.parseInt(request.getParameter("u_id").toString());
        String email = request.getParameter("email");
        userDAO.updateUserEmailById(u_id,email);
        return "redirect:/profile";
    }

    @RequestMapping("/update_user_phone")
    public String update_user_phone(HttpServletRequest request){
        int u_id = Integer.parseInt(request.getParameter("u_id").toString());
        String phone = request.getParameter("phone");
        userDAO.updateUserPhoneById(u_id,phone);
        return "redirect:/profile";
    }

    @RequestMapping("/update_user_CC")
    public String update_user_CC(HttpServletRequest request){
        int u_id = Integer.parseInt(request.getParameter("u_id").toString());
        String country = request.getParameter("country");
        String region = request.getParameter("region");
        userDAO.updateUserCCById(u_id,country,region);
        return "redirect:/profile";
    }

    @RequestMapping("/update_user_adr")
    public String update_user_adr(HttpServletRequest request){
        int u_id = Integer.parseInt(request.getParameter("u_id").toString());
        String adr = request.getParameter("adr");
        userDAO.updateUserAdrById(u_id,adr);
        return "redirect:/profile";
    }
}

