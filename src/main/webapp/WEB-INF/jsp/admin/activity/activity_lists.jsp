<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/26
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TinyBees | 活动列表</title>
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
    <script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
    <![endif]-->
</head>
<script type="text/javascript">
    var myPage;
    var winflag;
    function get_comm() {
        if (!myPage || myPage.closed){
            //如果窗口不存在，则新打开一个窗口
            myPage=window.open('<%=request.getContextPath()%>/chatserver.jsp?clientID='+'Admin'+'&toID='+'${clientID}','wang.qj-litianhao-window','height=530,width=420,top=200,left=100','_blank');
            myPage.blur();
        }else{
            myPage.focus;
        }
    }

</script>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="/admin_home" class="logo">
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
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/image/2678.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">TinyBees</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="/image/2678.jpg" class="img-circle" alt="User Image">

                                <p>
                                    TinyBees - Administrator
                                    <small>07. 2017</small>
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="/admin_logout" class="btn btn-block btn-md btn-github btn-flat">退出</a>
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
                    <img src="/image/2678.jpg" class="img-circle" alt="User Image">
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
                        <i class="fa fa-files-o"></i> <span>用户管理</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/user_detail_lists"><i class="fa fa-circle-o"></i> 用户查看</a></li>
                        <li><a href="/user_lists"><i class="fa fa-circle-o"></i> 用户修改</a></li>

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
                        <li><a href="/order_lists"><i class="fa fa-circle-o"></i> 订单查看</a></li>
                        <li><a href="/order_delete_lists"><i class="fa fa-circle-o"></i> 订单修改</a></li>
                        <%--<li><a href="fixed.html"><i class="fa fa-circle-o"></i> 固定布局</a></li>--%>
                    </ul>
                </li>

                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-files-o"></i>
                        <span>活动管理</span>
                        <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
              <%--<span class="label label-primary pull-right">4</span>--%>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/add_activity"><i class="fa fa-circle-o"></i> 活动新增</a></li>
                        <li><a href="/activity_lists"><i class="fa fa-circle-o"></i> 活动修改</a></li>
                        <%--<li><a href="fixed.html"><i class="fa fa-circle-o"></i> 固定布局</a></li>--%>
                    </ul>
                </li>
                <li class="treeview active"><i class="fa fa-files-o"></i><span class="btn btn-block btn-flat btn-google" onclick="get_comm()">卖家消息</span></li>
            </ul>

        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                活动管理
                <small>活动信息</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
                <li><a href="#">活动</a></li>
                <li class="active">活动信息</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <!-- /.box -->

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">活动管理信息展示</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>活动名称</th>
                                    <th>活动简介</th>
                                    <th>开始时间</th>
                                    <th>结束时间</th>
                                    <%--<th>活动商品</th>--%>
                                    <th>管理活动</th>
                                    <th>备注活动</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="activity" items="${activities}" step="1">
                                    <tr>
                                        <td><c:out value="${activity.a_name}"/></td>
                                        <td><c:out value="${activity.a_reward}"/></td>
                                        <td><c:out value="${activity.start_time}"/></td>
                                        <td><c:out value="${activity.end_time}"/></td>
                                        <%--<td>否</td>--%>
                                        <c:set var="a_id" value="${activity.a_id}"/>
                                        <c:set var="a_name" value="${activity.a_name}"/>
                                        <c:set var="a_reward" value="${activity.a_reward}"/>
                                        <c:set var="start_time" value="${activity.start_time}"/>
                                        <c:set var="end_time" value="${activity.end_time}"/>
                                        <!-- Modal -->
                                        <div class="modal fade" id="${a_id}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog modal-danger" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">重要提示</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        即将删除该活动，是否删除?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">关闭</button>
                                                        <form action="/delete_activity" method="post">
                                                            <input name="a_id" class="hidden" value="${a_id}">
                                                            <button type="submit" class="btn btn-outline">删除</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal fade" id="${a_id+1000000}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
                                            <div class="modal-dialog modal-info" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel1">活动详情</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="box box-info">
                                                            <div class="box-body box-profile">
                                                                <%--<img class="profile-user-img img-responsive img-circle" src="${a_name}" alt="User profile picture">--%>

                                                                <h3 class="profile-username text-muted text-center">${a_name}</h3>

                                                                <p class="text-muted text-center">活动详情</p>

                                                                <ul class="list-group text-muted list-group-unbordered">
                                                                    <li class="list-group-item">
                                                                        <b>销量</b> <a class="pull-right">1,322</a>
                                                                    </li>
                                                                    <li class="list-group-item">
                                                                        <b>评价</b> <a class="pull-right">543</a>
                                                                    </li>
                                                                    <li class="list-group-item">
                                                                        <b>活动收益</b> <a class="pull-right">13,287</a>
                                                                    </li>
                                                                </ul>

                                                                    <%--<a href="#" class="btn btn-primary btn-block"><b>关注</b></a>--%>
                                                            </div>
                                                            <!-- /.box-body -->
                                                        </div>

                                                        <div class="box box-info">
                                                            <div class="box-header with-border">
                                                                <h3 class="box-title">关于活动</h3>
                                                            </div>
                                                            <!-- /.box-header -->
                                                            <div class="text-muted box-body">
                                                                <strong><i class="fa fa-book margin-r-5"></i> 活动详情</strong>

                                                                <p class="text-muted">
                                                                        ${a_reward}
                                                                </p>

                                                                <hr>

                                                                <strong><i class="fa fa-envelope-o margin-r-5"></i> 开始时间</strong>

                                                                <p class="text-muted">
                                                                        ${start_time}
                                                                </p>

                                                                <hr>

                                                                <strong><i class="fa fa-map-marker margin-r-5"></i> 结束时间</strong>

                                                                <p class="text-muted">${end_time}</p>

                                                                <hr>

                                                                <%--<strong><i class="fa fa-truck margin-r-5"></i> 颜色</strong>--%>

                                                                <%--<p class="text-muted">${product.color}</p>--%>

                                                                <%--<hr>--%>

                                                            </div>
                                                            <!-- /.box-body -->
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">关闭</button>
                                                            <%--<form action="/delete_user" method="post">--%>
                                                            <%--<input name="user_id" class="hidden" value="${u_id}">--%>
                                                        <a href="/update_activity/${a_name}" class="btn btn-outline">修改</a>
                                                            <%--</form>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <td><button data-toggle="modal" data-target="#${a_id+1000000}" type="button" class="btn-flat btn-facebook btn btn-xs">查看详情</button></td>
                                        <td><button data-toggle="modal" data-target="#${a_id}" type="button" class="btn-flat btn-danger btn btn-xs">删除活动</button> </td>
                                    </tr>

                                </c:forEach>

                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>活动名称</th>
                                    <th>活动简介</th>
                                    <th>开始时间</th>
                                    <th>结束时间</th>
                                    <%--<th>活动商品</th>--%>
                                    <th>管理活动</th>
                                    <th>备注活动</th>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /.box-body -->
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
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="/AdminLTE-cn/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/AdminLTE-cn/bootstrap/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="/AdminLTE-cn/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/AdminLTE-cn/plugins/datatables/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/AdminLTE-cn/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/AdminLTE-cn/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/AdminLTE-cn/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/AdminLTE-cn/dist/js/demo.js"></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
</script>
</body>
</html>
