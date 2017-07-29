<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
    <%--<title>Insert title here</title>--%>
    <%--<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>--%>
    <%--<script type="text/javascript" src="/js/mqttws31.js"></script>--%>
    <%--<script type="text/javascript">--%>
        <%--var client;--%>
        <%--var clientID;--%>
        <%--$(window).on('beforeunload',function(){--%>
            <%--client=null;--%>
            <%--window.opener.document.getElementById("flag").value="0";--%>
        <%--});--%>
        <%--$(function($) {--%>
            <%--//$('#con').bind('click',function(){--%>
            <%--clientID=$('#clientID').val();--%>
            <%--client = new Messaging.Client('127.0.0.1',61614,clientID);--%>
            <%--client.onConnectionLost = function(){--%>
                <%--$('#message').append('连接已断开');--%>
            <%--};--%>
            <%--//收到消息--%>
            <%--client.onMessageArrived = function(message){--%>
                <%--var msgObj=jQuery.parseJSON(message.payloadString);--%>
                <%--$('#toID').val(msgObj.from);--%>
                <%--debugger--%>
                <%--if (msgObj.to==clientID){--%>
                    <%--debugger;--%>
                    <%--$('#message').append("<font color=red>"+msgObj.from+":"+msgObj.body+"</font></br>");--%>
                    <%--var Uarry=$("#contactUL li");//获取所有的li元素--%>
                    <%--var flag="0";--%>
                    <%--$("ul>li").each(function(index){--%>
                        <%--var Tresult=Uarry.eq(index).text();--%>
                        <%--if(Tresult==msgObj.from)--%>
                            <%--flag="1";--%>
                        <%--return;--%>
                    <%--});--%>
                    <%--if(flag=="0"){--%>
                        <%--$("#contactUL").append("<li value="+msgObj.from+">"+msgObj.from+"</li>");--%>
                    <%--}--%>
                <%--}--%>
            <%--};--%>
            <%--//建立连接和订阅--%>
            <%--client.connect({onSuccess:function(){--%>
                <%--$('#message').append('连接成功,可以聊天了！'+"</br>");--%>
                <%--//订阅topic--%>
                <%--client.subscribe("topic");--%>
            <%--}});--%>
            <%--//});--%>
            <%--$('#sendBtn').bind('click',function(){--%>
                <%--clientID=$('#clientID').val();--%>
                <%--var msg={};--%>
                <%--msg.from=clientID;--%>
                <%--msg.to=$('#toID').val();--%>
                <%--msg.body=$('#sendMsg').val();--%>
                <%--message = new Messaging.Message(JSON.stringify(msg));--%>
                <%--message.destinationName = "topic";--%>
                <%--client.send(message);--%>
                <%--$('#message').append("我发给"+msg.to+":"+msg.body+"</br>");--%>
            <%--});--%>
            <%--$("#contactUL").on("click","li",function(){      //只需要找到你点击的是哪个ul里面的就行--%>
                <%--var thisToId=$(this).text();--%>
                <%--$('#toID').val(thisToId);--%>
            <%--});--%>
        <%--});--%>
    <%--</script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%String clientID=request.getParameter("clientID");--%>
    <%--String toID=request.getParameter("toID");--%>
<%--%>--%>
<%--<table>--%>
    <%--<tr>--%>
        <%--<td><div id="message"></div><br>--%>
            <%--<input type="hidden" id="clientID" value="<%=clientID%>">--%>
            <%--<input type="hidden" id="toID" value="<%=toID%>">--%>
            <%--<textarea id="sendMsg" rows="3" cols="50">请输入信息</textarea>--%>
            <%--<button id='sendBtn'>发送</button>--%>
        <%--</td>--%>
        <%--<td>--%>
            <%--<div id="contacts">--%>
                <%--<ul id="contactUL">--%>
                <%--</ul>--%>
            <%--</div>--%>
        <%--</td>--%>
    <%--</tr>--%>
