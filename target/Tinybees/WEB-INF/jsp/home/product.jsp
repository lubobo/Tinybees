<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wangjun
  Date: 2017/7/16
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <%--<link href="/image/favicon.png" rel="icon" />--%>
    <title>TinyBees | 商品</title>
    <%--<meta name="description" content="Responsive and clean html template design for any kind of ecommerce webshop">--%>
    <!-- CSS Part Start-->
    <link rel="stylesheet" type="text/css" href="js/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.transitions.css" />
    <link rel="stylesheet" type="text/css" href="js/swipebox/src/css/swipebox.min.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css" />
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' type='text/css'>
    <!-- CSS Part End-->
    <script type="text/javascript">
        function addwish(value) {
            var formParam = $("#"+value).serialize();
            $.ajax({
                cache: false,
                type: 'POST',
                url:'/addwish',
                data:formParam,// 你的formid
                dataType:'json',

            });
        }
    </script>
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
                    <!-- Logo End -->
                    <!-- Mini Cart Start-->
                    <%--<div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12">--%>
                    <%--<div id="cart">--%>
                    <%--<button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="heading dropdown-toggle">--%>
                    <%--<span class="cart-icon pull-left flip"></span>--%>
                    <%--<span id="cart-total">2 item(s) - $1,132.00</span></button>--%>
                    <%--<ul class="dropdown-menu">--%>
                    <%--<li>--%>
                    <%--<table class="table">--%>
                    <%--<tbody>--%>
                    <%--<tr>--%>
                    <%--<td class="text-center"><a href="/product"><img class="img-thumbnail" title="Xitefun Causal Wear Fancy Shoes" alt="Xitefun Causal Wear Fancy Shoes" src="/image/product/sony_vaio_1-50x50.jpg"></a></td>--%>
                    <%--<td class="text-left"><a href="/product">Xitefun Causal Wear Fancy Shoes</a></td>--%>
                    <%--<td class="text-right">x 1</td>--%>
                    <%--<td class="text-right">$902.00</td>--%>
                    <%--<td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td class="text-center"><a href="/product"><img class="img-thumbnail" title="Aspire Ultrabook Laptop" alt="Aspire Ultrabook Laptop" src="/image/product/samsung_tab_1-50x50.jpg"></a></td>--%>
                    <%--<td class="text-left"><a href="/product">Aspire Ultrabook Laptop</a></td>--%>
                    <%--<td class="text-right">x 1</td>--%>
                    <%--<td class="text-right">$230.00</td>--%>
                    <%--<td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>--%>
                    <%--</tr>--%>
                    <%--</tbody>--%>
                    <%--</table>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<div>--%>
                    <%--<table class="table table-bordered">--%>
                    <%--<tbody>--%>
                    <%--<tr>--%>
                    <%--<td class="text-right"><strong>Sub-Total</strong></td>--%>
                    <%--<td class="text-right">$940.00</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td class="text-right"><strong>Eco Tax (-2.00)</strong></td>--%>
                    <%--<td class="text-right">$4.00</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td class="text-right"><strong>VAT (20%)</strong></td>--%>
                    <%--<td class="text-right">$188.00</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                    <%--<td class="text-right"><strong>Total</strong></td>--%>
                    <%--<td class="text-right">$1,132.00</td>--%>
                    <%--</tr>--%>
                    <%--</tbody>--%>
                    <%--</table>--%>
                    <%--<p class="checkout"><a href="/cart" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> View Cart</a>&nbsp;&nbsp;&nbsp;<a href="/checkout" class="btn btn-primary"><i class="fa fa-share"></i> Checkout</a></p>--%>
                    <%--</div>--%>
                    <%--</li>--%>
                    <%--</ul>--%>
                    <%--</div>--%>
                    <%--</div>--%>
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
                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/" itemprop="url"><span itemprop="title"><i class="fa fa-home"></i></span></a></li>
                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/category" itemprop="url"><span itemprop="title">分类</span></a></li>
                <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="#" itemprop="url"><span itemprop="title">商品详情</span></a></li>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-9">
                    <div itemscope itemtype="http://schema.org/Product">
                        <h1 class="title" itemprop="name">${pro.p_name}</h1>
                        <div class="row product-info">
                            <div class="col-sm-6">
                                <div class="image"><img class="img-responsive" itemprop="image" id="zoom_01" src="/image/product/macbook_air_1-350x350.jpg" title="Laptop Silver black" alt="Laptop Silver black" data-zoom-image="/image/product/macbook_air_1-500x500.jpg" /> </div>
                                <div class="center-block text-center"><span class="zoom-gallery"><i class="fa fa-search"></i>鼠标放在图片上看大图</span></div>
                                <div class="image-additional" id="gallery_01"> <a class="thumbnail" href="#" data-zoom-image="/image/product/macbook_air_1-500x500.jpg" data-image="/image/product/macbook_air_1-350x350.jpg" title="Laptop Silver black"> <img src="/image/product/macbook_air_1-66x66.jpg" title="Laptop Silver black" alt = "Laptop Silver black"/></a> <a class="thumbnail" href="#" data-zoom-image="/image/product/macbook_air_4-500x500.jpg" data-image="/image/product/macbook_air_4-350x350.jpg" title="Laptop Silver black"><img src="/image/product/macbook_air_4-66x66.jpg" title="Laptop Silver black" alt="Laptop Silver black" /></a> <a class="thumbnail" href="#" data-zoom-image="/image/product/macbook_air_2-500x500.jpg" data-image="/image/product/macbook_air_2-350x350.jpg" title="Laptop Silver black"><img src="/image/product/macbook_air_2-66x66.jpg" title="Laptop Silver black" alt="Laptop Silver black" /></a> <a class="thumbnail" href="#" data-zoom-image="/image/product/macbook_air_3-500x500.jpg" data-image="/image/product/macbook_air_3-350x350.jpg" title="Laptop Silver black"><img src="/image/product/macbook_air_3-66x66.jpg" title="Laptop Silver black" alt="Laptop Silver black" /></a> </div>
                            </div>
                            <div class="col-sm-6">
                                <%--<ul class="list-unstyled description">--%>
                                    <%--<li><b>Brand:</b> <a href="#"><span itemprop="brand">Apple</span></a></li>--%>
                                    <%--<li><b>Product Code:</b> <span itemprop="mpn">Product 17</span></li>--%>
                                    <%--<li><b>Reward Points:</b> 700</li>--%>
                                    <%--<li><b>Availability:</b> <span class="instock">In Stock</span></li>--%>
                                <%--</ul>--%>
                                <ul class="price-box">
                                    <li class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer"><span class="price-old">￥${pro.market_price}</span> <span itemprop="price">￥${pro.current_price}<span itemprop="availability" content="In Stock"></span></span></li>
                                    <li></li>
                                    <%--<li>Ex Tax: $950.00</li>--%>
                                </ul>
                                <div id="product">
                                    <h3 class="subtitle">选择数量</h3>
                                    <div class="form-group required">
                                        <label class="control-label">颜色/型号</label>
                                        <h3>${pro.color}+${pro.size}</h3>
                                        <%--<select class="form-control" id="input-option200" name="option[200]">--%>
                                            <%--<option value="">${pro.color}</option>--%>
                                            <%--<option value="4">黑 </option>--%>
                                            <%--<option value="3">紫 </option>--%>
                                            <%--<option value="1">绿 </option>--%>
                                            <%--<option value="2">蓝 </option>--%>
                                        <%--</select>--%>
                                    </div>
                                    <div class="cart">
                                        <div>
                                            <form method="post" action="/addcart">
                                            <div class="qty">
                                                <label class="control-label" for="input-quantity">数量</label>
                                                <input type="text" name="count" value="1" size="2" id="input-quantity" class="form-control" />
                                                <a class="qtyBtn plus" href="javascript:void(0);">+</a><br />
                                                <a class="qtyBtn mines" href="javascript:void(0);">-</a>
                                                <div class="clear"></div>
                                            </div>
                                            <input type="hidden" value="${pro.p_id}" name="p_id">
                                            <input type="hidden" value="${login_user.u_id}" name="u_id">
                                                <input type="hidden" value="1" name="subcount">
                                            <input type="submit" id="button-cart" class="btn btn-primary btn-lg" value="添加购物车">
                                            </form>
                                        </div>
                                        <div>
                                            <c:set var="pid" value="${pro.p_id}"/>
                                            <form  id="${pid}">
                                                <c:set var="u_id" value="${login_user.u_id}"/>
                                                <input type="hidden" value="${pid}" name="p_id">
                                                <input type="hidden" value="${u_id}" name="u_id">
                                                <button  type="button" data-toggle="tooltip" title="收藏" value="${pro.p_id}" onclick="addwish(this.value)"><i class="fa fa-heart"></i> <span>收藏</span></button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <%--<div class="rating" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">--%>
                                    <%--<meta itemprop="ratingValue" content="0" />--%>
                                    <%--<p><span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span> <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href=""><span itemprop="reviewCount">1 reviews</span></a> / <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href="">Write a review</a></p>--%>
                                <%--</div>--%>
                                <%--<hr>--%>
                                <%--<!-- AddThis Button BEGIN -->--%>
                                <%--<div class="addthis_toolbox addthis_default_style"> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_button_pinterest_pinit" pi:pinit:layout="horizontal" pi:pinit:url="http://www.addthis.com/features/pinterest" pi:pinit:media="http://www.addthis.com/cms-content/images/features/pinterest-lg.png"></a> <a class="addthis_counter addthis_pill_style"></a> </div>--%>
                                <%--<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-514863386b357649"></script>--%>
                                <%--<!-- AddThis Button END -->--%>
                            </div>
                        </div>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-description" data-toggle="tab">商品描述</a></li>
                            <%--<li><a href="#tab-specification" data-toggle="tab">具体参数</a></li>--%>
                            <li><a href="#tab-review" data-toggle="tab">评价</a></li>
                        </ul>
                        <div class="tab-content">
                            <div itemprop="description" id="tab-description" class="tab-pane active">
                                <div>
                                    <p>${pro.pdesc}</p>
                                </div>
                            </div>
                            <div id="tab-review" class="tab-pane">
                                <form class="form-horizontal" action="/addreview">
                                    <div id="review">
                                        <c:forEach items="${review}" var="re">
                                        <div>
                                            <table class="table table-striped table-bordered">
                                                <tbody>
                                                <tr>
                                                    <td style="width: 50%;"><strong><span>${re.u_name}</span></strong></td>
                                                    <%--<td class="text-right"><span>20/01/2016</span></td>--%>
                                                </tr>
                                                <tr>
                                                    <td colspan="2"><p>${re.r_comment}</p>
                                                        <div class="rating">
                                                            <c:if test="${re.r_rate==1}">
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </c:if>
                                                            <c:if test="${re.r_rate==2}">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </c:if>
                                                            <c:if test="${re.r_rate==3}">
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </c:if>
                                                            <c:if test="${re.r_rate==4}">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </c:if>
                                                            <c:if test="${re.r_rate==5}">
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </c:if>
                                                        </div></td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        </c:forEach>
                                        <div class="text-right"></div>
                                    </div>
                                    <h2>评价两句</h2>
                                    <%--<div class="form-group required">--%>
                                        <%--<div class="col-sm-12">--%>
                                            <%--<label for="input-name" class="control-label">Your Name</label>--%>
                                            <%--<input type="text" class="form-control" id="input-name" value="" name="name">--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label for="input-review" class="control-label">你的评价</label>
                                            <textarea class="form-control" id="input-review" rows="5" name="r_comment"></textarea>
                                            <%--<div class="help-block"><span class="text-danger">Note:</span> HTML is not translated!</div>--%>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label class="control-label">星级</label>
                                            &nbsp;&nbsp;&nbsp; 低&nbsp;
                                            <input type="radio" value="1" name="r_rate">
                                            &nbsp;
                                            <input type="radio" value="2" name="r_rate">
                                            &nbsp;
                                            <input type="radio" value="3" name="r_rate">
                                            &nbsp;
                                            <input type="radio" value="4" name="r_rate">
                                            &nbsp;
                                            <input type="radio" value="5" name="r_rate">
                                            &nbsp;高</div>
                                    </div>
                                    <div class="buttons">
                                        <div class="pull-right">
                                            <input type="hidden" value="${pro.p_id}" name="p_id">
                                            <input type="hidden" value="${login_user.u_id}" name="u_id">
                                            <input class="btn btn-primary" id="button-review" type="submit">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <h3 class="subtitle">看了又看</h3>
                        <div class="owl-carousel related_pro">
                            <c:forEach items="${proctid}" var="prot">
                            <div class="product-thumb">
                                <div class="image"><a href="/product?proid=${prot.p_id}"><img src="/image/product/macbook_pro_1-200x200.jpg" alt=" Strategies for Acquiring Your Own Laptop " title=" Strategies for Acquiring Your Own Laptop " class="img-responsive" /></a></div>
                                <div class="caption">
                                    <h4><a href="/product?proid=${prot.p_id}">${prot.p_name}</a></h4>
                                    <p class="price"> <span class="price-new">￥${pro.current_price}</span> <span class="price-old">￥${pro.market_price}</span>  </p>
                                </div>
                                <div class="button-group">
                                    <a class="btn-primary" type="button" href="/product?proid=${prot.p_id}"><span>添加到购物车</span></a>
                                    <div class="add-to-links">
                                        <c:set var="pid" value="${prot.p_id}"/>
                                        <form  id="${pid}">
                                            <c:set var="u_id" value="${login_user.u_id}"/>
                                            <input type="hidden" value="${pid}" name="p_id">
                                            <input type="hidden" value="${u_id}" name="u_id">
                                            <button  type="button" data-toggle="tooltip" title="收藏" value="${prot.p_id}" onclick="addwish(this.value)"><i class="fa fa-heart"></i> <span>收藏</span></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!--Middle Part End -->
                <!--Right Part Start -->
                <aside id="column-right" class="col-sm-3 hidden-xs">
                    <h3 class="subtitle">打折促销</h3>
                    <div class="side-item">
                        <c:forEach items="${avaipro1}" var="pro"  begin="0" end="5">
                            <div class="product-thumb clearfix">
                                <div class="image"><a href="/product?proid=${pro.p_id}"><img src="/image/product/FinePix-Long-Zoom-Camera-50x50.jpg" alt="FinePix S8400W Long Zoom Camera" title="FinePix S8400W Long Zoom Camera" class="img-responsive" /></a></div>
                                <div class="caption">
                                    <h4><a href="/product?proid=${pro.p_id}">${pro.p_name}</a></h4>
                                    <p class="price"> <span class="price-new">￥${pro.current_price}</span> <span class="price-old">￥${pro.market_price}</span></p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <h3 class="subtitle">热销商品</h3>
                    <div class="side-item">
                        <c:forEach items="${avaipro2}" var="pro"  begin="0" end="5">
                            <div class="product-thumb clearfix">
                                <div class="image"><a href="/product?proid=${pro.p_id}"><img src="/image/product/FinePix-Long-Zoom-Camera-50x50.jpg" alt="FinePix S8400W Long Zoom Camera" title="FinePix S8400W Long Zoom Camera" class="img-responsive" /></a></div>
                                <div class="caption">
                                    <h4><a href="/product?proid=${pro.p_id}">${pro.p_name}</a></h4>
                                    <p class="price"> <span class="price-new">￥${pro.current_price}</span> <span class="price-old">￥${pro.market_price}</span></p>
                                </div>
                            </div>
                        </c:forEach>
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
<script type="text/javascript" src="js/jquery.elevateZoom-3.0.8.min.js"></script>
<script type="text/javascript" src="js/swipebox/lib/ios-orientationchange-fix.js"></script>
<script type="text/javascript" src="js/swipebox/src/js/jquery.swipebox.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript">
    // Elevate Zoom for Product Page image
    $("#zoom_01").elevateZoom({
        gallery:'gallery_01',
        cursor: 'pointer',
        galleryActiveClass: 'active',
        imageCrossfade: true,
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 500,
        lensFadeIn: 500,
        lensFadeOut: 500,
        loadingIcon: '/image/progress.gif'
    });
    //////pass the images to swipebox
    $("#zoom_01").bind("click", function(e) {
        var ez =   $('#zoom_01').data('elevateZoom');
        $.swipebox(ez.getGalleryList());
        return false;
    });
</script>
<!-- JS Part End-->
</body>
</html>
