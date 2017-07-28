<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/28
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="/image/favicon.png" rel="icon" />
    <title>Marketshop - eCommerce HTML Template</title>
    <meta name="description" content="Responsive and clean html template design for any kind of ecommerce webshop">
    <link rel='stylesheet' href='http://fonts.css.network/css?family=Poiret+One' type='text/css'>
    <style type="text/css">@import url(/css/owl.carousel.css);</style>
    <style type="text/css">@import url(/css/font-awesome/css/font-awesome.min.css);</style>
    <style type="text/css">@import url(/css/owl.transitions.css);</style>
    <style type="text/css">@import url(/css/responsive.css);</style>
    <style type="text/css">@import url(/css/stylesheet.css);</style>
    <style type="text/css">@import url(/js/bootstrap/css/bootstrap.min.css);</style>

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
    <!-- AdminLTE Skins. Choose a skin from the css/skins. -->
    <link rel="stylesheet" href="/AdminLTE-cn/dist/css/skins/all-skins.min.css">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>
<div class="wrapper-wide">
    <div class="row">
        <div id="header">
            <!-- Top Bar Start-->
            <nav id="top" class="htop">
                <div class="container">
                    <div class="row">
                        <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
                        <div class="nav pull-right flip">
                            <div id="currency" class="btn-group">
                                <button class="btn-link dropdown-toggle" data-toggle="dropdown"> <span> 个人中心 <i class="fa fa-caret-down"></i></span></button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <button class="currency-select btn btn-link btn-block" type="button" name="EUR">我的订单</button>
                                    </li>
                                    <li>
                                        <button class="currency-select btn btn-link btn-block" type="button" name="GBP">我的收藏</button>
                                    </li>
                                    <li>
                                        <button class="currency-select btn btn-link btn-block" type="button" name="USD">购物车</button>
                                    </li>
                                    <li>
                                        <a href="/con_commity" class="currency-select btn btn-link btn-block" type="button" name="USD">联系客服</a>
                                    </li>
                                    <li>
                                        <a href="/profile" class="currency-select btn btn-link btn-block" type="button" name="USD">个人主页</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div id="top-links" class="nav pull-right flip">
                            <ul>
                                <li>
                                    <c:if test="${!empty login_user}">
                                        <a href="/login">${login_user.u_id}</a>
                                        <a href="/logout">退出</a>
                                    </c:if>
                                    <c:if test="${empty login_user}">
                                        <a href="/login">登录</a>
                                        <a href="/register">注册</a>
                                    </c:if>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
            </nav>
            <!-- Top Bar End-->
            <!-- Header Start-->
            <header class="header-row">
                <div class="container">
                    <div class="table-container">
                        <!-- Logo Start -->
                        <div class="col-table-cell col-lg-6 col-md-6 col-sm-12 col-xs-12 inner">
                            <div id="logo"><a href="/home"><img class="img-responsive" src="/image/logo.png" title="MarketShop" alt="MarketShop" /></a></div>
                        </div>
                        <div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12 inner">
                            <div id="search" class="input-group">
                                <input id="filter_name" type="text" name="search" value="" placeholder="搜索商品" class="form-control input-lg" />
                                <button type="button" class="button-search"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                        <!-- Search End-->
                    </div>
                </div>
            </header>
        </div>
        <div id="container">
            <div class="container">
                <div id="content" class="col-sm-12">
                    <div class="box-info" role="document">
                        <div class="box-content">
                            <div class="box-header center-block">
                                <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
                                <h4 class="box-title">用户详情</h4>
                            </div>
                            <div class="box-body">
                                <div class="box box-info">
                                    <div class="box-body box-profile">
                                        <img class="profile-user-img img-responsive img-circle" src="/AdminLTE-cn/dist/img/user4-128x128.jpg" alt="User profile picture">
                                        <h3 class="profile-username text-muted text-center">${user.u_name}</h3>
                                        <button data-toggle="modal" data-target="#updateName" type="button" class="btn btn-block btn-xs btn-flat btn-success">
                                            修改姓名
                                        </button>
                                        <%--<p class="text-muted text-center">会员用户</p>--%>
                                        <ul class="list-group text-muted list-group-unbordered">
                                            <li class="list-group-item">
                                                <b>购买量</b> <a class="pull-right">1,322</a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>用户年限</b> <a class="pull-right">543</a>
                                            </li>
                                            <li class="list-group-item">
                                                <b>用户财富</b> <a class="pull-right">13,287</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="box box-info">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">关于用户</h3>
                                    </div>
                                    <div class="text-muted box-body">
                                        <strong><i class="fa fa-book margin-r-5"></i> 电话</strong>
                                        <button data-toggle="modal" data-target="#updatePhone" type="button" class="btn btn-xs btn-flat btn-success">
                                            修改电话
                                        </button>
                                        <p class="text-muted">
                                            ${user.phone}
                                        </p>
                                        <hr>
                                        <strong><i class="fa fa-envelope-o margin-r-5"></i> 邮箱</strong>
                                        <button data-toggle="modal" data-target="#updateEmail" type="button" class="btn btn-xs btn-flat btn-success">
                                            修改邮箱
                                        </button>
                                        <p class="text-muted">
                                            ${user.email}
                                        </p>
                                        <hr>
                                        <strong><i class="fa fa-map-marker margin-r-5"></i> 位置</strong>
                                        <button data-toggle="modal" data-target="#updateCC" type="button" class="btn btn-xs btn-flat btn-success">
                                            修改位置
                                        </button>
                                        <p class="text-muted">
                                            ${user.region},${user.country}
                                        </p>
                                        <hr>
                                        <strong><i class="fa fa-truck margin-r-5"></i> 地址</strong>
                                        <button data-toggle="modal" data-target="#updateAdr" type="button" class="btn btn-xs btn-flat btn-success">
                                            修改地址
                                        </button>
                                        <p class="text-muted">
                                            ${user.addr}
                                        </p>
                                        <hr>
                                        <strong><i class="fa fa-truck margin-r-5"></i> 密码</strong>
                                        <button data-toggle="modal" data-target="#mymodal" type="button" class="btn btn-xs btn-flat btn-success">
                                            修改密码
                                        </button>
                                        <p class="text-muted">
                                            ${user.password}
                                        </p>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            <c:set var="u_id" value="${user.u_id}"/>
                            <div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog modal-info" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">修改密码</h4>
                                        </div>
                                        <form action="/update_user_password" method="post">
                                            <div class="modal-body">
                                                <div class="modal-info">
                                                    <div class="box-body box-profile">
                                                        <input class="form-control" type="password" name="password" placeholder="新密码">
                                                        <input class="hidden" name="u_id" value="${u_id}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-outline">确定</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="updatePhone" tabindex="-1" role="dialog" aria-labelledby="myModalLabe2">
                                <div class="modal-dialog modal-info" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabe2">修改电话</h4>
                                        </div>
                                        <form action="/update_user_phone" method="post">
                                            <div class="modal-body">
                                                <div class="modal-info">
                                                    <div class="box-body box-profile">
                                                        <input class="form-control" type="text" name="phone" placeholder="新电话">
                                                        <input class="hidden" name="u_id" value="${u_id}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-outline">确定</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="updateEmail" tabindex="-1" role="dialog" aria-labelledby="myModalLabe3">
                                <div class="modal-dialog modal-info" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabe3">修改邮箱</h4>
                                        </div>
                                        <form action="/update_user_email" method="post">
                                            <div class="modal-body">
                                                <div class="modal-info">
                                                    <div class="box-body box-profile">
                                                        <input class="form-control" type="text" name="email" placeholder="新邮箱">
                                                        <input class="hidden" name="u_id" value="${u_id}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-outline">确定</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="updateCC" tabindex="-1" role="dialog" aria-labelledby="myModalLabe4">
                                <div class="modal-dialog modal-info" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabe4">修改位置</h4>
                                        </div>
                                        <form action="/update_user_CC" method="post">
                                            <div class="modal-body">
                                                <div class="modal-info">
                                                    <div class="box-body box-profile">
                                                        <input class="form-control" type="text" name="country" placeholder="新国家">
                                                        <input class="form-control" type="text" name="region" placeholder="新乡镇">
                                                        <input class="hidden" name="u_id" value="${u_id}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-outline">确定</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="updateAdr" tabindex="-1" role="dialog" aria-labelledby="myModalLabe5">
                                <div class="modal-dialog modal-info" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabe5">修改地址</h4>
                                        </div>
                                        <form action="/update_user_adr" method="post">
                                            <div class="modal-body">
                                                <div class="modal-info">
                                                    <div class="box-body box-profile">
                                                        <input class="form-control" type="text" name="adr" placeholder="新地址">
                                                        <input class="hidden" name="u_id" value="${u_id}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-outline">确定</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade" id="updateName" tabindex="-1" role="dialog" aria-labelledby="myModalLabe6">
                                <div class="modal-dialog modal-info" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabe6">修改姓名</h4>
                                        </div>
                                        <form action="/update_user_name" method="post">
                                            <div class="modal-body">
                                                <div class="modal-info">
                                                    <div class="box-body box-profile">
                                                        <input class="form-control" type="text" name="name" placeholder="新昵称">
                                                        <input class="hidden" name="u_id" value="${u_id}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-outline">确定</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Middle Part End-->
            </div>
        </div>
        <footer id="footer">
            <div class="fpart-first">
                <div class="container">
                    <div class="row">
                        <div class="contact col-lg-4 col-md-4 col-sm-12 col-xs-12">
                            <h5>联系方式</h5>
                            <ul>
                                <li class="address"><i class="fa fa-map-marker"></i>计算机1408班，东北大学，沈阳，中国，地球</li>
                                <li class="mobile"><i class="fa fa-phone"></i>8008208820</li>
                                <li class="email"><i class="fa fa-envelope"></i>发邮件到 <a href="/contact-us">联系我们</a>
                            </ul>
                        </div>
                        <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                            <h5>关于我们</h5>
                            <ul>
                                <li><a href="/about-us">关于我们</a></li>
                                <li><a href="/about-us">隐私条款</a></li>
                            </ul>
                        </div>
                        <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                            <h5>用户手册</h5>
                            <ul>
                                <li><a href="/contact-us">联系我们</a></li>
                                <li><a href="#">意见反馈</a></li>
                                <li><a href="/sitemap">购物指南</a></li>
                            </ul>
                        </div>
                        <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                            <h5>关于其他</h5>
                            <ul>
                                <li><a href="#">优惠券</a></li>
                                <li><a href="#">分公司</a></li>
                                <li><a href="#">友情链接</a></li>
                            </ul>
                        </div>
                        <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                            <h5>个人账户</h5>
                            <ul>
                                <li><a href="#">个人中心</a></li>
                                <li><a href="#">历史购买</a></li>
                                <li><a href="#">我的收藏</a></li>
                                <li><a href="#">新消息</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fpart-second">
                <div class="container">
                    <div id="powered" class="clearfix">
                        <div class="powered_text pull-left flip">
                            <p>雏蜂 © 2016 | 雏蜂 By <a href="http://harnishdesign.net" target="_blank">雏蜂小组</a></p>
                        </div>
                        <%--<div class="social pull-right flip"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/facebook.png" alt="Facebook" title="Facebook"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/twitter.png" alt="Twitter" title="Twitter"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/google_plus.png" alt="Google+" title="Google+"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/pinterest.png" alt="Pinterest" title="Pinterest"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/rss.png" alt="RSS" title="RSS"> </a> </div>--%>
                    </div>
                </div>
            </div>
            <div id="back-top"><a data-toggle="tooltip" title="返回顶部" href="javascript:void(0)" class="backtotop"><i class="fa fa-chevron-up"></i></a></div>
        </footer>
    </div>
</div>
<!-- JS Part Start-->
<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/jquery.easing-1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.dcjqaccordion.min.js"></script>
<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/js/custom.js"></script>
<!-- JS Part End-->
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