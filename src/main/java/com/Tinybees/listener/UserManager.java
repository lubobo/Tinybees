package com.Tinybees.listener;


import org.apache.activemq.command.ActiveMQQueue;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.Session;

/**
 * Created by lukbo on 2017/7/27.
 */
public class UserManager implements IUserManager{
    @Value("#{jmsTemplate}")
    private JmsTemplate jmsTemplate;
    @Value("#{queueDestination}")
    private ActiveMQQueue queueDestination;

    public void sendMessage(final String message){
        System.out.println("生产者发送了一个消息:"+message);
        jmsTemplate.send(queueDestination, new MessageCreator() {
            public Message createMessage(Session session) throws JMSException {
                return session.createTextMessage(message);
            }
        });
    }
}
