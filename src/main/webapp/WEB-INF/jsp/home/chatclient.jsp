<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>TinyBees | 客服聊天</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="/AdminLTE-cn/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="/AdminLTE-cn/plugins/datatables/dataTables.bootstrap.css">
  <link rel="stylesheet" href="/AdminLTE-cn/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="/AdminLTE-cn/dist/css/skins/all-skins.min.css">
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="/js/mqttws31.js"></script>
  <script type="text/javascript">
      var client;
      var clientID;
      $(function($) {
          //$('#con').bind('click',function(){
          clientID=$('#clientID').val();
          client = new Messaging.Client('127.0.0.1',61614,clientID);
          client.onConnectionLost = function(){
              $('#message').append('连接已断开');
          };
          //收到消息
          client.onMessageArrived = function(message){
              var msgObj=jQuery.parseJSON(message.payloadString);
              debugger
              if (msgObj.to==clientID){
                  debugger;
                  $('#message').append("<font color=red>"+msgObj.from+":"+msgObj.body+"</font></br>");
              }
          };
          //建立连接和订阅
          client.connect({onSuccess:function(){
              $('#message').append('连接成功,可以聊天了！'+"</br>");
              //订阅topic
              client.subscribe("topic");
          }});
          //});
          $('#sendBtn').bind('click',function(){
              clientID=$('#clientID').val();
              var msg={};
              msg.from=clientID;
              msg.to=$('#toID').val();
              msg.body=$('#sendMsg').val();
              message = new Messaging.Message(JSON.stringify(msg));
              message.destinationName = "topic";
              client.send(message);
              $('#message').append("我发给"+msg.to+":"+msg.body+"</br>");
          });

      });
  </script>
</head>
<body>
<%String clientID=request.getParameter("clientID");
  String toID=request.getParameter("toID");
%>

<div class="box box-primary center-block direct-chat-primary" style="width: 400px;height: 500px">
  <div class="box-header with-border">
    <h3 class="box-title">客服聊天</h3>

    <div class="box-tools pull-right">
      <span data-toggle="tooltip" title="3 New Messages" class="badge bg-light-blue">3</span>
      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
      </button>
      <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle">
        <i class="fa fa-comments"></i></button>
      <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div>
  <!-- /.box-header -->
  <div class="box-body">
    <!-- Conversations are loaded here -->
    <div class="direct-chat-messages" id="chat" style="height: 400px">
      <%--<div id="message"></div><br>--%>
      <%--<input type="hidden" id="clientID" value="<%=clientID%>">--%>
      <%--<input type="hidden" id="toID" value="<%=toID%>">--%>
      <%--<textarea id="sendMsg" rows="3" cols="50">请输入信息</textarea>--%>
      <%--<button id='sendBtn'>发送</button>--%>

      <!-- Message. Default to the left -->
      <!-- /.direct-chat-msg -->
      <div class="direct-chat-msg">
        <div class="direct-chat-info clearfix">
          <span class="direct-chat-name pull-left">客服小姐</span>
          <span class="direct-chat-timestamp pull-right">
            <fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />
          </span>
        </div>
        <!-- /.direct-chat-info -->
        <img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
        <div class="direct-chat-text">
          <div id="message"></div><br>
        </div>
        <!-- /.direct-chat-text -->
      </div>

    </div>
  </div>
  <!-- /.box-body -->
  <div class="box-footer">
    <form action="/con_send_message" method="post">
      <div class="input-group">
        <input type="hidden" id="clientID" value="<%=clientID%>">
        <input type="hidden" id="toID" value="<%=toID%>">
        <%--<textarea id="sendMsg" rows="3" cols="50">请输入信息</textarea>--%>
        <input id="sendMsg" type="text" name="send_message" placeholder="Type Message ..." class="form-control">
        <span class="input-group-btn">
              <button id='sendBtn' type="button" class="btn btn-primary btn-flat">Send</button>
        </span>
      </div>
    </form>
  </div>
  <!-- /.box-footer-->
</div>


</body>
</html>