<%--</table>--%>
<%--<input  id="flag" type="hidden" name="flag" value='0' /><br>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/js/mqttws31.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TinyBees | 客户聊天</title>
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
        $(window).on('beforeunload',function(){
            client=null;
            window.opener.document.getElementById("flag").value="0";
        });
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
                $('#toID').val(msgObj.from);
                debugger
                if (msgObj.to==clientID&&msgObj.from!="Admin"){
                    debugger;
//                    $('#message').append("<font color=red>"+msgObj.from+":"+msgObj.body+"</font></br>");

                    var top=document.getElementById("chat");
                    var div1=document.createElement("div");
                    var div2=document.createElement("div");
                    var div3=document.createElement("div");
                    var span0=document.createElement("span");
                    var span1=document.createElement("span");
                    var span2=document.createElement("span");
                    var img1=document.createElement("img");

                    div1.className="direct-chat-msg";
                    div2.className="direct-chat-info clearfix";
                    span1.className="direct-chat-name pull-left";
                    span1.innerHTML=msgObj.from;
                    span2.className="direct-chat-timestamp pull-right";
                    img1.className="direct-chat-img";
                    img1.src="/AdminLTE-cn/dist/img/user1-128x128.jpg";
                    span0.className="direct-chat-text";
                    span0.innerHTML=msgObj.body;

                    top.appendChild(div1);
                    div1.appendChild(div2);
                    div2.appendChild(span1);
                    div2.appendChild(span2);
                    div1.appendChild(img1);
                    div1.appendChild(div3);
                    div3.appendChild(span0);


                    var Uarry=$("#contactUL li");//获取所有的li元素
                    var flag="0";
                    $("ul>li").each(function(index){
                        var Tresult=Uarry.eq(index).text();
                        if(Tresult==msgObj.from)
                            flag="1";
                        return;
                    });
                    if(flag=="0"){
                        $("#contactUL").append("<li value="+msgObj.from+">"+msgObj.from+"</li>");
                    }
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
//                $('#message').append("我发给"+msg.to+":"+msg.body+"</br>");


                var top1=document.getElementById("chat");
                var div10=document.createElement("div");
                var div20=document.createElement("div");
                var div30=document.createElement("div");
                var span10=document.createElement("span");
                var span20=document.createElement("span");
                var img10=document.createElement("img");


                div10.className="direct-chat-msg right";
                div20.className="direct-chat-info clearfix";
                span10.className="direct-chat-name pull-right";
                span10.innerHTML=msg.from;
                span20.className="direct-chat-timestamp pull-left";
                img10.className="direct-chat-img";
                img10.src="/AdminLTE-cn/dist/img/user3-128x128.jpg";

                div30.className="direct-chat-text";


                div30.innerHTML=msg.body;

                top1.appendChild(div10);
                div10.appendChild(div20);
                div20.appendChild(span10);
                div20.appendChild(span20);
                div10.appendChild(img10);
                div10.appendChild(div30);




            });

            $("#contactUL").on("click","li",function(){      //只需要找到你点击的是哪个ul里面的就行
                var thisToId=$(this).text();
                $('#toID').val(thisToId);
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
        <h3 class="box-title center-block">客户聊天</h3>

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

            <div class="direct-chat-msg">
                <div class="direct-chat-info clearfix">
                    <span class="direct-chat-name pull-left">${clientID}</span>
                    <span class="direct-chat-timestamp pull-right">
            <fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />
          </span>
                </div>
                <!-- /.direct-chat-info -->
                <img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user1-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
                <div class="direct-chat-text">
                    <div id="message"></div>
                </div>
                <!-- /.direct-chat-text -->
            </div>

            <%--<div class="direct-chat-msg right">--%>
            <%--<div class="direct-chat-info clearfix">--%>
            <%--<span class="direct-chat-name pull-right">管理员</span>--%>
            <%--<span class="direct-chat-timestamp pull-left">--%>
            <%--<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />--%>
            <%--</span>--%>
            <%--</div>--%>
            <%--<!-- /.direct-chat-info -->--%>
            <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->--%>
            <%--<div class="direct-chat-text">--%>
            <%--<div id="message1"></div><br>--%>
            <%--</div>--%>
            <%--</div>--%>

        </div>
    </div>
    <!-- /.box-body -->
    <div class="box-footer">
        <%--<form action="/con_send_message" method="post">--%>
        <div class="input-group">
            <input type="hidden" id="clientID" value="<%=clientID%>">
            <input type="hidden" id="toID" value="<%=toID%>">
            <%--<textarea id="sendMsg" rows="3" cols="50">请输入信息</textarea>--%>
            <input id="sendMsg" type="text" name="send_message" placeholder="Type Message ..." class="form-control">
            <span class="input-group-btn">
              <button id='sendBtn' type="button" class="btn btn-primary btn-flat">Send</button>
        </span>
        </div>
        <%--</form>--%>
    </div>
    <!-- /.box-footer-->
</div>









<%--<table>--%>
<%--<tr>--%>
<%--<td><div id="message"></div><br>--%>
<%--<input type="hidden" id="clientID" value="Admin">--%>
<%--<input type="hidden" id="toID" value="哈哈哈">--%>
<%--<textarea id="sendMsg" rows="3" cols="50">请输入信息</textarea>--%>
<%--<button id='sendBtn'>发送</button>--%>
<%--</td>--%>
<%--<td>--%>
<%--<div id="contacts">--%>
<%--<ul id="contactUL">--%>
<%--</ul>--%>
<%--</div>--%>
<%--</td>--%>
<%--</tr>--%>
<%--</table>--%>
<%--<input  id="flag" type="hidden" name="flag" value='0' /><br>--%>
</body>
</html>