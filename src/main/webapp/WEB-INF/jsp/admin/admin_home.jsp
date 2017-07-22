<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/19
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | 仪表盘</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/AdminLTE-cn/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="/AdminLTE-cn/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
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
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>T</b>INY</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Tiny</b>Bees</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <%--<li class="dropdown messages-menu">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
                            <%--<i class="fa fa-envelope-o"></i>--%>
                            <%--<span class="label label-success">4</span>--%>
                        <%--</a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li class="header">你有4条消息</li>--%>
                            <%--<li>--%>
                                <%--<!-- inner menu: contains the actual data -->--%>
                                <%--<ul class="menu">--%>
                                    <%--<li><!-- start message -->--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="pull-left">--%>
                                                <%--<img src="/AdminLTE-cn/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">--%>
                                            <%--</div>--%>
                                            <%--<h4>--%>
                                                <%--支持团队--%>
                                                <%--<small><i class="fa fa-clock-o"></i> 5 分钟</small>--%>
                                            <%--</h4>--%>
                                            <%--<p>为什么不买一个新的主题?</p>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<!-- end message -->--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="pull-left">--%>
                                                <%--<img src="/AdminLTE-cn/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">--%>
                                            <%--</div>--%>
                                            <%--<h4>--%>
                                                <%--AdminLTE 设计团队--%>
                                                <%--<small><i class="fa fa-clock-o"></i> 2 hours</small>--%>
                                            <%--</h4>--%>
                                            <%--<p>为什么不买一个新的主题?</p>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="pull-left">--%>
                                                <%--<img src="/AdminLTE-cn/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">--%>
                                            <%--</div>--%>
                                            <%--<h4>--%>
                                                <%--开发者--%>
                                                <%--<small><i class="fa fa-clock-o"></i> 今天</small>--%>
                                            <%--</h4>--%>
                                            <%--<p>为什么不买一个新的主题?</p>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="pull-left">--%>
                                                <%--<img src="/AdminLTE-cn/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">--%>
                                            <%--</div>--%>
                                            <%--<h4>--%>
                                                <%--销售部--%>
                                                <%--<small><i class="fa fa-clock-o"></i> 昨天</small>--%>
                                            <%--</h4>--%>
                                            <%--<p>为什么不买一个新的主题?</p>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<div class="pull-left">--%>
                                                <%--<img src="/AdminLTE-cn/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">--%>
                                            <%--</div>--%>
                                            <%--<h4>--%>
                                                <%--评论--%>
                                                <%--<small><i class="fa fa-clock-o"></i> 2 天</small>--%>
                                            <%--</h4>--%>
                                            <%--<p>为什么不买一个新的主题?</p>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li class="footer"><a href="#">查看所有消息</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<!-- Notifications: style can be found in dropdown.less -->--%>
                    <%--<li class="dropdown notifications-menu">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
                            <%--<i class="fa fa-bell-o"></i>--%>
                            <%--<span class="label label-warning">10</span>--%>
                        <%--</a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li class="header">你有10条通知</li>--%>
                            <%--<li>--%>
                                <%--<!-- inner menu: contains the actual data -->--%>
                                <%--<ul class="menu">--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<i class="fa fa-users text-aqua"></i> 5 个新会员加入--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the--%>
                                            <%--page and may cause design problems--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<i class="fa fa-users text-red"></i> 5 个新会员加入--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<i class="fa fa-shopping-cart text-green"></i> 25 个订单--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<li>--%>
                                        <%--<a href="#">--%>
                                            <%--<i class="fa fa-user text-red"></i> 更改你的用户名--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li class="footer"><a href="#">查看所有</a></li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <%--<!-- Tasks: style can be found in dropdown.less -->--%>
                    <%--<li class="dropdown tasks-menu">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
                            <%--<i class="fa fa-flag-o"></i>--%>
                            <%--<span class="label label-danger">9</span>--%>
                        <%--</a>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li class="header">你有9条任务</li>--%>
                            <%--<li>--%>
                                <%--<!-- inner menu: contains the actual data -->--%>
                                <%--<ul class="menu">--%>
                                    <%--<li><!-- Task item -->--%>
                                        <%--<a href="#">--%>
                                            <%--<h3>--%>
                                                <%--设计按钮--%>
                                                <%--<small class="pull-right">20%</small>--%>
                                            <%--</h3>--%>
                                            <%--<div class="progress xs">--%>
                                                <%--<div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">--%>
                                                    <%--<span class="sr-only">完成 20% </span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<!-- end task item -->--%>
                                    <%--<li><!-- Task item -->--%>
                                        <%--<a href="#">--%>
                                            <%--<h3>--%>
                                                <%--创建漂亮的主题--%>
                                                <%--<small class="pull-right">40%</small>--%>
                                            <%--</h3>--%>
                                            <%--<div class="progress xs">--%>
                                                <%--<div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">--%>
                                                    <%--<span class="sr-only">完成 40%</span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<!-- end task item -->--%>
                                    <%--<li><!-- Task item -->--%>
                                        <%--<a href="#">--%>
                                            <%--<h3>--%>
                                                <%--还有一些任务要做--%>
                                                <%--<small class="pull-right">60%</small>--%>
                                            <%--</h3>--%>
                                            <%--<div class="progress xs">--%>
                                                <%--<div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">--%>
                                                    <%--<span class="sr-only">完成 60%</span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<!-- end task item -->--%>
                                    <%--<li><!-- Task item -->--%>
                                        <%--<a href="#">--%>
                                            <%--<h3>--%>
                                                <%--制作漂亮的过渡效果--%>
                                                <%--<small class="pull-right">80%</small>--%>
                                            <%--</h3>--%>
                                            <%--<div class="progress xs">--%>
                                                <%--<div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">--%>
                                                    <%--<span class="sr-only">完成 80%</span>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<!-- end task item -->--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li class="footer">--%>
                                <%--<a href="#">查看所有任务</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/AdminLTE-cn/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">TinyBees</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="/AdminLTE-cn/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    TinyBees - Administrator
                                    <small>07. 2017</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <%--<div class="col-xs-4 text-center">--%>
                                        <%--<a href="#">点赞</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="col-xs-4 text-center">--%>
                                        <%--<a href="#">销售</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="col-xs-4 text-center">--%>
                                        <%--<a href="#">朋友</a>--%>
                                    <%--</div>--%>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <%--<div class="pull-left">--%>
                                    <%--<a href="#" class="btn btn-default btn-flat">简介</a>--%>
                                <%--</div>--%>
                                <div class="pull-right">
                                    <a href="/admin_logout" class="btn btn-default btn-flat">退出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="/AdminLTE-cn/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>TinyBees</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="搜索...">
                    <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">主导航</li>

                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-files-o"></i>
                        <span>商品管理</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
              <%--<span class="label label-primary pull-right">4</span>--%>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/add_product"><i class="fa fa-circle-o"></i> 发布商品</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> 删除商品</a></li>
                        <%--<li><a href="fixed.html"><i class="fa fa-circle-o"></i> 固定布局</a></li>--%>
                    </ul>
                </li>

                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-files-o"></i>
                        <span>分类管理</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
              <%--<span class="label label-primary pull-right">4</span>--%>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> 新增分类</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> 修改分类</a></li>
                        <%--<li><a href="fixed.html"><i class="fa fa-circle-o"></i> 固定布局</a></li>--%>
                    </ul>
                </li>
                <%--<li>--%>
                    <%--<a href="widgets.html">--%>
                        <%--<i class="fa fa-th"></i> <span>小部件</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<small class="label pull-right bg-green">新</small>--%>
            <%--</span>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="treeview">--%>
                    <%--<a href="#">--%>
                        <%--<i class="fa fa-pie-chart"></i>--%>
                        <%--<span>图表</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<i class="fa fa-angle-left pull-right"></i>--%>
            <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a href="chartjs.html"><i class="fa fa-circle-o"></i> JS图表</a></li>--%>
                        <%--<li><a href="morris.html"><i class="fa fa-circle-o"></i> 遍历</a></li>--%>
                        <%--<li><a href="flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>--%>
                        <%--<li><a href="inline.html"><i class="fa fa-circle-o"></i> 内嵌图表</a></li>--%>
                        <%--<li><a href="collapsed-sidebar.html"><i class="fa fa-circle-o"></i> 折叠侧栏</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <%--<li class="treeview">--%>
                    <%--<a href="#">--%>
                        <%--<i class="fa fa-laptop"></i>--%>
                        <%--<span>UI元素</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<i class="fa fa-angle-left pull-right"></i>--%>
            <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a href="general.html"><i class="fa fa-circle-o"></i> 一般</a></li>--%>
                        <%--<li><a href="icons.html"><i class="fa fa-circle-o"></i> 图标</a></li>--%>
                        <%--<li><a href="buttons.html"><i class="fa fa-circle-o"></i> 按钮</a></li>--%>
                        <%--<li><a href="sliders.html"><i class="fa fa-circle-o"></i> 滑动条</a></li>--%>
                        <%--<li><a href="timeline.html"><i class="fa fa-circle-o"></i> 时间行</a></li>--%>
                        <%--<li><a href="modals.html"><i class="fa fa-circle-o"></i> 模式</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <%--<li class="treeview">--%>
                    <%--<a href="#">--%>
                        <%--<i class="fa fa-edit"></i> <span>表单</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<i class="fa fa-angle-left pull-right"></i>--%>
            <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a href="general.html"><i class="fa fa-circle-o"></i> 普通元素</a></li>--%>
                        <%--<li><a href="advanced.html"><i class="fa fa-circle-o"></i> 高级元素</a></li>--%>
                        <%--<li><a href="editors.html"><i class="fa fa-circle-o"></i> 编辑</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <%--<li class="treeview">--%>
                    <%--<a href="#">--%>
                        <%--<i class="fa fa-table"></i> <span>表格</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<i class="fa fa-angle-left pull-right"></i>--%>
            <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a href="simple.html"><i class="fa fa-circle-o"></i> 简单表格</a></li>--%>
                        <%--<li><a href="data.html"><i class="fa fa-circle-o"></i> 数据表格</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="calendar.html">--%>
                        <%--<i class="fa fa-calendar"></i> <span>日历</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<small class="label pull-right bg-red">3</small>--%>
              <%--<small class="label pull-right bg-blue">17</small>--%>
            <%--</span>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="mailbox.html">--%>
                        <%--<i class="fa fa-envelope"></i> <span>邮箱</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<small class="label pull-right bg-yellow">12</small>--%>
              <%--<small class="label pull-right bg-green">16</small>--%>
              <%--<small class="label pull-right bg-red">5</small>--%>
            <%--</span>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-folder"></i> <span>用户管理</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="invoice.html"><i class="fa fa-circle-o"></i> 用户删除</a></li>
                        <li><a href="profile.html"><i class="fa fa-circle-o"></i> 用户查看</a></li>
                        <%--<li><a href="login.html"><i class="fa fa-circle-o"></i> 登录</a></li>--%>
                        <%--<li><a href="register.html"><i class="fa fa-circle-o"></i> 注册</a></li>--%>
                        <%--<li><a href="lockscreen.html"><i class="fa fa-circle-o"></i> 锁屏</a></li>--%>
                        <%--<li class="active"><a href="404.html"><i class="fa fa-circle-o"></i> 404错误</a></li>--%>
                        <%--<li><a href="500.html"><i class="fa fa-circle-o"></i> 500错误</a></li>--%>
                        <%--<li><a href="blank.html"><i class="fa fa-circle-o"></i> 空白页面</a></li>--%>
                        <%--<li><a href="pace.html"><i class="fa fa-circle-o"></i> 一页</a></li>--%>
                    </ul>
                </li>

                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-files-o"></i>
                        <span>订单管理</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
              <%--<span class="label label-primary pull-right">4</span>--%>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> 订单查看</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> 订单修改</a></li>
                        <%--<li><a href="fixed.html"><i class="fa fa-circle-o"></i> 固定布局</a></li>--%>
                    </ul>
                </li>
                <%--<li class="treeview">--%>
                    <%--<a href="#">--%>
                        <%--<i class="fa fa-share"></i> <span>多层级</span>--%>
                        <%--<span class="pull-right-container">--%>
              <%--<i class="fa fa-angle-left pull-right"></i>--%>
            <%--</span>--%>
                    <%--</a>--%>
                    <%--<ul class="treeview-menu">--%>
                        <%--<li><a href="#"><i class="fa fa-circle-o"></i> 一级</a></li>--%>
                        <%--<li>--%>
                            <%--<a href="#"><i class="fa fa-circle-o"></i> 一级--%>
                                <%--<span class="pull-right-container">--%>
                  <%--<i class="fa fa-angle-left pull-right"></i>--%>
                <%--</span>--%>
                            <%--</a>--%>
                            <%--<ul class="treeview-menu">--%>
                                <%--<li><a href="#"><i class="fa fa-circle-o"></i> 二级</a></li>--%>
                                <%--<li>--%>
                                    <%--<a href="#"><i class="fa fa-circle-o"></i> 二级--%>
                                        <%--<span class="pull-right-container">--%>
                      <%--<i class="fa fa-angle-left pull-right"></i>--%>
                    <%--</span>--%>
                                    <%--</a>--%>
                                    <%--<ul class="treeview-menu">--%>
                                        <%--<li><a href="#"><i class="fa fa-circle-o"></i> 三级</a></li>--%>
                                        <%--<li><a href="#"><i class="fa fa-circle-o"></i> 三级</a></li>--%>
                                    <%--</ul>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li><a href="#"><i class="fa fa-circle-o"></i> 一级</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <%--<li><a href="/AdminLTE-cn/documentation/index.html"><i class="fa fa-book"></i> <span>文档</span></a></li>--%>
                <%--<li class="header">标签</li>--%>
                <%--<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>重要</span></a></li>--%>
                <%--<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>警告</span></a></li>--%>
                <%--<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>信息</span></a></li>--%>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <b>Tiny</b>Bees
                <small>Administrator</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li class="active">TinyBees</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua"><i class="ion ion-ios-gear-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">订单 交换</span>
                            <span class="info-box-number">90<small>%</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="fa fa-google-plus"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">喜欢</span>
                            <span class="info-box-number">41,410</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->

                <!-- fix for small devices only -->
                <div class="clearfix visible-sm-block"></div>

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">销售</span>
                            <span class="info-box-number">760</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">会员</span>
                            <span class="info-box-number">2,000</span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">月度概括报告</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-wrench"></i></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">活动</a></li>
                                        <li><a href="#">其它活动</a></li>
                                        <li><a href="#">其它的东西在这里</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">分离环节</a></li>
                                    </ul>
                                </div>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-8">
                                    <p class="text-center">
                                        <strong>销售: 1 Jan, 2014 - 30 Jul, 2014</strong>
                                    </p>

                                    <div class="chart">
                                        <!-- Sales Chart Canvas -->
                                        <canvas id="salesChart" style="height: 180px;"></canvas>
                                    </div>
                                    <!-- /.chart-responsive -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-4">
                                    <p class="text-center">
                                        <strong>目标完成</strong>
                                    </p>

                                    <div class="progress-group">
                                        <span class="progress-text">将产品添加到购物车</span>
                                        <span class="progress-number"><b>160</b>/200</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">完成采购</span>
                                        <span class="progress-number"><b>310</b>/400</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-red" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">参观优质页面</span>
                                        <span class="progress-number"><b>480</b>/800</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-green" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                    <div class="progress-group">
                                        <span class="progress-text">发送查询</span>
                                        <span class="progress-number"><b>250</b>/500</span>

                                        <div class="progress sm">
                                            <div class="progress-bar progress-bar-yellow" style="width: 80%"></div>
                                        </div>
                                    </div>
                                    <!-- /.progress-group -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- ./box-body -->
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>
                                        <h5 class="description-header">$35,210.43</h5>
                                        <span class="description-text">总收入</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>
                                        <h5 class="description-header">$10,390.90</h5>
                                        <span class="description-text">总成本</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block border-right">
                                        <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
                                        <h5 class="description-header">$24,813.53</h5>
                                        <span class="description-text">总利润</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-3 col-xs-6">
                                    <div class="description-block">
                                        <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>
                                        <h5 class="description-header">1200</h5>
                                        <span class="description-text">目标完成</span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- Main row -->
            <div class="row">
                <!-- Left col -->
                <div class="col-md-8">
                    <!-- MAP & BOX PANE -->
                    <%--<div class="box box-success">--%>
                        <%--<div class="box-header with-border">--%>
                            <%--<h3 class="box-title">浏览文章</h3>--%>

                            <%--<div class="box-tools pull-right">--%>
                                <%--<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>--%>
                                <%--</button>--%>
                                <%--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<!-- /.box-header -->--%>
                        <%--<div class="box-body no-padding">--%>
                            <%--<div class="row">--%>
                                <%--<div class="col-md-9 col-sm-8">--%>
                                    <%--<div class="pad">--%>
                                        <%--<!-- Map will be created here -->--%>
                                        <%--<div id="world-map-markers" style="height: 325px;"></div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<!-- /.col -->--%>
                                <%--<div class="col-md-3 col-sm-4">--%>
                                    <%--<div class="pad box-pane-right bg-green" style="min-height: 280px">--%>
                                        <%--<div class="description-block margin-bottom">--%>
                                            <%--<div class="sparkbar pad" data-color="#fff">90,70,90,70,75,80,70</div>--%>
                                            <%--<h5 class="description-header">8390</h5>--%>
                                            <%--<span class="description-text">浏览</span>--%>
                                        <%--</div>--%>
                                        <%--<!-- /.description-block -->--%>
                                        <%--<div class="description-block margin-bottom">--%>
                                            <%--<div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>--%>
                                            <%--<h5 class="description-header">30%</h5>--%>
                                            <%--<span class="description-text">提供</span>--%>
                                        <%--</div>--%>
                                        <%--<!-- /.description-block -->--%>
                                        <%--<div class="description-block">--%>
                                            <%--<div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>--%>
                                            <%--<h5 class="description-header">70%</h5>--%>
                                            <%--<span class="description-text">系统</span>--%>
                                        <%--</div>--%>
                                        <%--<!-- /.description-block -->--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<!-- /.col -->--%>
                            <%--</div>--%>
                            <%--<!-- /.row -->--%>
                        <%--</div>--%>
                        <%--<!-- /.box-body -->--%>
                    <%--</div>--%>
                    <!-- /.box -->
                    <div class="row">
                        <%--<div class="col-md-6">--%>
                            <%--<!-- DIRECT CHAT -->--%>
                            <%--<div class="box box-warning direct-chat direct-chat-warning">--%>
                                <%--<div class="box-header with-border">--%>
                                    <%--<h3 class="box-title">直接聊天</h3>--%>

                                    <%--<div class="box-tools pull-right">--%>
                                        <%--<span data-toggle="tooltip" title="3 New Messages" class="badge bg-yellow">3</span>--%>
                                        <%--<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>--%>
                                        <%--</button>--%>
                                        <%--<button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle">--%>
                                            <%--<i class="fa fa-comments"></i></button>--%>
                                        <%--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>--%>
                                        <%--</button>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<!-- /.box-header -->--%>
                                <%--<div class="box-body">--%>
                                    <%--<!-- Conversations are loaded here -->--%>
                                    <%--<div class="direct-chat-messages">--%>
                                        <%--<!-- Message. Default to the left -->--%>
                                        <%--<div class="direct-chat-msg">--%>
                                            <%--<div class="direct-chat-info clearfix">--%>
                                                <%--<span class="direct-chat-name pull-left">小明</span>--%>
                                                <%--<span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-info -->--%>
                                            <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user1-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->--%>
                                            <%--<div class="direct-chat-text">--%>
                                                <%--今天天气真好!--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-text -->--%>
                                        <%--</div>--%>
                                        <%--<!-- /.direct-chat-msg -->--%>

                                        <%--<!-- Message to the right -->--%>
                                        <%--<div class="direct-chat-msg right">--%>
                                            <%--<div class="direct-chat-info clearfix">--%>
                                                <%--<span class="direct-chat-name pull-right">小丽</span>--%>
                                                <%--<span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-info -->--%>
                                            <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->--%>
                                            <%--<div class="direct-chat-text">--%>
                                                <%--哈哈!--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-text -->--%>
                                        <%--</div>--%>
                                        <%--<!-- /.direct-chat-msg -->--%>

                                        <%--<!-- Message. Default to the left -->--%>
                                        <%--<div class="direct-chat-msg">--%>
                                            <%--<div class="direct-chat-info clearfix">--%>
                                                <%--<span class="direct-chat-name pull-left">小明</span>--%>
                                                <%--<span class="direct-chat-timestamp pull-right">23 Jan 5:37 pm</span>--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-info -->--%>
                                            <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user1-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->--%>
                                            <%--<div class="direct-chat-text">--%>
                                                <%--测试?--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-text -->--%>
                                        <%--</div>--%>
                                        <%--<!-- /.direct-chat-msg -->--%>

                                        <%--<!-- Message to the right -->--%>
                                        <%--<div class="direct-chat-msg right">--%>
                                            <%--<div class="direct-chat-info clearfix">--%>
                                                <%--<span class="direct-chat-name pull-right">Sarah Bullock</span>--%>
                                                <%--<span class="direct-chat-timestamp pull-left">23 Jan 6:10 pm</span>--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-info -->--%>
                                            <%--<img class="direct-chat-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="message user image"><!-- /.direct-chat-img -->--%>
                                            <%--<div class="direct-chat-text">--%>
                                                <%--I would love to.--%>
                                            <%--</div>--%>
                                            <%--<!-- /.direct-chat-text -->--%>
                                        <%--</div>--%>
                                        <%--<!-- /.direct-chat-msg -->--%>

                                    <%--</div>--%>
                                    <%--<!--/.direct-chat-messages-->--%>

                                    <%--<!-- Contacts are loaded here -->--%>
                                    <%--<div class="direct-chat-contacts">--%>
                                        <%--<ul class="contacts-list">--%>
                                            <%--<li>--%>
                                                <%--<a href="#">--%>
                                                    <%--<img class="contacts-list-img" src="/AdminLTE-cn/dist/img/user1-128x128.jpg" alt="User Image">--%>

                                                    <%--<div class="contacts-list-info">--%>
                                <%--<span class="contacts-list-name">--%>
                                  <%--Count Dracula--%>
                                  <%--<small class="contacts-list-date pull-right">2/28/2015</small>--%>
                                <%--</span>--%>
                                                        <%--<span class="contacts-list-msg">How have you been? I was...</span>--%>
                                                    <%--</div>--%>
                                                    <%--<!-- /.contacts-list-info -->--%>
                                                <%--</a>--%>
                                            <%--</li>--%>
                                            <%--<!-- End Contact Item -->--%>
                                            <%--<li>--%>
                                                <%--<a href="#">--%>
                                                    <%--<img class="contacts-list-img" src="/AdminLTE-cn/dist/img/user7-128x128.jpg" alt="User Image">--%>

                                                    <%--<div class="contacts-list-info">--%>
                                <%--<span class="contacts-list-name">--%>
                                  <%--Sarah Doe--%>
                                  <%--<small class="contacts-list-date pull-right">2/23/2015</small>--%>
                                <%--</span>--%>
                                                        <%--<span class="contacts-list-msg">I will be waiting for...</span>--%>
                                                    <%--</div>--%>
                                                    <%--<!-- /.contacts-list-info -->--%>
                                                <%--</a>--%>
                                            <%--</li>--%>
                                            <%--<!-- End Contact Item -->--%>
                                            <%--<li>--%>
                                                <%--<a href="#">--%>
                                                    <%--<img class="contacts-list-img" src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="User Image">--%>

                                                    <%--<div class="contacts-list-info">--%>
                                <%--<span class="contacts-list-name">--%>
                                  <%--Nadia Jolie--%>
                                  <%--<small class="contacts-list-date pull-right">2/20/2015</small>--%>
                                <%--</span>--%>
                                                        <%--<span class="contacts-list-msg">I'll call you back at...</span>--%>
                                                    <%--</div>--%>
                                                    <%--<!-- /.contacts-list-info -->--%>
                                                <%--</a>--%>
                                            <%--</li>--%>
                                            <%--<!-- End Contact Item -->--%>
                                            <%--<li>--%>
                                                <%--<a href="#">--%>
                                                    <%--<img class="contacts-list-img" src="dist/img/user5-128x128.jpg" alt="User Image">--%>

                                                    <%--<div class="contacts-list-info">--%>
                                <%--<span class="contacts-list-name">--%>
                                  <%--Nora S. Vans--%>
                                  <%--<small class="contacts-list-date pull-right">2/10/2015</small>--%>
                                <%--</span>--%>
                                                        <%--<span class="contacts-list-msg">Where is your new...</span>--%>
                                                    <%--</div>--%>
                                                    <%--<!-- /.contacts-list-info -->--%>
                                                <%--</a>--%>
                                            <%--</li>--%>
                                            <%--<!-- End Contact Item -->--%>
                                            <%--<li>--%>
                                                <%--<a href="#">--%>
                                                    <%--<img class="contacts-list-img" src="dist/img/user6-128x128.jpg" alt="User Image">--%>

                                                    <%--<div class="contacts-list-info">--%>
                                <%--<span class="contacts-list-name">--%>
                                  <%--John K.--%>
                                  <%--<small class="contacts-list-date pull-right">1/27/2015</small>--%>
                                <%--</span>--%>
                                                        <%--<span class="contacts-list-msg">Can I take a look at...</span>--%>
                                                    <%--</div>--%>
                                                    <%--<!-- /.contacts-list-info -->--%>
                                                <%--</a>--%>
                                            <%--</li>--%>
                                            <%--<!-- End Contact Item -->--%>
                                            <%--<li>--%>
                                                <%--<a href="#">--%>
                                                    <%--<img class="contacts-list-img" src="dist/img/user8-128x128.jpg" alt="User Image">--%>

                                                    <%--<div class="contacts-list-info">--%>
                                <%--<span class="contacts-list-name">--%>
                                  <%--Kenneth M.--%>
                                  <%--<small class="contacts-list-date pull-right">1/4/2015</small>--%>
                                <%--</span>--%>
                                                        <%--<span class="contacts-list-msg">Never mind I found...</span>--%>
                                                    <%--</div>--%>
                                                    <%--<!-- /.contacts-list-info -->--%>
                                                <%--</a>--%>
                                            <%--</li>--%>
                                            <%--<!-- End Contact Item -->--%>
                                        <%--</ul>--%>
                                        <%--<!-- /.contatcts-list -->--%>
                                    <%--</div>--%>
                                    <%--<!-- /.direct-chat-pane -->--%>
                                <%--</div>--%>
                                <%--<!-- /.box-body -->--%>
                                <%--<div class="box-footer">--%>
                                    <%--<form action="#" method="post">--%>
                                        <%--<div class="input-group">--%>
                                            <%--<input type="text" name="message" placeholder="Type Message ..." class="form-control">--%>
                                            <%--<span class="input-group-btn">--%>
                            <%--<button type="button" class="btn btn-warning btn-flat">发送</button>--%>
                          <%--</span>--%>
                                        <%--</div>--%>
                                    <%--</form>--%>
                                <%--</div>--%>
                                <%--<!-- /.box-footer-->--%>
                            <%--</div>--%>
                            <%--<!--/.direct-chat -->--%>
                        <%--</div>--%>
                        <%--<!-- /.col -->--%>

                        <%--<div class="col-md-6">--%>
                            <%--<!-- USERS LIST -->--%>
                            <%--<div class="box box-danger">--%>
                                <%--<div class="box-header with-border">--%>
                                    <%--<h3 class="box-title">最新的成员</h3>--%>

                                    <%--<div class="box-tools pull-right">--%>
                                        <%--<span class="label label-danger">8个新会员</span>--%>
                                        <%--<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>--%>
                                        <%--</button>--%>
                                        <%--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>--%>
                                        <%--</button>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%--<!-- /.box-header -->--%>
                                <%--<div class="box-body no-padding">--%>
                                    <%--<ul class="users-list clearfix">--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user1-128x128.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">Alexander Pierce</a>--%>
                                            <%--<span class="users-list-date">Today</span>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user8-128x128.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">Norman</a>--%>
                                            <%--<span class="users-list-date">Yesterday</span>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user7-128x128.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">Jane</a>--%>
                                            <%--<span class="users-list-date">12 Jan</span>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user6-128x128.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">John</a>--%>
                                            <%--<span class="users-list-date">12 Jan</span>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user2-160x160.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">Alexander</a>--%>
                                            <%--<span class="users-list-date">13 Jan</span>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user5-128x128.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">Sarah</a>--%>
                                            <%--<span class="users-list-date">14 Jan</span>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user4-128x128.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">Nora</a>--%>
                                            <%--<span class="users-list-date">15 Jan</span>--%>
                                        <%--</li>--%>
                                        <%--<li>--%>
                                            <%--<img src="/AdminLTE-cn/dist/img/user3-128x128.jpg" alt="User Image">--%>
                                            <%--<a class="users-list-name" href="#">Nadia</a>--%>
                                            <%--<span class="users-list-date">15 Jan</span>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                    <%--<!-- /.users-list -->--%>
                                <%--</div>--%>
                                <%--<!-- /.box-body -->--%>
                                <%--<div class="box-footer text-center">--%>
                                    <%--<a href="javascript:void(0)" class="uppercase">查看所有用户</a>--%>
                                <%--</div>--%>
                                <%--<!-- /.box-footer -->--%>
                            <%--</div>--%>
                            <%--<!--/.box -->--%>
                        <%--</div>--%>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->

                    <!-- TABLE: LATEST ORDERS -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">最新订单</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                                <table class="table no-margin">
                                    <thead>
                                    <tr>
                                        <th>订单ID</th>
                                        <th>条目</th>
                                        <th>状态</th>
                                        <th>流行</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                        <td>Call of Duty IV</td>
                                        <td><span class="label label-success">Shipped</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                        <td>Samsung Smart TV</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                        <td>iPhone 6 Plus</td>
                                        <td><span class="label label-danger">Delivered</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                        <td>Samsung Smart TV</td>
                                        <td><span class="label label-info">Processing</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#00c0ef" data-height="20">90,80,-90,70,-61,83,63</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR1848</a></td>
                                        <td>Samsung Smart TV</td>
                                        <td><span class="label label-warning">Pending</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR7429</a></td>
                                        <td>iPhone 6 Plus</td>
                                        <td><span class="label label-danger">Delivered</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="pages/examples/invoice.html">OR9842</a></td>
                                        <td>Call of Duty IV</td>
                                        <td><span class="label label-success">Shipped</span></td>
                                        <td>
                                            <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">获得新订单</a>
                            <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">查看所有订单</a>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->

                <div class="col-md-4">
                    <!-- Info Boxes Style 2 -->
                    <%--<div class="info-box bg-yellow">--%>
                        <%--<span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>--%>

                        <%--<div class="info-box-content">--%>
                            <%--<span class="info-box-text">存货清单</span>--%>
                            <%--<span class="info-box-number">5,200</span>--%>

                            <%--<div class="progress">--%>
                                <%--<div class="progress-bar" style="width: 50%"></div>--%>
                            <%--</div>--%>
                            <%--<span class="progress-description">--%>
                    <%--50% Increase in 30 Days--%>
                  <%--</span>--%>
                        <%--</div>--%>
                        <%--<!-- /.info-box-content -->--%>
                    <%--</div>--%>
                    <%--<!-- /.info-box -->--%>
                    <%--<div class="info-box bg-green">--%>
                        <%--<span class="info-box-icon"><i class="ion ion-ios-heart-outline"></i></span>--%>

                        <%--<div class="info-box-content">--%>
                            <%--<span class="info-box-text">提及</span>--%>
                            <%--<span class="info-box-number">92,050</span>--%>

                            <%--<div class="progress">--%>
                                <%--<div class="progress-bar" style="width: 20%"></div>--%>
                            <%--</div>--%>
                            <%--<span class="progress-description">--%>
                    <%--20% Increase in 30 Days--%>
                  <%--</span>--%>
                        <%--</div>--%>
                        <%--<!-- /.info-box-content -->--%>
                    <%--</div>--%>
                    <%--<!-- /.info-box -->--%>
                    <%--<div class="info-box bg-red">--%>
                        <%--<span class="info-box-icon"><i class="ion ion-ios-cloud-download-outline"></i></span>--%>

                        <%--<div class="info-box-content">--%>
                            <%--<span class="info-box-text">下载 </span>--%>
                            <%--<span class="info-box-number">114,381</span>--%>

                            <%--<div class="progress">--%>
                                <%--<div class="progress-bar" style="width: 70%"></div>--%>
                            <%--</div>--%>
                            <%--<span class="progress-description">--%>
                    <%--70% Increase in 30 Days--%>
                  <%--</span>--%>
                        <%--</div>--%>
                        <%--<!-- /.info-box-content -->--%>
                    <%--</div>--%>
                    <%--<!-- /.info-box -->--%>
                    <%--<div class="info-box bg-aqua">--%>
                        <%--<span class="info-box-icon"><i class="ion-ios-chatbubble-outline"></i></span>--%>

                        <%--<div class="info-box-content">--%>
                            <%--<span class="info-box-text">直接聊天</span>--%>
                            <%--<span class="info-box-number">163,921</span>--%>

                            <%--<div class="progress">--%>
                                <%--<div class="progress-bar" style="width: 40%"></div>--%>
                            <%--</div>--%>
                            <%--<span class="progress-description">--%>
                    <%--40% Increase in 30 Days--%>
                  <%--</span>--%>
                        <%--</div>--%>
                        <%--<!-- /.info-box-content -->--%>
                    <%--</div>--%>
                    <!-- /.info-box -->

                    <%--<div class="box box-default">--%>
                        <%--<div class="box-header with-border">--%>
                            <%--<h3 class="box-title">浏览器的使用</h3>--%>

                            <%--<div class="box-tools pull-right">--%>
                                <%--<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>--%>
                                <%--</button>--%>
                                <%--<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<!-- /.box-header -->--%>
                        <%--<div class="box-body">--%>
                            <%--<div class="row">--%>
                                <%--<div class="col-md-8">--%>
                                    <%--<div class="chart-responsive">--%>
                                        <%--<canvas id="pieChart" height="150"></canvas>--%>
                                    <%--</div>--%>
                                    <%--<!-- ./chart-responsive -->--%>
                                <%--</div>--%>
                                <%--<!-- /.col -->--%>
                                <%--<div class="col-md-4">--%>
                                    <%--<ul class="chart-legend clearfix">--%>
                                        <%--<li><i class="fa fa-circle-o text-red"></i> Chrome</li>--%>
                                        <%--<li><i class="fa fa-circle-o text-green"></i> IE</li>--%>
                                        <%--<li><i class="fa fa-circle-o text-yellow"></i> FireFox</li>--%>
                                        <%--<li><i class="fa fa-circle-o text-aqua"></i> Safari</li>--%>
                                        <%--<li><i class="fa fa-circle-o text-light-blue"></i> Opera</li>--%>
                                        <%--<li><i class="fa fa-circle-o text-gray"></i> Navigator</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                                <%--<!-- /.col -->--%>
                            <%--</div>--%>
                            <%--<!-- /.row -->--%>
                        <%--</div>--%>
                        <%--<!-- /.box-body -->--%>
                        <%--<div class="box-footer no-padding">--%>
                            <%--<ul class="nav nav-pills nav-stacked">--%>
                                <%--<li><a href="#">美国--%>
                                    <%--<span class="pull-right text-red"><i class="fa fa-angle-down"></i> 12%</span></a></li>--%>
                                <%--<li><a href="#">印度 <span class="pull-right text-green"><i class="fa fa-angle-up"></i> 4%</span></a>--%>
                                <%--</li>--%>
                                <%--<li><a href="#">中国--%>
                                    <%--<span class="pull-right text-yellow"><i class="fa fa-angle-left"></i> 0%</span></a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                        <%--<!-- /.footer -->--%>
                    <%--</div>--%>
                    <!-- /.box -->

                    <!-- PRODUCT LIST -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">最近添加的产品</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <ul class="products-list product-list-in-box">
                                <li class="item">
                                    <div class="product-img">
                                        <img src="/AdminLTE-cn/dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">Samsung TV
                                            <span class="label label-warning pull-right">$1800</span></a>
                                        <span class="product-description">
                          Samsung 32" 1080p 60Hz LED Smart HDTV.
                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="/AdminLTE-cn/dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">Bicycle
                                            <span class="label label-info pull-right">$700</span></a>
                                        <span class="product-description">
                          26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="/AdminLTE-cn/dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">Xbox One <span class="label label-danger pull-right">$350</span></a>
                                        <span class="product-description">
                          Xbox One Console Bundle with Halo Master Chief Collection.
                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                                <li class="item">
                                    <div class="product-img">
                                        <img src="/AdminLTE-cn/dist/img/default-50x50.gif" alt="Product Image">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">PlayStation 4
                                            <span class="label label-success pull-right">$399</span></a>
                                        <span class="product-description">
                          PlayStation 4 500GB Console (PS4)
                        </span>
                                    </div>
                                </li>
                                <!-- /.item -->
                            </ul>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <a href="javascript:void(0)" class="uppercase">查看所有产品</a>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.7
        </div>
        <strong>Copyright &copy; 2017-2018 <a href="http://almsaeedstudio.com">TinyBees</a>.</strong> All rights
        reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">全新界面</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">生日</h4>

                                <p>10/02 1990</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-user bg-yellow"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">更新联系方式</h4>

                                <p>新手机 +1(800)555-1234</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">加入邮件列表</h4>

                                <p>yaoxue2014@gmail.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                <p>执行时间5s</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">任务进度</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                自定义模板设计
                                <span class="label label-danger pull-right">70%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                更新简历
                                <span class="label label-success pull-right">95%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Laravel整合
                                <span class="label label-warning pull-right">50%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                后端框架
                                <span class="label label-primary pull-right">68%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">统计选项卡内容</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">普通设置</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            报告面板的使用
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            关于其它信息普通设置选项
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            允许邮件更改
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            其它设置选项是有效
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            文章作者姓名
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            允许用户在博客上显示名字
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <h3 class="control-sidebar-heading">聊天设置</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            在线显示
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            关闭通知
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            删除聊天记录
                            <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="/AdminLTE-cn/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/AdminLTE-cn/bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/AdminLTE-cn/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/AdminLTE-cn/dist/js/app.min.js"></script>
<!-- Sparkline -->
<script src="/AdminLTE-cn/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="/AdminLTE-cn/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/AdminLTE-cn/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="/AdminLTE-cn/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="/AdminLTE-cn/plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/AdminLTE-cn/dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/AdminLTE-cn/dist/js/demo.js"></script>
</body>
</html>