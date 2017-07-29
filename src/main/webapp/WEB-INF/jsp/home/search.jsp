<%--
  Created by IntelliJ IDEA.
  User: wangjun
  Date: 2017/7/16
  Time: 21:18
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
    <title>TinyBees | 搜索</title>
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
                <li><a href="/"><i class="fa fa-home"></i></a></li>
                <li><a href="/search">搜索</a></li>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-12">
                    <h1 class="title">搜索结果</h1>
                    <%--<label>Search Criteria</label>--%>
                    <%--<div class="row">--%>
                        <%--<div class="col-sm-4">--%>
                            <%--<input type="text" class="form-control" placeholder="Keywords" value="iphone" name="search">--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<select class="form-control" name="category_id">--%>
                                <%--<option value="0">All Categories</option>--%>
                                <%--<option value="59">Clothing</option>--%>
                                <%--<option value="61">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Men</option>--%>
                                <%--<option value="93">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories</option>--%>
                                <%--<option value="94">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories</option>--%>
                                <%--<option value="95">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories</option>--%>
                                <%--<option value="96">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories</option>--%>
                                <%--<option value="91">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories New</option>--%>
                                <%--<option value="60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Women</option>--%>
                                <%--<option value="62">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Girls</option>--%>
                                <%--<option value="98">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories</option>--%>
                                <%--<option value="97">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories New</option>--%>
                                <%--<option value="99">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories New</option>--%>
                                <%--<option value="63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Boys</option>--%>
                                <%--<option value="64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Baby</option>--%>
                                <%--<option value="65">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Accessories</option>--%>
                                <%--<option value="120">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="66">Electronics</option>--%>
                                <%--<option value="67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Laptops</option>--%>
                                <%--<option value="100">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="102">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="101">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories New</option>--%>
                                <%--<option value="68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Desktops</option>--%>
                                <%--<option value="103">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="104">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories New</option>--%>
                                <%--<option value="105">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories New</option>--%>
                                <%--<option value="33">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cameras</option>--%>
                                <%--<option value="110">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="69">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile Phones</option>--%>
                                <%--<option value="106">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="107">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TV &amp; Home Audio</option>--%>
                                <%--<option value="108">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="109">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories New</option>--%>
                                <%--<option value="71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MP3 Players</option>--%>
                                <%--<option value="20">Shoes</option>--%>
                                <%--<option value="27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Men</option>--%>
                                <%--<option value="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Women</option>--%>
                                <%--<option value="115">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="116">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories</option>--%>
                                <%--<option value="42">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Girls</option>--%>
                                <%--<option value="41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Boys</option>--%>
                                <%--<option value="40">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Baby</option>--%>
                                <%--<option value="72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Accessories</option>--%>
                                <%--<option value="117">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="118">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="119">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sub Categories</option>--%>
                                <%--<option value="18">Watches</option>--%>
                                <%--<option value="46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Men's Watches</option>--%>
                                <%--<option value="45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Women's Watches</option>--%>
                                <%--<option value="47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kids' Watches</option>--%>
                                <%--<option value="37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Accessories</option>--%>
                                <%--<option value="25">Jewellery</option>--%>
                                <%--<option value="29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Silver</option>--%>
                                <%--<option value="111">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="112">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gold</option>--%>
                                <%--<option value="35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;test 1</option>--%>
                                <%--<option value="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;test 2</option>--%>
                                <%--<option value="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Diamond</option>--%>
                                <%--<option value="31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pearl</option>--%>
                                <%--<option value="113">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Men's Jewellery</option>--%>
                                <%--<option value="43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Children's Jewellery</option>--%>
                                <%--<option value="114">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Sub Categories</option>--%>
                                <%--<option value="17">Health &amp; Beauty</option>--%>
                                <%--<option value="57">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perfumes</option>--%>
                                <%--<option value="24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Makeup</option>--%>
                                <%--<option value="44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sun Care</option>--%>
                                <%--<option value="48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Skin Care</option>--%>
                                <%--<option value="49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Eye Care</option>--%>
                                <%--<option value="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hair Care</option>--%>
                                <%--<option value="34">Kids &amp; Babies</option>--%>
                                <%--<option value="51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Toys</option>--%>
                                <%--<option value="52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Games</option>--%>
                                <%--<option value="58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;test 25</option>--%>
                                <%--<option value="53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Puzzles</option>--%>
                                <%--<option value="54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hobbies</option>--%>
                                <%--<option value="55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Strollers</option>--%>
                                <%--<option value="56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Health &amp; Safety</option>--%>
                                <%--<option value="38">Sports</option>--%>
                                <%--<option value="39">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cycling</option>--%>
                                <%--<option value="73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Running</option>--%>
                                <%--<option value="74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Swimming</option>--%>
                                <%--<option value="75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Football</option>--%>
                                <%--<option value="76">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Golf</option>--%>
                                <%--<option value="77">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Windsurfing</option>--%>
                                <%--<option value="78">Home &amp; Garden</option>--%>
                                <%--<option value="79">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bedding</option>--%>
                                <%--<option value="80">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Food</option>--%>
                                <%--<option value="81">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Furniture</option>--%>
                                <%--<option value="82">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kitchen</option>--%>
                                <%--<option value="83">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lighting</option>--%>
                                <%--<option value="84">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tools</option>--%>
                                <%--<option value="85">Wines &amp; Spirits</option>--%>
                                <%--<option value="86">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Wine</option>--%>
                                <%--<option value="87">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Whiskey</option>--%>
                                <%--<option value="88">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vodka</option>--%>
                                <%--<option value="89">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Liqueurs</option>--%>
                                <%--<option value="90">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Beer</option>--%>
                            <%--</select>--%>
                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<input type="button" class="btn btn-primary" id="button-search" value="Search">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <br>
                    <div class="product-filter">
                        <div class="row">
                            <div class="col-md-4 col-sm-5">
                                <div class="btn-group">
                                    <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="List"><i class="fa fa-th-list"></i></button>
                                    <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="Grid"><i class="fa fa-th"></i></button>
                                </div>
                                <%--<a href="/compare" id="compare-total">Product Compare (0)</a> </div>--%>
                            <%--<div class="col-sm-2 text-right">--%>
                                <%--<label class="control-label" for="input-sort">Sort By:</label>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-3 col-sm-2 text-right">--%>
                                <%--<select id="input-sort" class="form-control col-sm-3">--%>
                                    <%--<option value="" selected="selected">Default</option>--%>
                                    <%--<option value="">Name (A - Z)</option>--%>
                                    <%--<option value="">Name (Z - A)</option>--%>
                                    <%--<option value="">Price (Low &gt; High)</option>--%>
                                    <%--<option value="">Price (High &gt; Low)</option>--%>
                                    <%--<option value="">Rating (Highest)</option>--%>
                                    <%--<option value="">Rating (Lowest)</option>--%>
                                    <%--<option value="">Model (A - Z)</option>--%>
                                    <%--<option value="">Model (Z - A)</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                            <%--<div class="col-sm-1 text-right">--%>
                                <%--<label class="control-label" for="input-limit">Show:</label>--%>
                            <%--</div>--%>
                            <%--<div class="col-sm-2 text-right">--%>
                                <%--<select id="input-limit" class="form-control">--%>
                                    <%--<option value="" selected="selected">20</option>--%>
                                    <%--<option value="">25</option>--%>
                                    <%--<option value="">50</option>--%>
                                    <%--<option value="">75</option>--%>
                                    <%--<option value="">100</option>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                    <br />
                    <div class="row products-category">
                        <c:forEach items="${searchpro}" var="pro">
                        <div class="product-layout product-list col-xs-12">
                            <div class="product-thumb">
                                <div class="image"><a href="/product?proid=${pro.p_id}"><img src="/image/product/macbook_pro_1-200x200.jpg" alt=" Strategies for Acquiring Your Own Laptop " title=" Strategies for Acquiring Your Own Laptop " class="img-responsive" /></a></div>
                                <div>
                                    <div class="caption">
                                        <h4><a href="/product">${pro.p_name}</a></h4>
                                        <p class="description">${pro.pdesc}</p>
                                        <p class="price"> <span class="price-new">￥${pro.current_price}</span> <span class="price-old">￥${pro.market_price}</span> <span class="price-tax">省:￥${pro.market_price-pro.current_price}</span> </p>
                                    </div>
                                    <div class="button-group">
                                        <a class="btn-primary" type="button" href="/product?proid=${product.p_id}" style="text-decoration:none;"><span>添加到购物车</span></a>
                                        <div class="add-to-links">
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
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="active"><span>1</span></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">&gt;</a></li>
                                <li><a href="#">&gt;|</a></li>
                            </ul>
                        </div>
                        <%--<div class="col-sm-6 text-right">Showing 1 to 12 of 15 (2 Pages)</div>--%>
                    </div>
                </div>
                <!--Middle Part End -->
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
                            <li><a href="/">隐私条款</a></li>
                        </ul>
                    </div>
                    <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                        <h5>用户手册</h5>
                        <ul>
                            <li><a href="#">联系我们</a></li>
                            <li><a href="#">意见反馈</a></li>
                            <li><a href="/">购物指南</a></li>
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
                            <li><a href="/wishlist">我的收藏</a></li>
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