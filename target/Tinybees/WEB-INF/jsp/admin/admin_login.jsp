<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/19
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TinyBees | Admin</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/AdminLTE-cn/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/AdminLTE-cn/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/AdminLTE-cn/plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="#"><b>Tiny</b>Bees</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your admin for TinyBees</p>

        <form action="/post_admin" method="post">
            <div class="form-group has-feedback">
                <input type="text" name="ad_name" class="form-control" placeholder="用户名">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="ad_password" class="form-control" placeholder="密码">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <%--<div class="col-xs-8">--%>
                    <%--<div class="checkbox icheck">--%>
                        <%--<label>--%>
                            <%--<input type="checkbox"> 记住我--%>
                        <%--</label>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <!-- /.col -->
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="/AdminLTE-cn/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/AdminLTE-cn/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/AdminLTE-cn/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>






<%--<!Doctype html>--%>
<%--<html style="height:80%;padding: 0;margin: 0;">--%>
<%--<head>--%>
    <%--<title>欢迎登录</title>--%>
    <%--<link rel="shortcut icon" type="image/x-icon" href="http://www.neu.edu.cn/favicon.ico"/>--%>
    <%--<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

    <%--<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>--%>
    <%--<script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>--%>

    <%--<link rel="stylesheet" href="/css/font-awesome/css/font-awesome.min.css">--%>

<%--</head>--%>
<%--<body style="height:100%;padding-bottom: 0;background-color: #3c3c3c">--%>
<%--<div class="container col-xs-offset-4" style="width: 30%;margin-top: 5%;background-color: #bbbbbb">--%>
    <%--<div class="panel panel-default" style="margin-top: 3.7%;margin-bottom: 3.7%">--%>
        <%--<div class="panel panel-title" style="background-color: #1b6d85">--%>
            <%--<h4 class="text-center" style="color: #ffffee">--%>
                <%--<span class="icon-home icon-x"> 网站后台登录</span>--%>
            <%--</h4>--%>
        <%--</div>--%>
        <%--<form class="form-group col-xs-offset-2" style="width: 65%" method="post" action="/post_admin">--%>

            <%--<h5><span class="fa-user">用户名：</span>--%>
                <%--<input class="form-control" type="text" name="ad_name">--%>
            <%--</h5>--%>
            <%--<h5><span class="icon-key">密码：</span>--%>
                <%--<input class="form-control" type="password" name="ad_password">--%>
            <%--</h5>--%>
            <%--<!--<h5 style="line-height:30px;">--%>
                <%--验证码：--%>
                <%--<input class="form-control" type="text" name="captcha" class="form-control"><p> </p>--%>
                <%--<a onclick="javascript:re_captcha();" style="line-height: inherit">--%>
                    <%--<img src="{{ URL('kit/captcha/1') }}"  alt="验证码" title="刷新图片" width="100%" id="c2c98f0de5a04167a9e427d883690ff6" border="0" style="vertical-align: middle">--%>
                <%--</a>--%>
            <%--</h5>-->--%>
            <%--&lt;%&ndash;{{--<a class="btn btn-sm btn-info" href="#">邮箱验证</a>--}}&ndash;%&gt;--%>
            <%--<p> </p>--%>
            <%--<button class="btn btn-block btn-success" type="submit">--%>
                <%--<span class="glyphicon glyphicon-send">--%>
                    <%--登陆管理--%>
                <%--</span>--%>
            <%--</button>--%>
            <%--&lt;%&ndash;{{--<a href="#" class="btn btn-block btn-success">注册</a>--}}&ndash;%&gt;--%>
            <%--<br>--%>
        <%--</form>--%>
    <%--</div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
