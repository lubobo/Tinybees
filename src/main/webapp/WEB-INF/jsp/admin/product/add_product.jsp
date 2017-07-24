<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/20
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Compose Message</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="/AdminLTE-cn/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <!-- fullCalendar 2.2.5-->
    <link rel="stylesheet" href="/AdminLTE-cn/plugins/fullcalendar/fullcalendar.min.css">
    <link rel="stylesheet" href="/AdminLTE-cn/plugins/fullcalendar/fullcalendar.print.css" media="print">
    <!-- Theme style -->
    <link rel="stylesheet" href="/AdminLTE-cn/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/AdminLTE-cn/dist/css/skins/all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/AdminLTE-cn/plugins/iCheck/flat/blue.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="/AdminLTE-cn/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

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
                        <li><a href="/product_lists"><i class="fa fa-circle-o"></i> 商品列表</a></li>
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
                        <li><a href="/add_sort"><i class="fa fa-circle-o"></i> 新增分类</a></li>
                        <li><a href="/sort_list"><i class="fa fa-circle-o"></i> 分类列表</a></li>
                        <%--<li><a href="fixed.html"><i class="fa fa-circle-o"></i> 固定布局</a></li>--%>
                    </ul>
                </li>

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
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                TinyBees
                <small>Administrator</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-3">
                    <a href="#" class="btn btn-primary btn-block margin-bottom">Back to Index</a>
                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h3 class="box-danger box-title margin-bottom">选择商品配图</h3>

                            <div class="box-tools">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="box-body no-padding">
                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <div class="form-group">
                                        <div class="btn btn-default btn-file btn-block">
                                            <i class="fa fa-paperclip"></i> 商品配图 （1）
                                            <input type="file" name="p_image">
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-group">
                                        <div class="btn btn-default btn-file btn-block">
                                            <i class="fa fa-paperclip"></i> 商品配图 （2）
                                            <input type="file" name="p_image1">
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-group">
                                        <div class="btn btn-default btn-file btn-block">
                                            <i class="fa fa-paperclip"></i> 商品配图 （3）
                                            <input type="file" name="p_image2">
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="form-group">
                                        <div class="btn btn-default btn-file btn-block">
                                            <i class="fa fa-paperclip"></i> 商品配图 （4）
                                            <input type="file" name="p_image3">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /. box -->
                    <div class="box box-solid">

                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
                <div class="col-md-9">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">发布商品</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">

                            <div class="form-group col-lg-4">
                                <select class="form-control" onchange="getCategory_second(this.value)" >
                                    <%--<option>一级分类</option>--%>
                                    <c:forEach items="${categories}" var="i" step="1">
                                        <option class="form-control-item" value="${i.c_id}">
                                            <c:out value="${i.c_name}"/>
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="form-group col-lg-4" id="category_second">
                                <select class="form-control">
                                    <option>二级分类</option>
                                </select>
                            </div>

                            <div class="form-group col-lg-4" id="category_third">
                                <select class="form-control">
                                    <option>三级分类</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <input class="form-control" placeholder="商品名称:">
                            </div>
                            <div class="form-group">
                                <textarea id="compose-textarea" placeholder="商品简介" class="form-control" style="height: 280px">
                                </textarea>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <div class="pull-right">
                                <button type="button" class="btn btn-default"><i class="fa fa-pencil"></i> Draft</button>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send</button>
                            </div>
                            <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /. box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.3.7
        </div>
        <strong>Copyright &copy; 2016-2017 <a href="http://almsaeedstudio.com">Tiny Bees</a>.</strong> All rights
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
<!-- Slimscroll -->
<script src="/AdminLTE-cn/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/AdminLTE-cn/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/AdminLTE-cn/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/AdminLTE-cn/dist/js/demo.js"></script>
<!-- iCheck -->
<script src="/AdminLTE-cn/plugins/iCheck/icheck.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/AdminLTE-cn/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Page Script -->
<script>
    $(function () {
        //Add text editor
        $("#compose-textarea").wysihtml5();
    });

    function getCategory_second(str) {
        var xmlhttp;
        if (window.XMLHttpRequest) {
            xmlhttp = new XMLHttpRequest();
        }
        else {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                window.location = "/category_second/"+xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "/getCategory_second/"+str, true);
        xmlhttp.send();
    }
</script>
</body>
</html>