<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/27
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<% response.setHeader("refresh","100"); %>
<html>
<script>
    function flash() {
        var xmlhttp;
        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
        }
        else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.open("GET", "/community", true);
        xmlhttp.send();
    }
</script>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TinyBees | 客户聊天</title>
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
<body onload="flash()">
<div class="box box-primary center-block direct-chat-primary" style="width: 600px;height: 620px">
    <div class="box-header with-border">
        <h3 class="box-title">买家聊天</h3>

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
        <div class="direct-chat-messages" style="height: 500px">
            <!-- Message. Default to the left -->
            <!-- /.direct-chat-msg -->
            <c:if test="${!empty con_messages}">
                <c:forEach var="con_mess" items="${con_messages}">
                    <div class="direct-chat-msg">
                        <div class="direct-chat-info clearfix">
                            <span class="direct-chat-name pull-left">买家</span>
                            <span class="direct-chat-timestamp pull-right">
                                <fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />
                            </span>
                        </div>
                        <!-- /.direct-chat-info -->
                        <img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user1-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
                        <div class="direct-chat-text">
                            ${con_mess}
                        </div>
                        <!-- /.direct-chat-text -->
                    </div>
                </c:forEach>
            </c:if>

            <c:if test="${!empty send_messages}">
                <c:forEach var="send_mess" items="${send_messages}">
                    <div class="direct-chat-msg right">
                        <div class="direct-chat-info clearfix">
                            <span class="direct-chat-name pull-right">管理员</span>
                            <span class="direct-chat-timestamp pull-left">
                            <fmt:formatDate value="${now}" type="both" dateStyle="long" pattern="MM-dd HH:mm:ss" />
                        </span>
                        </div>
                        <!-- /.direct-chat-info -->
                        <img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
                        <div class="direct-chat-text">
                                ${send_mess}
                        </div>
                    </div>
                </c:forEach>
            </c:if>
        </div>
    </div>
    <!-- /.box-body -->
    <div class="box-footer">
        <form action="/pro_send_message" method="post">
            <div class="input-group">
                <input type="text" name="message" placeholder="Type Message ..." class="form-control">
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