<%--
  Created by IntelliJ IDEA.
  User: wangjun
  Date: 2017/7/16
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <%--<link href="/image/favicon.png" rel="icon" />--%>
    <title>TinyBees | 登录</title>
    <%--<meta name="description" content="Responsive and clean html template design for any kind of ecommerce webshop">--%>
    <!-- CSS Part Start-->
    <link rel="stylesheet" type="text/css" href="js/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.transitions.css" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' type='text/css'>
    <!-- CSS Part End-->
</head>
<body>
<div class="wrapper-wide">
    <div id="header">
        <!-- Top Bar Start-->
        <nav id="top" class="htop">
            <div class="container">
                <div class="row"> <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
                    <div class="nav pull-right flip">
                        <div id="currency" class="btn-group">
                            <button class="btn-link dropdown-toggle" data-toggle="dropdown"> <span> 个人中心 <i class="fa fa-caret-down"></i></span></button>
                            <ul class="dropdown-menu">
                                <li>
                                    <button class="currency-select btn btn-link btn-block" type="button" name="EUR">我的订单</button>
                                </li>
                                <c:if test="${!empty login_user}">
                                    <li>
                                        <a href="/wishlist" class="currency-select btn btn-link btn-block" type="button" name="GBP">我的收藏</a>
                                    </li>
                                    <li>
                                        <a href="/cart" class="currency-select btn btn-link btn-block" type="button" name="USD">购物车</a>
                                    </li>
                                </c:if>
                                <c:if test="${empty login_user}">
                                    <li>
                                        <a href="#" class="currency-select btn btn-link btn-block" type="button" name="GBP">我的收藏</a>
                                    </li>
                                    <li>
                                        <a href="#" class="currency-select btn btn-link btn-block" type="button" name="USD">购物车</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                    <div id="top-links" class="nav pull-right flip">
                        <ul>
                            <c:if test="${empty login_user}">
                                <li><a href="/login">登录</a></li>
                                <li><a href="/register">注册</a></li>
                            </c:if>
                            <c:if test="${!empty login_user}">
                                <li><a href="/profile">${login_user.u_name}</a></li>
                                <li><a href="/logout">注销</a></li>
                            </c:if>
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
                        <div id="logo"><a href="/"><img class="img-responsive" src="/image/logo1.png" title="MarketShop" alt="MarketShop" /></a></div>
                    </div>
                    <!-- Mini Cart End-->
                    <!-- Search Start-->
                    <div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12 inner">
                        <div id="search" class="input-group">
                            <form action="/search">
                                <input id="filter_name" type="text" name="p_name" value="" placeholder="输入要搜索的商品" class="form-control input-lg" />
                                <button type="button" class="button-search" onclick="this.form.submit()"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <!-- Search End-->
                </div>
            </div>
        </header>
        <!-- Header End-->
        <!-- Main Menu Start-->
        <div class="container">
            <nav id="menu" class="navbar">
                <div class="navbar-header"> <span class="visible-xs visible-sm"> Menu <b></b></span></div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a class="home_link" title="Home" href="/"><span>首页</span></a></li>
                        <li class="contact-link"><a href="#"></a></li>
                        <li class="mega-menu dropdown"><a href="/category">商品分类</a>
                            <div class="dropdown-menu">
                                <c:forEach items="${cate1}" var="c1">
                                    <div class="column col-lg-2 col-md-3"><a href="/category1?cate=${c1.c_id}">${c1.c_name}</a>
                                        <div>
                                            <ul><c:forEach items="${cate2}" var="c2">
                                                <c:if test="${c1.c_id==c2.c_id}">
                                                    <li><a href="/category2?cate=${c2.cs_id}">${c2.cs_name}<span>&rsaquo;</span></a>
                                                        <div class="dropdown-menu">
                                                            <ul><c:forEach items="${cate3}" var="c3">
                                                                <c:if test="${c2.cs_id==c3.cs_id}">
                                                                    <li><a href="/category3?cate=${c3.ct_id}">${c3.ct_name}</a></li>
                                                                </c:if>
                                                            </c:forEach>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </li>
                        <li class="contact-link"><a href="#"></a></li>
                        <li class="menu_brands dropdown"><a href="#">热门商品</a>
                            <div class="dropdown-menu">
                                <c:forEach items="${avaipro2}" var="pro">
                                    <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="/product?proid=${pro.p_id}"><img src="/image/product/apple_logo-60x60.jpg" title="${pro.p_name}"  /></a><a href="#">${pro.p_name}</a></div>
                                </c:forEach>
                            </div>
                        </li>
                        <li class="contact-link"><a href="#"></a></li>
                        <li class="dropdown information-link"><a>站内导航</a>
                            <div class="dropdown-menu">
                                <ul>
                                    <li><a href="/login">登录</a></li>
                                    <li><a href="/register">注册</a></li>
                                    <li><a href="/category">商品分类</a></li>
                                    <c:if test="${!empty login_user}">
                                        <li><a href="/cart">购物车</a></li>
                                        <li><a href="#">联系客服</a></li>
                                    </c:if>
                                    <c:if test="${empty login_user}">
                                        <li><a href="#">购物车</a></li>
                                        <li><a href="#">联系客服</a></li>
                                    </c:if>
                                </ul>
                            </div>
                        </li>
                        <li class="contact-link"><a href="#"></a></li>
                        <li class="contact-link"><a href="#">联系我们</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- Main Menu End-->
    </div>
    <div id="container">
        <div class="container">
            <!-- Breadcrumb Start-->
            <ul class="breadcrumb">
                <li><a href="/"><i class="fa fa-home"></i></a></li>
                <li><a href="/login">用户</a></li>
                <li><a href="/login">登录</a></li>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-9">
                    <h1 class="title">用户登录</h1>
                    <div class="row">
                        <div class="col-sm-6">
                            <h2 class="subtitle">新用户</h2>
                            <p><strong>注册用户</strong></p>
                            <p>成为我们的一员</p>
                            <a href="/register" class="btn btn-primary">注册</a> </div>
                        <div class="col-sm-6">
                            <h2 class="subtitle">老司机登录</h2>
                            <form method="post" action="/post_login" >
                            <div class="form-group">
                                <label class="control-label" for="input-email">用户名</label>
                                <input type="text" name="email" value="" placeholder="输入邮箱" id="input-email" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="input-password">密码</label>
                                <input type="password" name="password" value="" placeholder="输入密码" id="input-password" class="form-control" />
                                <br />
                                <a href="#">忘记密码？</a></div>
                            <input type="submit" value="登录" class="btn btn-primary" />
                            </form>
                        </div>
                    </div>
                </div>
                <!--Middle Part End -->
                <!--Right Part Start -->
                <aside id="column-right" class="col-sm-3 hidden-xs">
                    <h3 class="subtitle">个人账户</h3>
                    <div class="list-group">
                        <ul class="list-item">
                            <li><a href="/login">登录</a></li>
                            <li><a href="/register">注册</a></li>
                            <li><a href="/cart">购物车</a></li>
                            <li><a href="/wishlist">我的收藏</a></li>
                        </ul>
                    </div>
                </aside>
                <!--Right Part End -->
            </div>
        </div>
    </div>
    <!--Footer Start-->
    <footer id="footer">
        <div class="fpart-first">
            <div class="container">
                <div class="row">
                    <div class="contact col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <h5>联系方式</h5>
                        <ul>
                            <li class="address"><i class="fa fa-map-marker"></i>计算机1408班，东北大学，沈阳，中国，地球</li>
                            <li class="mobile"><i class="fa fa-phone"></i>8008208820</li>
                            <li class="email"><i class="fa fa-envelope"></i>发邮件到 <a href="#">联系我们</a>
                        </ul>
                    </div>
                    <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                        <h5>关于我们</h5>
                        <ul>
                            <li><a href="#">关于我们</a></li>
                            <li><a href="#">隐私条款</a></li>
                        </ul>
                    </div>
                    <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                        <h5>用户手册</h5>
                        <ul>
                            <li><a href="#">联系我们</a></li>
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
                <%--<div class="bottom-row">--%>
                <%--<div class="custom-text text-center">--%>
                <%--<p>This is a CMS block. You can insert any content (HTML, Text, Images) Here. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>--%>
                <%--</div>--%>
                <%--<div class="payments_types"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_paypal.png" alt="paypal" title="PayPal"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_american.png" alt="american-express" title="American Express"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_2checkout.png" alt="2checkout" title="2checkout"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_maestro.png" alt="maestro" title="Maestro"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_discover.png" alt="discover" title="Discover"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_mastercard.png" alt="mastercard" title="MasterCard"></a> </div>--%>
                <%--</div>--%>
            </div>
        </div>
        <div id="back-top"><a data-toggle="tooltip" title="返回顶部" href="javascript:void(0)" class="backtotop"><i class="fa fa-chevron-up"></i></a></div>
    </footer>
    <!--Footer End-->
    <!-- Facebook Side Block Start -->
    <%--<div id="facebook" class="fb-left sort-order-1">--%>
        <%--<div class="facebook_icon"><i class="fa fa-facebook"></i></div>--%>
        <%--<div class="fb-page" data-href="https://www.facebook.com/harnishdesign/" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true" data-show-posts="false">--%>
            <%--<div class="fb-xfbml-parse-ignore">--%>
                <%--<blockquote cite="https://www.facebook.com/harnishdesign/"><a href="https://www.facebook.com/harnishdesign/">Harnish Design</a></blockquote>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div id="fb-root"></div>--%>
        <%--<script>(function(d, s, id) {--%>
            <%--var js, fjs = d.getElementsByTagName(s)[0];--%>
            <%--if (d.getElementById(id)) return;--%>
            <%--js = d.createElement(s); js.id = id;--%>
            <%--js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";--%>
            <%--fjs.parentNode.insertBefore(js, fjs);--%>
        <%--}(document, 'script', 'facebook-jssdk'));</script>--%>
    <%--</div>--%>
    <%--<!-- Facebook Side Block End -->--%>
    <%--<!-- Twitter Side Block Start -->--%>
    <%--<div id="twitter_footer" class="twit-left sort-order-2">--%>
        <%--<div class="twitter_icon"><i class="fa fa-twitter"></i></div>--%>
        <%--<a class="twitter-timeline" href="https://twitter.com/" data-chrome="nofooter noscrollbar transparent" data-theme="light" data-tweet-limit="2" data-related="twitterapi,twitter" data-aria-polite="assertive" data-widget-id="347621595801608192">Tweets by @</a>--%>
        <%--<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>--%>
    <%--</div>--%>
    <%--<!-- Twitter Side Block End -->--%>
    <%--<!-- Video Side Block Start -->--%>
    <%--<div id="video_box" class="vb-left sort-order-3">--%>
        <%--<div id="video_box_icon"><i class="fa fa-play"></i></div>--%>
        <%--<p>--%>
            <%--<iframe allowfullscreen="" src="//www.youtube.com/embed/SZEflIVnhH8" height="315" width="560"></iframe>--%>
        <%--</p>--%>
    <%--</div>--%>
    <%--<!-- Video Side Block End -->--%>
    <%--<!-- Custom Side Block Start -->--%>
    <%--<div id="custom_side_block" class="custom_side_block_left sort-order-4">--%>
        <%--<div class="custom_side_block_icon"> <i class="fa fa-chevron-right"></i> </div>--%>
        <%--<table>--%>
            <%--<tbody>--%>
            <%--<tr>--%>
                <%--<td><h2>CMS Blocks</h2></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><img alt="" src="/image/banner/cms-block.jpg"></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>You can add any HTML content to this block or turn it off in Theme Admin panel!</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td><strong><a href="#">Read More</a></strong></td>--%>
            <%--</tr>--%>
            <%--</tbody>--%>
        <%--</table>--%>
    <%--</div>--%>
    <!-- Custom Side Block End -->
</div>
<!-- JS Part Start-->
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.easing-1.3.min.js"></script>
<script type="text/javascript" src="js/jquery.dcjqaccordion.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- JS Part End-->
</body>
</html>