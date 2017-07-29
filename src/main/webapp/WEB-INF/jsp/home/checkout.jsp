<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wangjun
  Date: 2017/7/16
  Time: 21:11
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
    <title>TinyBees | 结账</title>
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
                <li><a href="/cart">购物车</a></li>
                <li><a href="/checkout">结账</a></li>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <form action="/addorders">
                <div id="content" class="col-sm-12">
                    <h1 class="title">付款</h1>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><i class="fa fa-sign-in"></i> 创建一个账户</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" value="register" name="account">
                                            注册账户</label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" checked="checked" value="guest" name="account">
                                            游客</label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" value="returning" name="account">
                                            老司机</label>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><i class="fa fa-user"></i> 个人信息</h4>
                                </div>
                                <div class="panel-body">
                                    <fieldset id="account">
                                        <div class="form-group required">
                                            <label for="input-payment-firstname" class="control-label">姓名</label>
                                            <input type="text" class="form-control" id="input-payment-firstname" placeholder="" value="${login_user.u_name}" name="name">
                                        </div>
                                        <%--<div class="form-group required">--%>
                                            <%--<label for="input-payment-lastname" class="control-label">Last Name</label>--%>
                                            <%--<input type="text" class="form-control" id="input-payment-lastname" placeholder="Last Name" value="" name="lastname">--%>
                                        <%--</div>--%>
                                        <div class="form-group required">
                                            <label for="input-payment-email" class="control-label">电子邮箱</label>
                                            <input type="text" class="form-control" id="input-payment-email" placeholder="" value="${login_user.email}" name="email">
                                        </div>
                                        <div class="form-group required">
                                            <label for="input-payment-telephone" class="control-label">联系电话</label>
                                            <input type="text" class="form-control" id="input-payment-telephone" placeholder="" value="${login_user.phone}" name="phone">
                                        </div>
                                        <%--<div class="form-group">--%>
                                            <%--<label for="input-payment-fax" class="control-label">Fax</label>--%>
                                            <%--<input type="text" class="form-control" id="input-payment-fax" placeholder="Fax" value="" name="fax">--%>
                                        <%--</div>--%>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><i class="fa fa-book"></i> 收货地址</h4>
                                </div>
                                <div class="panel-body">
                                    <fieldset id="address" class="required">
                                        <%--<div class="form-group">--%>
                                            <%--<label for="input-payment-company" class="control-label">国家</label>--%>
                                            <%--<input type="text" class="form-control" id="input-payment-company" placeholder="${login_user.country}" value="" name="company">--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group">--%>
                                            <%--<label for="input-payment-address-2" class="control-label">Address 2</label>--%>
                                            <%--<input type="text" class="form-control" id="input-payment-address-2" placeholder="" value="" name="address_2">--%>
                                        <%--</div>--%>
                                        <div class="form-group required">
                                            <label for="input-payment-city" class="control-label">国家</label>
                                            <input type="text" class="form-control" id="input-payment-country" placeholder="" value="${login_user.country}" name="country">
                                        </div>
                                            <div class="form-group required">
                                                <label for="input-payment-city" class="control-label">市</label>
                                                <input type="text" class="form-control" id="input-payment-city" placeholder="" value="${login_user.city}" name="city">
                                            </div>
                                            <div class="form-group required">
                                                <label for="input-payment-city" class="control-label">区/镇</label>
                                                <input type="text" class="form-control" id="input-payment-zone" placeholder="" value="${login_user.region}" name="region">
                                            </div>
                                            <div class="form-group required">
                                                <label for="input-payment-address-1" class="control-label">详细地址</label>
                                                <input type="text" class="form-control" id="input-payment-address-1" placeholder="" value="${login_user.addr}" name="addr">
                                            </div>
                                        <div class="form-group required">
                                            <label for="input-payment-postcode" class="control-label">邮政编码</label>
                                            <input type="text" class="form-control" id="input-payment-postcode" placeholder="" value="${login_user.code}" name="code">
                                        </div>
                                        <%--<div class="form-group required">--%>
                                            <%--<label for="input-payment-country" class="control-label">省</label>--%>
                                            <%--<select class="form-control" id="input-payment-country" name="country_id">--%>
                                                <%--<option value=""> --- Please Select --- </option>--%>
                                                <%--<option value="244">Aaland Islands</option>--%>
                                                <%--<option value="1">Afghanistan</option>--%>
                                                <%--<option value="2">Albania</option>--%>
                                                <%--<option value="3">Algeria</option>--%>
                                                <%--<option value="4">American Samoa</option>--%>
                                                <%--<option value="5">Andorra</option>--%>
                                                <%--<option value="6">Angola</option>--%>
                                                <%--<option value="7">Anguilla</option>--%>
                                                <%--<option value="8">Antarctica</option>--%>
                                                <%--<option value="9">Antigua and Barbuda</option>--%>
                                                <%--<option value="10">Argentina</option>--%>
                                                <%--<option value="11">Armenia</option>--%>
                                                <%--<option value="12">Aruba</option>--%>
                                                <%--<option value="252">Ascension Island (British)</option>--%>
                                                <%--<option value="13">Australia</option>--%>
                                                <%--<option value="14">Austria</option>--%>
                                                <%--<option value="15">Azerbaijan</option>--%>
                                                <%--<option value="16">Bahamas</option>--%>
                                                <%--<option value="17">Bahrain</option>--%>
                                                <%--<option value="18">Bangladesh</option>--%>
                                                <%--<option value="19">Barbados</option>--%>
                                                <%--<option value="20">Belarus</option>--%>
                                                <%--<option value="21">Belgium</option>--%>
                                                <%--<option value="22">Belize</option>--%>
                                                <%--<option value="23">Benin</option>--%>
                                                <%--<option value="24">Bermuda</option>--%>
                                                <%--<option value="25">Bhutan</option>--%>
                                                <%--<option value="26">Bolivia</option>--%>
                                                <%--<option value="245">Bonaire, Sint Eustatius and Saba</option>--%>
                                                <%--<option value="27">Bosnia and Herzegovina</option>--%>
                                                <%--<option value="28">Botswana</option>--%>
                                                <%--<option value="29">Bouvet Island</option>--%>
                                                <%--<option value="30">Brazil</option>--%>
                                                <%--<option value="31">British Indian Ocean Territory</option>--%>
                                                <%--<option value="32">Brunei Darussalam</option>--%>
                                                <%--<option value="33">Bulgaria</option>--%>
                                                <%--<option value="34">Burkina Faso</option>--%>
                                                <%--<option value="35">Burundi</option>--%>
                                                <%--<option value="36">Cambodia</option>--%>
                                                <%--<option value="37">Cameroon</option>--%>
                                                <%--<option value="38">Canada</option>--%>
                                                <%--<option value="251">Canary Islands</option>--%>
                                                <%--<option value="39">Cape Verde</option>--%>
                                                <%--<option value="40">Cayman Islands</option>--%>
                                                <%--<option value="41">Central African Republic</option>--%>
                                                <%--<option value="42">Chad</option>--%>
                                                <%--<option value="43">Chile</option>--%>
                                                <%--<option value="44">China</option>--%>
                                                <%--<option value="45">Christmas Island</option>--%>
                                                <%--<option value="46">Cocos (Keeling) Islands</option>--%>
                                                <%--<option value="47">Colombia</option>--%>
                                                <%--<option value="48">Comoros</option>--%>
                                                <%--<option value="49">Congo</option>--%>
                                                <%--<option value="50">Cook Islands</option>--%>
                                                <%--<option value="51">Costa Rica</option>--%>
                                                <%--<option value="52">Cote D'Ivoire</option>--%>
                                                <%--<option value="53">Croatia</option>--%>
                                                <%--<option value="54">Cuba</option>--%>
                                                <%--<option value="246">Curacao</option>--%>
                                                <%--<option value="55">Cyprus</option>--%>
                                                <%--<option value="56">Czech Republic</option>--%>
                                                <%--<option value="237">Democratic Republic of Congo</option>--%>
                                                <%--<option value="57">Denmark</option>--%>
                                                <%--<option value="58">Djibouti</option>--%>
                                                <%--<option value="59">Dominica</option>--%>
                                                <%--<option value="60">Dominican Republic</option>--%>
                                                <%--<option value="61">East Timor</option>--%>
                                                <%--<option value="62">Ecuador</option>--%>
                                                <%--<option value="63">Egypt</option>--%>
                                                <%--<option value="64">El Salvador</option>--%>
                                                <%--<option value="65">Equatorial Guinea</option>--%>
                                                <%--<option value="66">Eritrea</option>--%>
                                                <%--<option value="67">Estonia</option>--%>
                                                <%--<option value="68">Ethiopia</option>--%>
                                                <%--<option value="69">Falkland Islands (Malvinas)</option>--%>
                                                <%--<option value="70">Faroe Islands</option>--%>
                                                <%--<option value="71">Fiji</option>--%>
                                                <%--<option value="72">Finland</option>--%>
                                                <%--<option value="74">France, Metropolitan</option>--%>
                                                <%--<option value="75">French Guiana</option>--%>
                                                <%--<option value="76">French Polynesia</option>--%>
                                                <%--<option value="77">French Southern Territories</option>--%>
                                                <%--<option value="126">FYROM</option>--%>
                                                <%--<option value="78">Gabon</option>--%>
                                                <%--<option value="79">Gambia</option>--%>
                                                <%--<option value="80">Georgia</option>--%>
                                                <%--<option value="81">Germany</option>--%>
                                                <%--<option value="82">Ghana</option>--%>
                                                <%--<option value="83">Gibraltar</option>--%>
                                                <%--<option value="84">Greece</option>--%>
                                                <%--<option value="85">Greenland</option>--%>
                                                <%--<option value="86">Grenada</option>--%>
                                                <%--<option value="87">Guadeloupe</option>--%>
                                                <%--<option value="88">Guam</option>--%>
                                                <%--<option value="89">Guatemala</option>--%>
                                                <%--<option value="256">Guernsey</option>--%>
                                                <%--<option value="90">Guinea</option>--%>
                                                <%--<option value="91">Guinea-Bissau</option>--%>
                                                <%--<option value="92">Guyana</option>--%>
                                                <%--<option value="93">Haiti</option>--%>
                                                <%--<option value="94">Heard and Mc Donald Islands</option>--%>
                                                <%--<option value="95">Honduras</option>--%>
                                                <%--<option value="96">Hong Kong</option>--%>
                                                <%--<option value="97">Hungary</option>--%>
                                                <%--<option value="98">Iceland</option>--%>
                                                <%--<option value="99">India</option>--%>
                                                <%--<option value="100">Indonesia</option>--%>
                                                <%--<option value="101">Iran (Islamic Republic of)</option>--%>
                                                <%--<option value="102">Iraq</option>--%>
                                                <%--<option value="103">Ireland</option>--%>
                                                <%--<option value="254">Isle of Man</option>--%>
                                                <%--<option value="104">Israel</option>--%>
                                                <%--<option value="105">Italy</option>--%>
                                                <%--<option value="106">Jamaica</option>--%>
                                                <%--<option value="107">Japan</option>--%>
                                                <%--<option value="257">Jersey</option>--%>
                                                <%--<option value="108">Jordan</option>--%>
                                                <%--<option value="109">Kazakhstan</option>--%>
                                                <%--<option value="110">Kenya</option>--%>
                                                <%--<option value="111">Kiribati</option>--%>
                                                <%--<option value="113">Korea, Republic of</option>--%>
                                                <%--<option value="253">Kosovo, Republic of</option>--%>
                                                <%--<option value="114">Kuwait</option>--%>
                                                <%--<option value="115">Kyrgyzstan</option>--%>
                                                <%--<option value="116">Lao People's Democratic Republic</option>--%>
                                                <%--<option value="117">Latvia</option>--%>
                                                <%--<option value="118">Lebanon</option>--%>
                                                <%--<option value="119">Lesotho</option>--%>
                                                <%--<option value="120">Liberia</option>--%>
                                                <%--<option value="121">Libyan Arab Jamahiriya</option>--%>
                                                <%--<option value="122">Liechtenstein</option>--%>
                                                <%--<option value="123">Lithuania</option>--%>
                                                <%--<option value="124">Luxembourg</option>--%>
                                                <%--<option value="125">Macau</option>--%>
                                                <%--<option value="127">Madagascar</option>--%>
                                                <%--<option value="128">Malawi</option>--%>
                                                <%--<option value="129">Malaysia</option>--%>
                                                <%--<option value="130">Maldives</option>--%>
                                                <%--<option value="131">Mali</option>--%>
                                                <%--<option value="132">Malta</option>--%>
                                                <%--<option value="133">Marshall Islands</option>--%>
                                                <%--<option value="134">Martinique</option>--%>
                                                <%--<option value="135">Mauritania</option>--%>
                                                <%--<option value="136">Mauritius</option>--%>
                                                <%--<option value="137">Mayotte</option>--%>
                                                <%--<option value="138">Mexico</option>--%>
                                                <%--<option value="139">Micronesia, Federated States of</option>--%>
                                                <%--<option value="140">Moldova, Republic of</option>--%>
                                                <%--<option value="141">Monaco</option>--%>
                                                <%--<option value="142">Mongolia</option>--%>
                                                <%--<option value="242">Montenegro</option>--%>
                                                <%--<option value="143">Montserrat</option>--%>
                                                <%--<option value="144">Morocco</option>--%>
                                                <%--<option value="145">Mozambique</option>--%>
                                                <%--<option value="146">Myanmar</option>--%>
                                                <%--<option value="147">Namibia</option>--%>
                                                <%--<option value="148">Nauru</option>--%>
                                                <%--<option value="149">Nepal</option>--%>
                                                <%--<option value="150">Netherlands</option>--%>
                                                <%--<option value="151">Netherlands Antilles</option>--%>
                                                <%--<option value="152">New Caledonia</option>--%>
                                                <%--<option value="153">New Zealand</option>--%>
                                                <%--<option value="154">Nicaragua</option>--%>
                                                <%--<option value="155">Niger</option>--%>
                                                <%--<option value="156">Nigeria</option>--%>
                                                <%--<option value="157">Niue</option>--%>
                                                <%--<option value="158">Norfolk Island</option>--%>
                                                <%--<option value="112">North Korea</option>--%>
                                                <%--<option value="159">Northern Mariana Islands</option>--%>
                                                <%--<option value="160">Norway</option>--%>
                                                <%--<option value="161">Oman</option>--%>
                                                <%--<option value="162">Pakistan</option>--%>
                                                <%--<option value="163">Palau</option>--%>
                                                <%--<option value="247">Palestinian Territory, Occupied</option>--%>
                                                <%--<option value="164">Panama</option>--%>
                                                <%--<option value="165">Papua New Guinea</option>--%>
                                                <%--<option value="166">Paraguay</option>--%>
                                                <%--<option value="167">Peru</option>--%>
                                                <%--<option value="168">Philippines</option>--%>
                                                <%--<option value="169">Pitcairn</option>--%>
                                                <%--<option value="170">Poland</option>--%>
                                                <%--<option value="171">Portugal</option>--%>
                                                <%--<option value="172">Puerto Rico</option>--%>
                                                <%--<option value="173">Qatar</option>--%>
                                                <%--<option value="174">Reunion</option>--%>
                                                <%--<option value="175">Romania</option>--%>
                                                <%--<option value="176">Russian Federation</option>--%>
                                                <%--<option value="177">Rwanda</option>--%>
                                                <%--<option value="178">Saint Kitts and Nevis</option>--%>
                                                <%--<option value="179">Saint Lucia</option>--%>
                                                <%--<option value="180">Saint Vincent and the Grenadines</option>--%>
                                                <%--<option value="181">Samoa</option>--%>
                                                <%--<option value="182">San Marino</option>--%>
                                                <%--<option value="183">Sao Tome and Principe</option>--%>
                                                <%--<option value="184">Saudi Arabia</option>--%>
                                                <%--<option value="185">Senegal</option>--%>
                                                <%--<option value="243">Serbia</option>--%>
                                                <%--<option value="186">Seychelles</option>--%>
                                                <%--<option value="187">Sierra Leone</option>--%>
                                                <%--<option value="188">Singapore</option>--%>
                                                <%--<option value="189">Slovak Republic</option>--%>
                                                <%--<option value="190">Slovenia</option>--%>
                                                <%--<option value="191">Solomon Islands</option>--%>
                                                <%--<option value="192">Somalia</option>--%>
                                                <%--<option value="193">South Africa</option>--%>
                                                <%--<option value="194">South Georgia &amp; South Sandwich Islands</option>--%>
                                                <%--<option value="248">South Sudan</option>--%>
                                                <%--<option value="195">Spain</option>--%>
                                                <%--<option value="196">Sri Lanka</option>--%>
                                                <%--<option value="249">St. Barthelemy</option>--%>
                                                <%--<option value="197">St. Helena</option>--%>
                                                <%--<option value="250">St. Martin (French part)</option>--%>
                                                <%--<option value="198">St. Pierre and Miquelon</option>--%>
                                                <%--<option value="199">Sudan</option>--%>
                                                <%--<option value="200">Suriname</option>--%>
                                                <%--<option value="201">Svalbard and Jan Mayen Islands</option>--%>
                                                <%--<option value="202">Swaziland</option>--%>
                                                <%--<option value="203">Sweden</option>--%>
                                                <%--<option value="204">Switzerland</option>--%>
                                                <%--<option value="205">Syrian Arab Republic</option>--%>
                                                <%--<option value="206">Taiwan</option>--%>
                                                <%--<option value="207">Tajikistan</option>--%>
                                                <%--<option value="208">Tanzania, United Republic of</option>--%>
                                                <%--<option value="209">Thailand</option>--%>
                                                <%--<option value="210">Togo</option>--%>
                                                <%--<option value="211">Tokelau</option>--%>
                                                <%--<option value="212">Tonga</option>--%>
                                                <%--<option value="213">Trinidad and Tobago</option>--%>
                                                <%--<option value="255">Tristan da Cunha</option>--%>
                                                <%--<option value="214">Tunisia</option>--%>
                                                <%--<option value="215">Turkey</option>--%>
                                                <%--<option value="216">Turkmenistan</option>--%>
                                                <%--<option value="217">Turks and Caicos Islands</option>--%>
                                                <%--<option value="218">Tuvalu</option>--%>
                                                <%--<option value="219">Uganda</option>--%>
                                                <%--<option value="220">Ukraine</option>--%>
                                                <%--<option value="221">United Arab Emirates</option>--%>
                                                <%--<option selected="selected" value="222">United Kingdom</option>--%>
                                                <%--<option value="223">United States</option>--%>
                                                <%--<option value="224">United States Minor Outlying Islands</option>--%>
                                                <%--<option value="225">Uruguay</option>--%>
                                                <%--<option value="226">Uzbekistan</option>--%>
                                                <%--<option value="227">Vanuatu</option>--%>
                                                <%--<option value="228">Vatican City State (Holy See)</option>--%>
                                                <%--<option value="229">Venezuela</option>--%>
                                                <%--<option value="230">Viet Nam</option>--%>
                                                <%--<option value="231">Virgin Islands (British)</option>--%>
                                                <%--<option value="232">Virgin Islands (U.S.)</option>--%>
                                                <%--<option value="233">Wallis and Futuna Islands</option>--%>
                                                <%--<option value="234">Western Sahara</option>--%>
                                                <%--<option value="235">Yemen</option>--%>
                                                <%--<option value="238">Zambia</option>--%>
                                                <%--<option value="239">Zimbabwe</option>--%>
                                            <%--</select>--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group required">--%>
                                            <%--<label for="input-payment-zone" class="control-label">市</label>--%>
                                            <%--<select class="form-control" id="input-payment-zone" name="zone_id">--%>
                                                <%--<option value=""> --- Please Select --- </option>--%>
                                                <%--<option value="3513">Aberdeen</option>--%>
                                                <%--<option value="3514">Aberdeenshire</option>--%>
                                                <%--<option value="3515">Anglesey</option>--%>
                                                <%--<option value="3516">Angus</option>--%>
                                                <%--<option value="3517">Argyll and Bute</option>--%>
                                                <%--<option value="3518">Bedfordshire</option>--%>
                                                <%--<option value="3519">Berkshire</option>--%>
                                                <%--<option value="3520">Blaenau Gwent</option>--%>
                                                <%--<option value="3521">Bridgend</option>--%>
                                                <%--<option value="3522">Bristol</option>--%>
                                                <%--<option value="3523">Buckinghamshire</option>--%>
                                                <%--<option value="3524">Caerphilly</option>--%>
                                                <%--<option value="3525">Cambridgeshire</option>--%>
                                                <%--<option value="3526">Cardiff</option>--%>
                                                <%--<option value="3527">Carmarthenshire</option>--%>
                                                <%--<option value="3528">Ceredigion</option>--%>
                                                <%--<option value="3529">Cheshire</option>--%>
                                                <%--<option value="3530">Clackmannanshire</option>--%>
                                                <%--<option value="3531">Conwy</option>--%>
                                                <%--<option value="3532">Cornwall</option>--%>
                                                <%--<option value="3949">County Antrim</option>--%>
                                                <%--<option value="3950">County Armagh</option>--%>
                                                <%--<option value="3951">County Down</option>--%>
                                                <%--<option value="3952">County Fermanagh</option>--%>
                                                <%--<option value="3953">County Londonderry</option>--%>
                                                <%--<option value="3954">County Tyrone</option>--%>
                                                <%--<option value="3955">Cumbria</option>--%>
                                                <%--<option value="3533">Denbighshire</option>--%>
                                                <%--<option value="3534">Derbyshire</option>--%>
                                                <%--<option value="3535">Devon</option>--%>
                                                <%--<option value="3536">Dorset</option>--%>
                                                <%--<option value="3537">Dumfries and Galloway</option>--%>
                                                <%--<option value="3538">Dundee</option>--%>
                                                <%--<option value="3539">Durham</option>--%>
                                                <%--<option value="3540">East Ayrshire</option>--%>
                                                <%--<option value="3541">East Dunbartonshire</option>--%>
                                                <%--<option value="3542">East Lothian</option>--%>
                                                <%--<option value="3543">East Renfrewshire</option>--%>
                                                <%--<option value="3544">East Riding of Yorkshire</option>--%>
                                                <%--<option value="3545">East Sussex</option>--%>
                                                <%--<option value="3546">Edinburgh</option>--%>
                                                <%--<option value="3547">Essex</option>--%>
                                                <%--<option value="3548">Falkirk</option>--%>
                                                <%--<option value="3549">Fife</option>--%>
                                                <%--<option value="3550">Flintshire</option>--%>
                                                <%--<option value="3551">Glasgow</option>--%>
                                                <%--<option value="3552">Gloucestershire</option>--%>
                                                <%--<option value="3553">Greater London</option>--%>
                                                <%--<option value="3554">Greater Manchester</option>--%>
                                                <%--<option value="3555">Gwynedd</option>--%>
                                                <%--<option value="3556">Hampshire</option>--%>
                                                <%--<option value="3557">Herefordshire</option>--%>
                                                <%--<option value="3558">Hertfordshire</option>--%>
                                                <%--<option value="3559">Highlands</option>--%>
                                                <%--<option value="3560">Inverclyde</option>--%>
                                                <%--<option value="3561">Isle of Wight</option>--%>
                                                <%--<option value="3562">Kent</option>--%>
                                                <%--<option value="3563">Lancashire</option>--%>
                                                <%--<option value="3564">Leicestershire</option>--%>
                                                <%--<option value="3565">Lincolnshire</option>--%>
                                                <%--<option value="3566">Merseyside</option>--%>
                                                <%--<option value="3567">Merthyr Tydfil</option>--%>
                                                <%--<option value="3568">Midlothian</option>--%>
                                                <%--<option value="3569">Monmouthshire</option>--%>
                                                <%--<option value="3570">Moray</option>--%>
                                                <%--<option value="3571">Neath Port Talbot</option>--%>
                                                <%--<option value="3572">Newport</option>--%>
                                                <%--<option value="3573">Norfolk</option>--%>
                                                <%--<option value="3574">North Ayrshire</option>--%>
                                                <%--<option value="3575">North Lanarkshire</option>--%>
                                                <%--<option value="3576">North Yorkshire</option>--%>
                                                <%--<option value="3577">Northamptonshire</option>--%>
                                                <%--<option value="3578">Northumberland</option>--%>
                                                <%--<option value="3579">Nottinghamshire</option>--%>
                                                <%--<option value="3580">Orkney Islands</option>--%>
                                                <%--<option value="3581">Oxfordshire</option>--%>
                                                <%--<option value="3582">Pembrokeshire</option>--%>
                                                <%--<option value="3583">Perth and Kinross</option>--%>
                                                <%--<option value="3584">Powys</option>--%>
                                                <%--<option value="3585">Renfrewshire</option>--%>
                                                <%--<option value="3586">Rhondda Cynon Taff</option>--%>
                                                <%--<option value="3587">Rutland</option>--%>
                                                <%--<option value="3588">Scottish Borders</option>--%>
                                                <%--<option value="3589">Shetland Islands</option>--%>
                                                <%--<option value="3590">Shropshire</option>--%>
                                                <%--<option value="3591">Somerset</option>--%>
                                                <%--<option value="3592">South Ayrshire</option>--%>
                                                <%--<option value="3593">South Lanarkshire</option>--%>
                                                <%--<option value="3594">South Yorkshire</option>--%>
                                                <%--<option value="3595">Staffordshire</option>--%>
                                                <%--<option value="3596">Stirling</option>--%>
                                                <%--<option value="3597">Suffolk</option>--%>
                                                <%--<option value="3598">Surrey</option>--%>
                                                <%--<option value="3599">Swansea</option>--%>
                                                <%--<option value="3600">Torfaen</option>--%>
                                                <%--<option value="3601">Tyne and Wear</option>--%>
                                                <%--<option value="3602">Vale of Glamorgan</option>--%>
                                                <%--<option value="3603">Warwickshire</option>--%>
                                                <%--<option value="3604">West Dunbartonshire</option>--%>
                                                <%--<option value="3605">West Lothian</option>--%>
                                                <%--<option value="3606">West Midlands</option>--%>
                                                <%--<option value="3607">West Sussex</option>--%>
                                                <%--<option value="3608">West Yorkshire</option>--%>
                                                <%--<option value="3609">Western Isles</option>--%>
                                                <%--<option value="3610">Wiltshire</option>--%>
                                                <%--<option value="3611">Worcestershire</option>--%>
                                                <%--<option value="3612">Wrexham</option>--%>
                                            <%--</select>--%>
                                        <%--</div>--%>
                                        <%--<div class="checkbox">--%>
                                            <%--<label>--%>
                                                <%--<input type="checkbox" checked="checked" value="1" name="shipping_address">--%>
                                                <%--My delivery and billing addresses are the same.</label>--%>
                                        <%--</div>--%>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-truck"></i> 选择快递</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>尽管选，发货算我输</p>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" checked="checked" name="Free Shipping">
                                                    圆通 - ￥5.00</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="Flat Shipping Rate">
                                                    申通 - ￥6.00</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="Per Item Shipping Rate">
                                                    顺丰 - ￥10.00</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-credit-card"></i>支付方式</h4>
                                        </div>
                                        <div class="panel-body">
                                            <p>选择一个里面有钱能付的方式</p>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" checked="checked" name="Cash On Delivery">
                                                    货到付款</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="Bank Transfer">
                                                    银行卡</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="Paypal">
                                                    支付宝</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-ticket"></i>使用优惠券</h4>
                                        </div>
                                        <div class="panel-body">
                                            <label for="input-coupon" class="col-sm-3 control-label">输入优惠券码</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="input-coupon" placeholder="在此输入你的优惠券码" value="" name="coupon">
                                                <span class="input-group-btn">
                          <input type="button" class="btn btn-primary" data-loading-text="Loading..." id="button-coupon" value="使用优惠券">
                          </span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-gift"></i>使用代金券</h4>
                                        </div>
                                        <div class="panel-body">
                                            <label for="input-voucher" class="col-sm-3 control-label">输入代金券码</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="input-voucher" placeholder="在此输入你的代金券码" value="" name="voucher">
                                                <span class="input-group-btn">
                          <input type="submit" class="btn btn-primary" data-loading-text="Loading..." id="button-voucher" value="使用代金券">
                          </span> </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-shopping-cart"></i>购物车</h4>
                                        </div>
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <thead>
                                                    <tr>
                                                        <td class="text-center">图片</td>
                                                        <td class="text-left">商品名字</td>
                                                        <td class="text-left">数量</td>
                                                        <td class="text-right">单价</td>
                                                        <td class="text-right">小计</td>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${prod}" var="prod" varStatus="index">
                                                    <tr>
                                                        <td class="text-center"><a href="/product?proid=${prod.p_id}"><img src="/image/product/sony_vaio_1-50x75.jpg" alt="" title="" class="img-thumbnail"></a></td>
                                                        <td class="text-left"><a href="/product">${prod.p_name}</a></td>
                                                        <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                                                            <input type="text" name="quantity" value="${prod.count}" size="1" class="form-control">
                                                            <%--<span class="input-group-btn">--%>
                                    <%--<button type="submit" data-toggle="tooltip" title="Update" class="btn btn-primary"><i class="fa fa-refresh"></i></button>--%>
                                    <%--<button type="button" data-toggle="tooltip" title="Remove" class="btn btn-danger" onClick=""><i class="fa fa-times-circle"></i></button>--%>
                                    <%--</span>--%>
                                                        </div></td>
                                                        <td class="text-right">${prod.market_price}</td>
                                                        <td class="text-right">${prod.market_price*prod.count}</td>
                                                    </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                    <tfoot>
                                                    <%--<tr>--%>
                                                        <%--<td class="text-right" colspan="4"><strong>Sub-Total:</strong></td>--%>
                                                        <%--<td class="text-right">$750.00</td>--%>
                                                    <%--</tr>--%>
                                                    <%--<tr>--%>
                                                        <%--<td class="text-right" colspan="4"><strong>Flat Shipping Rate:</strong></td>--%>
                                                        <%--<td class="text-right">$5.00</td>--%>
                                                    <%--</tr>--%>
                                                    <%--<tr>--%>
                                                        <%--<td class="text-right" colspan="4"><strong>Eco Tax (-2.00):</strong></td>--%>
                                                        <%--<td class="text-right">$4.00</td>--%>
                                                    <%--</tr>--%>
                                                    <%--<tr>--%>
                                                        <%--<td class="text-right" colspan="4"><strong>VAT (20%):</strong></td>--%>
                                                        <%--<td class="text-right">$151.00</td>--%>
                                                    <%--</tr>--%>
                                                    <tr>
                                                        <td class="text-right" colspan="4"><strong>总计：</strong></td>
                                                        <td class="text-right">${allcout.count}</td>
                                                    </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><i class="fa fa-pencil"></i> 备注</h4>
                                        </div>
                                        <div class="panel-body">
                                            <textarea rows="4" class="form-control" id="confirm_comment" name="comments"></textarea>
                                            <br>
                                            <label class="control-label" for="confirm_agree">
                                                <input type="checkbox" checked="checked" value="1" required="" class="validate required" id="confirm_agree" name="confirm agree">
                                                <span>我已仔细阅读 <a class="agree" href="#"><b>雏蜂隐私条款</b></a></span> </label>
                                            <div class="buttons">
                                                <div class="pull-right">
                                                    <input type="hidden" value="${login_user.u_id}" name="u_id">
                                                    <input type="hidden" value="${allcout.count}" name="total">
                                                    <input type="submit" class="btn btn-primary" id="button-confirm" value="确认付款r">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
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
    <%--<!-- Custom Side Block End -->--%>
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
