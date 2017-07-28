<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/28
  Time: 0:16
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<% response.setHeader("refresh","5"); %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TinyBees | 客服聊天</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/AdminLTE-cn/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/AdminLTE-cn/plugins/datatables/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/AdminLTE-cn/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/AdminLTE-cn/dist/css/skins/all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<script>
    function flash() {
        var xmlhttp;
        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
        } else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                if(xmlhttp.getResponseHeader("pro_messages")){
                    var str=xmlhttp.getResponseHeader("pro_message");
                    var top=document.getElementById("chat");
                    var div1=document.createElement("div");
                    var div2=document.createElement("div");
                    var div3=document.createElement("div");
                    var span0=document.createElement("span");
                    var span1=document.createElement("span");
                    var span2=document.createElement("span");
                    var img1=document.createElement("img");

                    alert(xmlhttp.getResponseHeader("pro_message"));

                    div1.className="direct-chat-msg";
                    div2.className="direct-chat-info clearfix";
                    span1.className="direct-chat-name pull-left";
                    span1.innerHTML="客服小姐";
                    span2.className="direct-chat-timestamp pull-right";
                    img1.className="direct-chat-img";
                    img1.src="/AdminLTE-cn/dist/img/user3-128x128.jpg";
                    span0.className="direct-chat-text";
                    span0.innerHTML="nimabi";

                    top.appendChild(div1);
                    div1.appendChild(div2);
                    div2.appendChild(span1);
                    div2.appendChild(span2);
                    div1.appendChild(img1);
                    div1.appendChild(div3);
                    div3.appendChild(span0);

                }else if(xmlhttp.getResponseHeader("send_messages")){
                    var send_message=xmlhttp.getResponseHeader("send_message");
                    var top1=document.getElementById("chat");
                    var div10=document.createElement("div");
                    var div20=document.createElement("div");
                    var div30=document.createElement("div");
                    var span10=document.createElement("span");
                    var span20=document.createElement("span");
                    var img10=document.createElement("img");

                    alert(send_message);

                    div10.styleclass="direct-chat-msg right";
                    div20.styleclass="direct-chat-info clearfix";
                    span10.styleclass="direct-chat-name pull-right";
                    span10.innerHTML="肖国红";
                    span20.styleclass="direct-chat-timestamp pull-left";
                    img10.styleclass="direct-chat-img";
                    img10.src("/AdminLTE-cn/dist/img/user1-128x128.jpg");
                    div30.styleclass="direct-chat-text";
                    div30.innerHTML=send_message;

                    top1.appendChild(div10);
                    div10.appendChild(div20);
                    div20.appendChild(span10);
                    div20.appendChild(span20);
                    div10.appendChild(img10);
                    div10.appendChild(div30);
                }
            }
        }
        xmlhttp.open("GET", "/con_community", true);
        xmlhttp.send();
    }
</script>
<body onload="flash()">
<div class="box box-primary center-block direct-chat-primary" style="width: 600px;height: 620px">
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
        <div class="direct-chat-messages" id="chat" style="height: 500px">
            <!-- Message. Default to the left -->
            <!-- /.direct-chat-msg -->
            <%--<div class="direct-chat-msg">--%>
                <%--<div class="direct-chat-info clearfix">--%>
                    <%--<span class="direct-chat-name pull-left">客服小姐</span>--%>
                    <%--<span class="direct-chat-timestamp pull-right">--%>
                        <%--<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />--%>
                    <%--</span>--%>
                <%--</div>--%>
                <%--<!-- /.direct-chat-info -->--%>
                <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->--%>
                <%--<div class="direct-chat-text">--%>
                    <%--客服小姐为你服务！！！--%>
                <%--</div>--%>
                <%--<!-- /.direct-chat-text -->--%>
            <%--</div>--%>

            <%--<c:if test="${!empty pro_messages}">--%>
                <%--<c:forEach var="pro_mess" items="${pro_messages}">--%>
                    <%--<div class="direct-chat-msg">--%>
                        <%--<div class="direct-chat-info clearfix">--%>
                            <%--<span class="direct-chat-name pull-left">客服小姐</span>--%>
                            <%--<span class="direct-chat-timestamp pull-right">--%>
                                <%--<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />--%>
                            <%--</span>--%>
                        <%--</div>--%>
                        <%--<!-- /.direct-chat-info -->--%>
                        <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->--%>
                        <%--<div class="direct-chat-text">--%>
                                <%--${pro_mess}--%>
                        <%--</div>--%>
                        <%--<!-- /.direct-chat-text -->--%>
                    <%--</div>--%>
                <%--</c:forEach>--%>
            <%--</c:if>--%>

            <%--<c:if test="${!empty send_messages}">--%>
                <%--<c:forEach var="send_mess" items="${send_messages}">--%>
                    <%--<div class="direct-chat-msg right">--%>
                        <%--<div class="direct-chat-info clearfix">--%>
                            <%--<span class="direct-chat-name pull-right">肖国红</span>--%>
                            <%--<span class="direct-chat-timestamp pull-left">--%>
                            <%--<fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />--%>
                        <%--</span>--%>
                        <%--</div>--%>
                        <%--<!-- /.direct-chat-info -->--%>
                        <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user1-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->--%>
                        <%--<div class="direct-chat-text">--%>
                                <%--${send_mess}--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</c:forEach>--%>
            <%--</c:if>--%>

        </div>
    </div>
    <!-- /.box-body -->
    <div class="box-footer">
        <form action="/con_send_message" method="post">
            <div class="input-group">
                <input type="text" name="send_message" placeholder="Type Message ..." class="form-control">
                <span class="input-group-btn">
                        <button type="submit" class="btn btn-primary btn-flat">Send</button>
                </span>
            </div>
        </form>
    </div>
    <!-- /.box-footer-->
</div>

</body>
</html>