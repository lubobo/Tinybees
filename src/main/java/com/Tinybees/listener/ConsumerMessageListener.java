package com.Tinybees.listener;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * Created by lukbo on 2017/7/27.
 */
public class ConsumerMessageListener implements MessageListener {
    public void onMessage(Message message){
        TextMessage textMessage = (TextMessage) message;
        System.out.println("收到一个纯文本消息");
        try {
            System.out.println("消息内容是:"+textMessage.getText());
        }catch (JMSException e){
            e.printStackTrace();
        }
    }
}
