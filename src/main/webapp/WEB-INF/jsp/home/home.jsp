<%--
  Created by IntelliJ IDEA.
  User: lukbo
  Date: 2017/7/16
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!-- CSS Part Start-->
    <%--<link rel="stylesheet" type="text/css" href="/js/bootstrap/css/bootstrap.min.css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="/css/font-awesome/css/font-awesome.min.css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="/css/stylesheet.css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="/css/owl.carousel.css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="/css/owl.transitions.css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="/css/responsive.css" />--%>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans' type='text/css'>
    <style type="text/css">@import url(/css/owl.carousel.css);</style>
    <style type="text/css">@import url(/css/font-awesome/css/font-awesome.min.css);</style>
    <style type="text/css">@import url(/css/owl.transitions.css);</style>
    <style type="text/css">@import url(/css/responsive.css);</style>
    <style type="text/css">@import url(/css/stylesheet.css);</style>
    <style type="text/css">@import url(/js/bootstrap/css/bootstrap.min.css);</style>

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
                                <li>
                                    <button class="currency-select btn btn-link btn-block" type="button" name="GBP">我的收藏</button>
                                </li>
                                <li>
                                    <button class="currency-select btn btn-link btn-block" type="button" name="USD">购物车</button>
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
                        <div id="logo"><a href="/Home"><img class="img-responsive" src="/image/logo.png" title="MarketShop" alt="MarketShop" /></a></div>
                    </div>
                    <!-- Logo End -->
                    <!-- Mini Cart Start-->
                    <div class="col-table-cell col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div id="cart">
                            <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="heading dropdown-toggle">
                                <span class="cart-icon pull-left flip"></span>
                                <span id="cart-total">2 item(s) - $1,132.00</span></button>
                            <ul class="dropdown-menu">
                                <li>
                                    <table class="table">
                                        <tbody>
                                        <tr>
                                            <td class="text-center"><a href="/product"><img class="img-thumbnail" title="Xitefun Causal Wear Fancy Shoes" alt="Xitefun Causal Wear Fancy Shoes" src="/image/product/sony_vaio_1-50x50.jpg"></a></td>
                                            <td class="text-left"><a href="/product">Xitefun Causal Wear Fancy Shoes</a></td>
                                            <td class="text-right">x 1</td>
                                            <td class="text-right">$902.00</td>
                                            <td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center"><a href="/product"><img class="img-thumbnail" title="Aspire Ultrabook Laptop" alt="Aspire Ultrabook Laptop" src="/image/product/samsung_tab_1-50x50.jpg"></a></td>
                                            <td class="text-left"><a href="/product">Aspire Ultrabook Laptop</a></td>
                                            <td class="text-right">x 1</td>
                                            <td class="text-right">$230.00</td>
                                            <td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                                <li>
                                    <div>
                                        <table class="table table-bordered">
                                            <tbody>
                                            <tr>
                                                <td class="text-right"><strong>Sub-Total</strong></td>
                                                <td class="text-right">$940.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right"><strong>Eco Tax (-2.00)</strong></td>
                                                <td class="text-right">$4.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right"><strong>VAT (20%)</strong></td>
                                                <td class="text-right">$188.00</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right"><strong>Total</strong></td>
                                                <td class="text-right">$1,132.00</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <p class="checkout"><a href="/cart" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> View Cart</a>&nbsp;&nbsp;&nbsp;<a href="/checkout" class="btn btn-primary"><i class="fa fa-share"></i> Checkout</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Mini Cart End-->
                    <!-- Search Start-->
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
        <!-- Header End-->
        <!-- Main Menu Start-->
        <div class="container">
            <nav id="menu" class="navbar">
                <div class="navbar-header"> <span class="visible-xs visible-sm"> Menu <b></b></span></div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a class="home_link" title="Home" href="/Home"><span>首页</span></a></li>
                        <li class="contact-link"><a href="/contact-us"></a></li>
                        <li class="mega-menu dropdown"><a>商品分类</a>
                            <div class="dropdown-menu">
                                <div class="column col-lg-2 col-md-3"><a href="/category">男装</a>
                                    <div>
                                        <ul>
                                            <li><a href="/category">外套 <span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">卫衣</a></li>
                                                        <li><a href="/category">夹克</a></li>
                                                        <li><a href="/category">羽绒服</a></li>
                                                        <li><a href="/category">西装</a></li>
                                                        <li><a href="/category">运动外套</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">上装<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">T恤 </a></li>
                                                        <li><a href="/category">衬衫</a></li>
                                                        <li><a href="/category">背心</a></li>
                                                        <li><a href="/category">长袖 </a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">下装<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">运动裤</a></li>
                                                        <li><a href="/category">牛仔裤</a></li>
                                                        <li><a href="/category">短裤</a></li>
                                                        <li><a href="/category">七分裤</a></li>
                                                    </ul>
                                                </div>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="/category">女装</a>
                                    <div>
                                        <ul>
                                            <li> <a href="/category">裙装 <span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">连衣裙 </a> </li>
                                                        <li> <a href="/category">背带裙</a> </li>
                                                        <li> <a href="/category">半身裙</a> </li>
                                                        <li> <a href="/category">A字群</a> </li>
                                                        <li> <a href="/category">短裙</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">上装<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">T恤</a> </li>
                                                        <li> <a href="/category">衬衫 </a> </li>
                                                        <li> <a href="/category">卫衣</a> </li>
                                                        <li> <a href="/category">皮衣</a> </li>
                                                        <li> <a href="/category">牛仔外套</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">裤装<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">牛仔裤</a></li>
                                                        <li> <a href="/category">休闲裤</a></li>
                                                        <li> <a href="/category">背带裤</a></li>
                                                        <li> <a href="/category">铅笔裤</a></li>
                                                        <li> <a href="/category">短裤</a></li>
                                                        <li> <a href="/category">运动裤</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">特色装<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">婚纱</a></li>
                                                        <li><a href="/category">礼服</a></li>
                                                        <li><a href="/category">旗袍</a></li>
                                                        <li><a href="/category">汉服</a></li>
                                                        <li><a href="/category">职业装</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"><a href="/category">鞋靴</a>
                                    <div>
                                        <ul>
                                            <li><a href="/category"> 男鞋<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">帆布鞋</a> </li>
                                                        <li><a href="/category">运动鞋</a> </li>
                                                        <li><a href="/category">板鞋</a> </li>
                                                        <li><a href="/category">皮鞋</a> </li>
                                                        <li><a href="/category">凉鞋</a> </li>
                                                        <li><a href="/category">人字拖</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">女鞋<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">高跟鞋</a></li>
                                                        <li><a href="/category">运动鞋</a></li>
                                                        <li><a href="/category">帆布鞋</a></li>
                                                        <li><a href="/category">凉拖平底单鞋</a></li>
                                                        <li><a href="/category">坡跟</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="/category">手机数码</a>
                                    <div>
                                        <ul>
                                            <li> <a href="/category">手机<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">老年机</a> </li>
                                                        <li> <a href="/category">小米</a> </li>
                                                        <li> <a href="/category">华为</a> </li>
                                                        <li> <a href="/category">三星</a> </li>
                                                        <li> <a href="/category">魅族</a> </li>
                                                        <li> <a href="/category">OPPO</a> </li>
                                                        <li> <a href="/category">苹果</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">笔记本电脑<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">联想</a> </li>
                                                        <li> <a href="/category">戴尔</a> </li>
                                                        <li> <a href="/category">华硕</a> </li>
                                                        <li> <a href="/category">ThinkPad</a> </li>
                                                        <li> <a href="/category">苹果</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">数码相机<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">单反相机</a></li>
                                                        <li> <a href="/category">数码相机</a></li>
                                                        <li> <a href="/category">摄像机</a></li>
                                                        <li> <a href="/category">长焦相机</a></li>
                                                        <li> <a href="/category">拍立得</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">电脑配件<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">键盘</a></li>
                                                        <li><a href="/category">鼠标</a></li>
                                                        <li><a href="/category">主板</a></li>
                                                        <li><a href="/category">硬盘</a></li>
                                                        <li><a href="/category">显卡</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">3C数码配件<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">手机保护壳</a></li>
                                                        <li><a href="/category">移动电源</a></li>
                                                        <li><a href="/category">手机数据线</a></li>
                                                        <li><a href="/category">U盘</a></li>
                                                        <li><a href="/category">手机储存卡</a></li>
                                                        <li><a href="/category">耳机</a></li>
                                                        <li><a href="/category">自拍杆</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="/category">食品</a>
                                    <div>
                                        <ul>
                                            <li> <a href="/category">休闲零食<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">坚果</a> </li>
                                                        <li> <a href="/category">糖果</a> </li>
                                                        <li> <a href="/category">牛肉干</a> </li>
                                                        <li> <a href="/category">巧克力</a> </li>
                                                        <li> <a href="/category">膨化食品</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">水果<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">苹果</a> </li>
                                                        <li> <a href="/category">香蕉</a> </li>
                                                        <li> <a href="/category">葡萄</a> </li>
                                                        <li> <a href="/category">梨子</a> </li>
                                                        <li> <a href="/category">樱桃</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">茶酒饮品<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">饮料</a></li>
                                                        <li> <a href="/category">牛奶</a></li>
                                                        <li> <a href="/category">酒水</a></li>
                                                        <li> <a href="/category">茶叶</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">粮油干货<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">食用油</a></li>
                                                        <li><a href="/category">大米</a></li>
                                                        <li><a href="/category">老干妈</a></li>
                                                        <li><a href="/category">挂面</a></li>
                                                        <li><a href="/category">杂粮</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">保健滋补<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">蜂蜜</a></li>
                                                        <li><a href="/category">枸杞</a></li>
                                                        <li><a href="/category">蛋白粉</a></li>
                                                        <li><a href="/category">膳食纤维</a></li>
                                                        <li><a href="/category">胶原蛋白</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="/category">户外运动</a>
                                    <div>
                                        <ul>
                                            <li><a href="/category">健身器材<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">哑铃</a></li>
                                                        <li><a href="/category">跑步机</a></li>
                                                        <li><a href="/category">沙袋</a></li>
                                                        <li><a href="/category">呼啦圈</a></li>
                                                        <li><a href="/category">拉力器</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">球类用品<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">羽毛球</a></li>
                                                        <li><a href="/category">羽毛球拍</a></li>
                                                        <li><a href="/category">乒乓球</a></li>
                                                        <li><a href="/category">乒乓球拍</a></li>
                                                        <li><a href="/category">网球</a></li>
                                                        <li><a href="/category">网球拍</a></li>
                                                        <li><a href="/category">篮球</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">骑行<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">自行车</a></li>
                                                        <li><a href="/category">骑行头盔</a></li>
                                                        <li><a href="/category">骑行手套</a></li>
                                                        <li><a href="/category">骑行眼镜</a></li>
                                                        <li><a href="/category">打气筒</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">户外登山<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">帐篷</a></li>
                                                        <li><a href="/category">睡袋</a></li>
                                                        <li><a href="/category">登山杖</a></li>
                                                        <li><a href="/category">吊床</a></li>
                                                        <li><a href="/category">手电筒</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">运动配件<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">背包</a></li>
                                                        <li><a href="/category">头巾</a></li>
                                                        <li><a href="/category">护具</a></li>
                                                        <li><a href="/category">手套</a></li>
                                                        <li><a href="/category">腰包</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="/category">家电</a>
                                    <div>
                                        <ul>
                                            <li> <a href="/category">大家电<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">洗衣机</a> </li>
                                                        <li> <a href="/category">平板电视</a> </li>
                                                        <li> <a href="/category">冰箱</a> </li>
                                                        <li> <a href="/category">空调</a> </li>
                                                        <li> <a href="/category">油烟机</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">厨房电器<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">电饭煲</a> </li>
                                                        <li> <a href="/category">电热水壶</a> </li>
                                                        <li> <a href="/category">电磁炉</a> </li>
                                                        <li> <a href="/category">豆浆机</a> </li>
                                                        <li> <a href="/category">微波炉</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">生活电器<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">电风扇</a></li>
                                                        <li> <a href="/category">电熨斗</a></li>
                                                        <li> <a href="/category">空气净化器</a></li>
                                                        <li> <a href="/category">电暖气</a></li>
                                                        <li> <a href="/category">加湿器</a></li>
                                                        <li> <a href="/category">电热毯</a></li>
                                                        <li> <a href="/category">电子驱蚊器</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">个人护理<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">剃须刀</a></li>
                                                        <li><a href="/category">牙刷</a></li>
                                                        <li><a href="/category">电吹风</a></li>
                                                        <li><a href="/category">体重秤</a></li>
                                                        <li><a href="/category">直发器</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">办公设备<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">投影仪</a></li>
                                                        <li><a href="/category">打印机</a></li>
                                                        <li><a href="/category">点钞机</a></li>
                                                        <li><a href="/category">收款机</a></li>
                                                        <li><a href="/category">保险箱</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="/category">文化用品</a>
                                    <div>
                                        <ul>
                                            <li> <a href="/category">学习用品<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">笔袋</a> </li>
                                                        <li> <a href="/category">铅笔</a> </li>
                                                        <li> <a href="/category">钢笔</a> </li>
                                                        <li> <a href="/category">橡皮</a> </li>
                                                        <li> <a href="/category">中性笔</a> </li>
                                                        <li> <a href="/category">记事本</a> </li>
                                                        <li> <a href="/category">字帖</a> </li>
                                                        <li> <a href="/category">毛笔</a> </li>
                                                        <li> <a href="/category">墨水</a> </li>
                                                        <li> <a href="/category">尺子</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">图书<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">中外名著</a> </li>
                                                        <li> <a href="/category">教辅资料</a> </li>
                                                        <li> <a href="/category">儿童读物</a> </li>
                                                        <li> <a href="/category">杂志</a> </li>
                                                        <li> <a href="/category">小说</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">乐器<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">吉他</a></li>
                                                        <li> <a href="/category">电子琴</a></li>
                                                        <li> <a href="/category">竖笛</a></li>
                                                        <li> <a href="/category">口琴</a></li>
                                                        <li> <a href="/category">架子鼓</a></li>
                                                        <li> <a href="/category">小提琴</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="column col-lg-2 col-md-3"> <a href="/category">母婴用品</a>
                                    <div>
                                        <ul>
                                            <li> <a href="/category">童装<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">连体衣</a> </li>
                                                        <li> <a href="/category">外套</a> </li>
                                                        <li> <a href="/category">上衣</a> </li>
                                                        <li> <a href="/category">裤子</a> </li>
                                                        <li> <a href="/category">袜子</a> </li>
                                                        <li> <a href="/category">亲子装</a> </li>
                                                        <li> <a href="/category">连衣裙</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">童鞋<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">学步鞋</a> </li>
                                                        <li> <a href="/category">靴子</a> </li>
                                                        <li> <a href="/category">运动鞋</a> </li>
                                                        <li> <a href="/category">皮鞋</a> </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li> <a href="/category">儿童玩具<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li> <a href="/category">儿童乐器</a></li>
                                                        <li> <a href="/category">积木</a></li>
                                                        <li> <a href="/category">绘画用品</a></li>
                                                        <li> <a href="/category">毛绒玩具</a></li>
                                                        <li> <a href="/category">扭扭车</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">生活用品<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">奶粉</a></li>
                                                        <li><a href="/category">纸尿裤</a></li>
                                                        <li><a href="/category">奶瓶</a></li>
                                                        <li><a href="/category">推车</a></li>
                                                        <li><a href="/category">背带</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="/category">孕妇专区<span>&rsaquo;</span></a>
                                                <div class="dropdown-menu">
                                                    <ul>
                                                        <li><a href="/category">哺乳装</a></li>
                                                        <li><a href="/category">卫衣</a></li>
                                                        <li><a href="/category">孕妇裤</a></li>
                                                        <li><a href="/category">护腰枕</a></li>
                                                        <li><a href="/category">防辐射群</a></li>
                                                    </ul>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="contact-link"><a href="/contact-us"></a></li>
                        <li class="menu_brands dropdown"><a href="#">热门商品</a>
                            <div class="dropdown-menu">
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/apple_logo-60x60.jpg" title="Apple" alt="Apple" /></a><a href="#">Apple</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/canon_logo-60x60.jpg" title="Canon" alt="Canon" /></a><a href="#">Canon</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"> <a href="#"><img src="/image/product/hp_logo-60x60.jpg" title="Hewlett-Packard" alt="Hewlett-Packard" /></a><a href="#">Hewlett-Packard</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/htc_logo-60x60.jpg" title="HTC" alt="HTC" /></a><a href="#">HTC</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/palm_logo-60x60.jpg" title="Palm" alt="Palm" /></a><a href="#">Palm</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/sony_logo-60x60.jpg" title="Sony" alt="Sony" /></a><a href="#">Sony</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/canon_logo-60x60.jpg" title="test" alt="test" /></a><a href="#">test</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/apple_logo-60x60.jpg" title="test 3" alt="test 3" /></a><a href="#">test 3</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/canon_logo-60x60.jpg" title="test 5" alt="test 5" /></a><a href="#">test 5</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/canon_logo-60x60.jpg" title="test 6" alt="test 6" /></a><a href="#">test 6</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/apple_logo-60x60.jpg" title="test 7" alt="test 7" /></a><a href="#">test 7</a> </div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/canon_logo-60x60.jpg" title="test1" alt="test1" /></a><a href="#">test1</a></div>
                                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="/image/product/apple_logo-60x60.jpg" title="test2" alt="test2" /></a><a href="#">test2</a></div>
                            </div>
                        </li>
                        <li class="contact-link"><a href="/contact-us"></a></li>
                        <li class="dropdown information-link"><a>站内导航</a>
                            <div class="dropdown-menu">
                                <ul>
                                    <li><a href="/login">登录</a></li>
                                    <li><a href="/register">注册</a></li>
                                    <li><a href="/category">商品分类</a></li>
                                    <li><a href="/product">购物车</a></li>
                                    <li><a href="/checkout">联系客服</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="contact-link"><a href="/contact-us"></a></li>
                        <li class="contact-link"><a href="/contact-us">联系我们</a></li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- Main Menu End-->
    </div>
    <div id="container">
        <div class="container">
            <div class="row">
                <!-- Left Part Start-->
                <aside id="column-left" class="col-sm-3 hidden-xs">
                    <h3 class="subtitle">Categories</h3>
                    <div class="box-category">
                        <ul id="cat_accordion">
                            <li><a href="/category">Clothing</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Men</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories New</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Women</a></li>
                                    <li><a href="/category">Girls</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories New</a></li>
                                            <li><a href="/category">Sub Categories New</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Boys</a></li>
                                    <li><a href="/category">Baby</a></li>
                                    <li><a href="/category">Accessories</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="/category">Electronics</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Laptops</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories New</a></li>
                                        </ul>
                                    </li>
                                    <li class="custom_id68"><a href="/category">Desktops</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories New</a></li>
                                            <li><a href="/category">Sub Categories New</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Cameras</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Mobile Phones</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">New Sub Categories</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">TV &amp; Home Audio</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories New</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">MP3 Players</a></li>
                                </ul>
                            </li>
                            <li><a href="/category">Shoes</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Men</a></li>
                                    <li><a href="/category">Women</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Girls</a></li>
                                    <li><a href="/category">Boys</a></li>
                                    <li><a href="/category">Baby</a></li>
                                    <li><a href="/category">Accessories</a><span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">Sub Categories</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="/category">Watches</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Men's Watches</a></li>
                                    <li><a href="/category">Women's Watches</a></li>
                                    <li><a href="/category">Kids' Watches</a></li>
                                    <li><a href="/category">Accessories</a></li>
                                </ul>
                            </li>
                            <li><a href="/category">Jewellery</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Silver</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                            <li><a href="/category">New Sub Categories</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Gold</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">test 1</a></li>
                                            <li><a href="/category">test 2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Diamond</a></li>
                                    <li><a href="/category">Pearl</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Men's Jewellery</a></li>
                                    <li><a href="/category">Children's Jewellery</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">New Sub Categories</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="/category">Health &amp; Beauty</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Perfumes</a></li>
                                    <li><a href="/category">Makeup</a></li>
                                    <li><a href="/category">Sun Care</a></li>
                                    <li><a href="/category">Skin Care</a></li>
                                    <li><a href="/category">Eye Care</a></li>
                                    <li><a href="/category">Hair Care</a></li>
                                </ul>
                            </li>
                            <li><a href="/category">Kids &amp; Babies</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Toys</a></li>
                                    <li><a href="/category">Games</a> <span class="down"></span>
                                        <ul>
                                            <li><a href="/category">test 25</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/category">Puzzles</a></li>
                                    <li><a href="/category">Hobbies</a></li>
                                    <li><a href="/category">Strollers</a></li>
                                    <li><a href="/category">Health &amp; Safety</a></li>
                                </ul>
                            </li>
                            <li><a href="/category">Sports</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Cycling</a></li>
                                    <li><a href="/category">Running</a></li>
                                    <li><a href="/category">Swimming</a></li>
                                    <li><a href="/category">Football</a></li>
                                    <li><a href="/category">Golf</a></li>
                                    <li><a href="/category">Windsurfing</a></li>
                                </ul>
                            </li>
                            <li><a href="/category">Home &amp; Garden</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Bedding</a></li>
                                    <li><a href="/category">Food</a></li>
                                    <li><a href="/category">Furniture</a></li>
                                    <li><a href="/category">Kitchen</a></li>
                                    <li><a href="/category">Lighting</a></li>
                                    <li><a href="/category">Tools</a></li>
                                </ul>
                            </li>
                            <li><a href="/category">Wines &amp; Spirits</a> <span class="down"></span>
                                <ul>
                                    <li><a href="/category">Wine</a></li>
                                    <li><a href="/category">Whiskey</a></li>
                                    <li><a href="/category">Vodka</a></li>
                                    <li><a href="/category">Liqueurs</a></li>
                                    <li><a href="/category">Beer</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <h3 class="subtitle">Bestsellers</h3>
                    <div class="side-item">
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/apple_cinema_30-50x50.jpg" alt="Brand Fashion Cotton T-Shirt" title="Brand Fashion Cotton T-Shirt" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Brand Fashion Cotton T-Shirt</a></h4>
                                <p class="price"><span class="price-new">$110.00</span> <span class="price-old">$122.00</span> <span class="saving">-10%</span></p>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/iphone_1-50x50.jpg" alt="iPhone5" title="iPhone5" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">iPhone5</a></h4>
                                <p class="price"> $123.20 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span></div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_1-50x50.jpg" alt="Ideapad Yoga 13-59341124 Laptop" title="Ideapad Yoga 13-59341124 Laptop" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Ideapad Yoga 13-59341124 Laptop</a></h4>
                                <p class="price"> $2.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/sony_vaio_1-50x50.jpg" alt="Xitefun Causal Wear Fancy Shoes" title="Xitefun Causal Wear Fancy Shoes" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Xitefun Causal Wear Fancy Shoes</a></h4>
                                <p class="price"> <span class="price-new">$902.00</span> <span class="price-old">$1,202.00</span> <span class="saving">-25%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/FinePix-Long-Zoom-Camera-50x50.jpg" alt="FinePix S8400W Long Zoom Camera" title="FinePix S8400W Long Zoom Camera" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">FinePix S8400W Long Zoom Camera</a></h4>
                                <p class="price">$122.00</p>
                            </div>
                        </div>
                    </div>
                    <h3 class="subtitle">Specials</h3>
                    <div class="side-item">
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_pro_1-50x50.jpg" alt=" Strategies for Acquiring Your Own Laptop " title=" Strategies for Acquiring Your Own Laptop " class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Strategies for Acquiring Your Own Laptop</a></h4>
                                <p class="price"> <span class="price-new">$1,400.00</span> <span class="price-old">$1,900.00</span> <span class="saving">-26%</span> </p>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/samsung_tab_1-50x50.jpg" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Aspire Ultrabook Laptop</a></h4>
                                <p class="price"> <span class="price-new">$230.00</span> <span class="price-old">$241.99</span> <span class="saving">-5%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/apple_cinema_30-50x50.jpg" alt="Brand Fashion Cotton T-Shirt" title="Brand Fashion Cotton T-Shirt" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="http://demo.harnishdesign.net/opencart/marketshop/v1/index.php?route=product/product&amp;product_id=42">Brand Fashion Cotton T-Shirt</a></h4>
                                <p class="price"> <span class="price-new">$110.00</span> <span class="price-old">$122.00</span> <span class="saving">-10%</span> </p>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_1-50x50.jpg" alt="Digital Camera for Elderly" title="Digital Camera for Elderly" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Digital Camera for Elderly</a></h4>
                                <p class="price"> <span class="price-new">$92.00</span> <span class="price-old">$98.00</span> <span class="saving">-6%</span> </p>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_5-50x50.jpg" alt="Hair Care Products" title="Hair Care Products" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Hair Care Products</a></h4>
                                <p class="price"> <span class="price-new">$66.80</span> <span class="price-old">$90.80</span> <span class="saving">-27%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_air_1-50x50.jpg" alt="Laptop Silver black" title="Laptop Silver black" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Laptop Silver black</a></h4>
                                <p class="price"> <span class="price-new">$1,142.00</span> <span class="price-old">$1,202.00</span> <span class="saving">-5%</span> </p>
                            </div>
                        </div>
                    </div>
                    <div class="list-group">
                        <h3 class="subtitle">Custom Content</h3>
                        <p>This is a CMS block edited from admin. You can insert any content (HTML, Text, Images) Here. </p>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
                        <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                    </div>
                    <div class="banner owl-carousel">
                        <div class="item"> <a href="#"><img src="/image/banner/small-banner1-265x350.jpg" alt="small banner" class="img-responsive" /></a> </div>
                        <div class="item"> <a href="#"><img src="/image/banner/small-banner-265x350.jpg" alt="small banner1" class="img-responsive" /></a> </div>
                    </div>
                    <h3 class="subtitle">Latest</h3>
                    <div class="side-item">
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/iphone_6-50x50.jpg" alt="Hair Care Cream for Men" title="Hair Care Cream for Men" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Hair Care Cream for Men</a></h4>
                                <p class="price"> $134.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_5-50x50.jpg" alt="Hair Care Products" title="Hair Care Products" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Hair Care Products</a></h4>
                                <p class="price"> <span class="price-new">$66.80</span> <span class="price-old">$90.80</span> <span class="saving">-27%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_4-50x50.jpg" alt="Bed Head Foxy Curls Contour Cream" title="Bed Head Foxy Curls Contour Cream" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Bed Head Foxy Curls Contour Cream</a></h4>
                                <p class="price"> $88.00 </p>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_5-50x50.jpg" alt="Shower Gel Perfume for Women" title="Shower Gel Perfume for Women" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Shower Gel Perfume for Women</a></h4>
                                <p class="price"> <span class="price-new">$95.00</span> <span class="price-old">$99.00</span> <span class="saving">-4%</span> </p>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_4-50x50.jpg" alt="Perfumes for Women" title="Perfumes for Women" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Perfumes for Women</a></h4>
                                <p class="price"> $85.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_3-50x50.jpg" alt="Make Up for Naturally Beautiful Better" title="Make Up for Naturally Beautiful Better" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Make Up for Naturally Beautiful Better</a></h4>
                                <p class="price"> $123.00 </p>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_2-50x50.jpg" alt="Pnina Tornai Perfume" title="Pnina Tornai Perfume" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Pnina Tornai Perfume</a></h4>
                                <p class="price"> $110.00 </p>
                            </div>
                        </div>
                    </div>
                </aside>
                <!-- Left Part End-->
                <!--Middle Part Start-->
                <div id="content" class="col-sm-9">
                    <!-- Slideshow Start-->
                    <div class="slideshow single-slider owl-carousel">
                        <div class="item"> <a href="#"><img class="img-responsive" src="/image/slider/banner-1.jpg" alt="banner 1" /></a> </div>
                        <div class="item"> <a href="#"><img class="img-responsive" src="/image/slider/banner-2.jpg" alt="banner 2" /></a> </div>
                        <div class="item"> <a href="#"><img class="img-responsive" src="/image/slider/banner-3.jpg" alt="banner 3" /></a> </div>
                    </div>
                    <!-- Slideshow End-->
                    <!-- Featured Product Start-->
                    <h3 class="subtitle">Featured</h3>
                    <div class="owl-carousel product_carousel">
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/apple_cinema_30-200x200.jpg" alt="Brand Fashion Cotton T-Shirt" title="Brand Fashion Cotton T-Shirt" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Brand Fashion Cotton T-Shirt</a></h4>
                                <p class="price"><span class="price-new">$110.00</span><span class="price-old">$122.00</span><span class="saving">-10%</span></p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick="cart.add('42');"><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Compare this Product" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/samsung_tab_1-200x200.jpg" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Aspire Ultrabook Laptop</a></h4>
                                <p class="price"> <span class="price-new">$230.00</span> <span class="price-old">$241.99</span> <span class="saving">-5%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick="cart.add('49');"><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Compare this Product" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/sony_vaio_1-200x200.jpg" alt="Xitefun Causal Wear Fancy Shoes" title="Xitefun Causal Wear Fancy Shoes" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Xitefun Causal Wear Fancy Shoes</a></h4>
                                <p class="price"> <span class="price-new">$902.00</span> <span class="price-old">$1,202.00</span> <span class="saving">-25%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick="cart.add('46');"><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Compare this Product" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_1-200x200.jpg" alt="Ideapad Yoga 13-59341124 Laptop" title="Ideapad Yoga 13-59341124 Laptop" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Ideapad Yoga 13-59341124 Laptop</a></h4>
                                <p class="price"> $2.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick="cart.add('43');"><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Compare this Product" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/iphone_1-200x200.jpg" alt="iPhone5" title="iPhone5" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">iPhone5</a></h4>
                                <p class="price"> $123.20 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Compare this Product" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb clearfix">
                            <div class="image"><a href="/product"><img src="/image/product/canon_eos_5d_1-200x200.jpg" alt="Long Sleeve Shirt Fashion Men" title="Long Sleeve Shirt Fashion Men" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Long Sleeve Shirt Fashion Men</a></h4>
                                <p class="price"> <span class="price-new">$98.00</span> <span class="price-old">$122.00</span> <span class="saving">-20%</span> </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Compare this Product" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Featured Product End-->
                    <!-- Banner Start-->
                    <div class="marketshop-banner">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"><a href="#"><img src="/image/banner/sample-banner-3-400x200.jpg" alt="Sample Banner 3" title="Sample Banner 3" /></a></div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"><a href="#"><img src="/image/banner/sample-banner-1-400x200.jpg" alt="Sample Banner" title="Sample Banner" /></a></div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"><a href="#"><img src="/image/banner/sample-banner-2-400x200.jpg" alt="Sample Banner 2" title="Sample Banner 2" /></a></div>
                        </div>
                    </div>
                    <!-- Banner End-->
                    <!-- Categories Product Slider Start-->
                    <div class="category-module" id="latest_category">
                        <h3 class="subtitle">Electronics - <a class="viewall" href="category.tpl">view all</a></h3>
                        <div class="category-module-content">
                            <ul id="sub-cat" class="tabs">
                                <li><a href="#tab-cat1">Laptops</a></li>
                                <li><a href="#tab-cat2">Desktops</a></li>
                                <li><a href="#tab-cat3">Cameras</a></li>
                                <li><a href="#tab-cat4">Mobile Phones</a></li>
                                <li><a href="#tab-cat5">TV &amp; Home Audio</a></li>
                                <li><a href="#tab-cat6">MP3 Players</a></li>
                            </ul>
                            <div id="tab-cat1" class="tab_content">
                                <div class="owl-carousel latest_category_tabs">
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/samsung_tab_1-200x200.jpg" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Aspire Ultrabook Laptop</a></h4>
                                            <p class="price"> <span class="price-new">$230.00</span> <span class="price-old">$241.99</span> <span class="saving">-5%</span> </p>
                                            <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/macbook_pro_1-200x200.jpg" alt=" Strategies for Acquiring Your Own Laptop " title=" Strategies for Acquiring Your Own Laptop " class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product"> Strategies for Acquiring Your Own Laptop </a></h4>
                                            <p class="price"> <span class="price-new">$1,400.00</span> <span class="price-old">$1,900.00</span> <span class="saving">-26%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/macbook_air_1-200x200.jpg" alt="Laptop Silver black" title="Laptop Silver black" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Laptop Silver black</a></h4>
                                            <p class="price"> <span class="price-new">$1,142.00</span> <span class="price-old">$1,202.00</span> <span class="saving">-5%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/macbook_1-200x200.jpg" alt="Ideapad Yoga 13-59341124 Laptop" title="Ideapad Yoga 13-59341124 Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Ideapad Yoga 13-59341124 Laptop</a></h4>
                                            <p class="price"> $2.00 </p>
                                            <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_shuffle_1-200x200.jpg" alt="Hp Pavilion G6 2314ax Notebok Laptop" title="Hp Pavilion G6 2314ax Notebok Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Hp Pavilion G6 2314ax Notebok Laptop</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_touch_1-200x200.jpg" alt="Samsung Galaxy S4" title="Samsung Galaxy S4" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Samsung Galaxy S4</a></h4>
                                            <p class="price"> <span class="price-new">$62.00</span> <span class="price-old">$122.00</span> <span class="saving">-50%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-cat2" class="tab_content">
                                <div class="owl-carousel latest_category_tabs">
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_shuffle_1-200x200.jpg" alt="Hp Pavilion G6 2314ax Notebok Laptop" title="Hp Pavilion G6 2314ax Notebok Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Hp Pavilion G6 2314ax Notebok Laptop</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-cat3" class="tab_content">
                                <div class="owl-carousel latest_category_tabs">
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/FinePix-Long-Zoom-Camera-200x200.jpg" alt="FinePix S8400W Long Zoom Camera" title="FinePix S8400W Long Zoom Camera" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">FinePix S8400W Long Zoom Camera</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/nikon_d300_1-200x200.jpg" alt="Digital Camera for Elderly" title="Digital Camera for Elderly" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Digital Camera for Elderly</a></h4>
                                            <p class="price"> <span class="price-new">$92.00</span> <span class="price-old">$98.00</span> <span class="saving">-6%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-cat4" class="tab_content">
                                <div class="owl-carousel latest_category_tabs">
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/samsung_tab_1-200x200.jpg" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Aspire Ultrabook Laptop</a></h4>
                                            <p class="price"> <span class="price-new">$230.00</span> <span class="price-old">$241.99</span> <span class="saving">-5%</span> </p>
                                            <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/iphone_1-200x200.jpg" alt="iPhone5" title="iPhone5" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">iPhone5</a></h4>
                                            <p class="price"> $123.20 </p>
                                            <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_touch_1-200x200.jpg" alt="Samsung Galaxy S4" title="Samsung Galaxy S4" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Samsung Galaxy S4</a></h4>
                                            <p class="price"> <span class="price-new">$62.00</span> <span class="price-old">$122.00</span> <span class="saving">-50%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/palm_treo_pro_1-200x200.jpg" alt="HTC M7 with Stunning Looks" title="HTC M7 with Stunning Looks" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">HTC M7 with Stunning Looks</a></h4>
                                            <p class="price"> $337.99 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-cat5" class="tab_content">
                                <div class="owl-carousel latest_category_tabs">
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/samsung_tab_1-200x200.jpg" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Aspire Ultrabook Laptop</a></h4>
                                            <p class="price"> <span class="price-new">$230.00</span> <span class="price-old">$241.99</span> <span class="saving">-5%</span> </p>
                                            <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_classic_1-200x200.jpg" alt="Portable Mp3 Player" title="Portable Mp3 Player" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Portable Mp3 Player</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/macbook_pro_1-200x200.jpg" alt=" Strategies for Acquiring Your Own Laptop " title=" Strategies for Acquiring Your Own Laptop " class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product"> Strategies for Acquiring Your Own Laptop </a></h4>
                                            <p class="price"> <span class="price-new">$1,400.00</span> <span class="price-old">$1,900.00</span> <span class="saving">-26%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/macbook_air_1-200x200.jpg" alt="Laptop Silver black" title="Laptop Silver black" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Laptop Silver black</a></h4>
                                            <p class="price"> <span class="price-new">$1,142.00</span> <span class="price-old">$1,202.00</span> <span class="saving">-5%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/macbook_1-200x200.jpg" alt="Ideapad Yoga 13-59341124 Laptop" title="Ideapad Yoga 13-59341124 Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Ideapad Yoga 13-59341124 Laptop</a></h4>
                                            <p class="price"> $2.00 </p>
                                            <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_nano_1-200x200.jpg" alt="Mp3 Player" title="Mp3 Player" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Mp3 Player</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/FinePix-Long-Zoom-Camera-200x200.jpg" alt="FinePix S8400W Long Zoom Camera" title="FinePix S8400W Long Zoom Camera" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">FinePix S8400W Long Zoom Camera</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_shuffle_1-200x200.jpg" alt="Hp Pavilion G6 2314ax Notebok Laptop" title="Hp Pavilion G6 2314ax Notebok Laptop" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Hp Pavilion G6 2314ax Notebok Laptop</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick="cart.add('34');"><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick="wishlist.add('34');"><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick="compare.add('34');"><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_touch_1-200x200.jpg" alt="Samsung Galaxy S4" title="Samsung Galaxy S4" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Samsung Galaxy S4</a></h4>
                                            <p class="price"> <span class="price-new">$62.00</span> <span class="price-old">$122.00</span> <span class="saving">-50%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/nikon_d300_1-200x200.jpg" alt="Digital Camera for Elderly" title="Digital Camera for Elderly" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Digital Camera for Elderly</a></h4>
                                            <p class="price"> <span class="price-new">$92.00</span> <span class="price-old">$98.00</span> <span class="saving">-6%</span> </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-cat6" class="tab_content">
                                <div class="owl-carousel latest_category_tabs">
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_classic_1-200x200.jpg" alt="Portable Mp3 Player" title="Portable Mp3 Player" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Portable Mp3 Player</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick="cart.add('48');"><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-thumb">
                                        <div class="image"><a href="/product"><img src="/image/product/ipod_nano_1-200x200.jpg" alt="Mp3 Player" title="Mp3 Player" class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <h4><a href="/product">Mp3 Player</a></h4>
                                            <p class="price"> $122.00 </p>
                                        </div>
                                        <div class="button-group">
                                            <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                            <div class="add-to-links">
                                                <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                                <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Categories Product Slider End-->
                    <!-- Banner Start -->
                    <div class="marketshop-banner">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><a href="#"><img src="/image/banner/sample-banner-4-400x150.jpg" alt="2 Block Banner" title="2 Block Banner" /></a></div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"><a href="#"><img src="/image/banner/sample-banner-5-400x150.jpg" alt="2 Block Banner 1" title="2 Block Banner 1" /></a></div>
                        </div>
                    </div>
                    <!-- Banner End -->
                    <!-- Categories Product Slider Start -->
                    <h3 class="subtitle">Health &amp; Beauty - <a class="viewall" href="/category">view all</a></h3>
                    <div class="owl-carousel latest_category_carousel">
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/iphone_6-200x200.jpg" alt="Hair Care Cream for Men" title="Hair Care Cream for Men" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Hair Care Cream for Men</a></h4>
                                <p class="price"> $134.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_5-200x200.jpg" alt="Hair Care Products" title="Hair Care Products" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Hair Care Products</a></h4>
                                <p class="price"> <span class="price-new">$66.80</span> <span class="price-old">$90.80</span> <span class="saving">-27%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_4-200x200.jpg" alt="Bed Head Foxy Curls Contour Cream" title="Bed Head Foxy Curls Contour Cream" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Bed Head Foxy Curls Contour Cream</a></h4>
                                <p class="price"> $88.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href=""><img src="/image/product/macbook_5-200x200.jpg" alt="Shower Gel Perfume for Women" title="Shower Gel Perfume for Women" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Shower Gel Perfume for Women</a></h4>
                                <p class="price"> <span class="price-new">$95.00</span> <span class="price-old">$99.00</span> <span class="saving">-4%</span> </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick="cart.add('61');"><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick="wishlist.add('61');"><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick="compare.add('61');"><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_4-200x200.jpg" alt="Perfumes for Women" title="Perfumes for Women" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Perfumes for Women</a></h4>
                                <p class="price"> $85.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_3-200x200.jpg" alt="Make Up for Naturally Beautiful Better" title="Make Up for Naturally Beautiful Better" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Make Up for Naturally Beautiful Better</a></h4>
                                <p class="price"> $123.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_2-200x200.jpg" alt="Pnina Tornai Perfume" title="Pnina Tornai Perfume" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Pnina Tornai Perfume</a></h4>
                                <p class="price"> $110.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Categories Product Slider End -->
                    <!-- Brand Product Slider Start-->
                    <h3 class="subtitle">Apple - <a class="viewall" href="/category">view all</a></h3>
                    <div class="owl-carousel latest_brands_carousel">
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/iphone_6-200x200.jpg" alt="Hair Care Cream for Men" title="Hair Care Cream for Men" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Hair Care Cream for Men</a></h4>
                                <p class="price"> $134.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_5-200x200.jpg" alt="Hair Care Products" title="Hair Care Products" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Hair Care Products</a></h4>
                                <p class="price"> <span class="price-new">$66.80</span> <span class="price-old">$90.80</span> <span class="saving">-27%</span> </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/nikon_d300_4-200x200.jpg" alt="Bed Head Foxy Curls Contour Cream" title="Bed Head Foxy Curls Contour Cream" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Bed Head Foxy Curls Contour Cream</a></h4>
                                <p class="price"> $88.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_5-200x200.jpg" alt="Shower Gel Perfume for Women" title="Shower Gel Perfume for Women" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Shower Gel Perfume for Women</a></h4>
                                <p class="price"> <span class="price-new">$95.00</span> <span class="price-old">$99.00</span> <span class="saving">-4%</span> </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_4-200x200.jpg" alt="Perfumes for Women" title="Perfumes for Women" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Perfumes for Women</a></h4>
                                <p class="price"> $85.00 </p>
                                <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_3-200x200.jpg" alt="Make Up for Naturally Beautiful Better" title="Make Up for Naturally Beautiful Better" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Make Up for Naturally Beautiful Better</a></h4>
                                <p class="price"> $123.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_2-200x200.jpg" alt="Pnina Tornai Perfume" title="Pnina Tornai Perfume" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Pnina Tornai Perfume</a></h4>
                                <p class="price"> $110.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/hp_3-200x200.jpg" alt="Casio Youth Series Marine Watch" title="Casio Youth Series Marine Watch" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Casio Youth Series Marine Watch</a></h4>
                                <p class="price"> $1,300.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/hp_2-200x200.jpg" alt="Mens Bracelet Watch" title="Mens Bracelet Watch" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Mens Bracelet Watch</a></h4>
                                <p class="price"> $1,800.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/ipod_classic_1-200x200.jpg" alt="Portable Mp3 Player" title="Portable Mp3 Player" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Portable Mp3 Player</a></h4>
                                <p class="price"> $122.00 </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_pro_1-200x200.jpg" alt=" Strategies for Acquiring Your Own Laptop " title=" Strategies for Acquiring Your Own Laptop " class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product"> Strategies for Acquiring Your Own Laptop </a></h4>
                                <p class="price"> <span class="price-new">$1,400.00</span> <span class="price-old">$1,900.00</span> <span class="saving">-26%</span> </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="product-thumb">
                            <div class="image"><a href="/product"><img src="/image/product/macbook_air_1-200x200.jpg" alt="Laptop Silver black" title="Laptop Silver black" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="/product">Laptop Silver black</a></h4>
                                <p class="price"> <span class="price-new">$1,142.00</span> <span class="price-old">$1,202.00</span> <span class="saving">-5%</span> </p>
                            </div>
                            <div class="button-group">
                                <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                                <div class="add-to-links">
                                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Add to compare" onClick=""><i class="fa fa-exchange"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Brand Product Slider End -->
                    <!-- Brand Logo Carousel Start-->
                    <div id="carousel" class="owl-carousel nxt">
                        <div class="item text-center"> <a href="#"><img src="/image/product/apple_logo-100x100.jpg" alt="Palm" class="img-responsive" /></a> </div>
                        <div class="item text-center"> <a href="#"><img src="/image/product/canon_logo-100x100.jpg" alt="Sony" class="img-responsive" /></a> </div>
                        <div class="item text-center"> <a href="#"><img src="/image/product/apple_logo-100x100.jpg" alt="Canon" class="img-responsive" /></a> </div>
                        <div class="item text-center"> <a href="#"><img src="/image/product/canon_logo-100x100.jpg" alt="Apple" class="img-responsive" /></a> </div>
                        <div class="item text-center"> <a href="#"><img src="/image/product/apple_logo-100x100.jpg" alt="HTC" class="img-responsive" /></a> </div>
                        <div class="item text-center"> <a href="#"><img src="/image/product/canon_logo-100x100.jpg" alt="Hewlett-Packard" class="img-responsive" /></a> </div>
                        <div class="item text-center"> <a href="#"><img src="/image/product/apple_logo-100x100.jpg" alt="brand" class="img-responsive" /></a> </div>
                        <div class="item text-center"> <a href="#"><img src="/image/product/canon_logo-100x100.jpg" alt="brand1" class="img-responsive" /></a> </div>
                    </div>
                    <!-- Brand Logo Carousel End -->
                </div>
                <!--Middle Part End-->
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
                    <div class="social pull-right flip"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/facebook.png" alt="Facebook" title="Facebook"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/twitter.png" alt="Twitter" title="Twitter"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/google_plus.png" alt="Google+" title="Google+"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/pinterest.png" alt="Pinterest" title="Pinterest"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/rss.png" alt="RSS" title="RSS"> </a> </div>
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
    <div id="facebook" class="fb-left sort-order-1">
        <div class="facebook_icon"><i class="fa fa-facebook"></i></div>
        <div class="fb-page" data-href="https://www.facebook.com/harnishdesign/" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true" data-show-posts="false">
            <div class="fb-xfbml-parse-ignore">
                <blockquote cite="https://www.facebook.com/harnishdesign/"><a href="https://www.facebook.com/harnishdesign/">Harnish Design</a></blockquote>
            </div>
        </div>
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    </div>
    <!-- Facebook Side Block End -->
    <!-- Twitter Side Block Start -->
    <div id="twitter_footer" class="twit-left sort-order-2">
        <div class="twitter_icon"><i class="fa fa-twitter"></i></div>
        <a class="twitter-timeline" href="https://twitter.com/" data-chrome="nofooter noscrollbar transparent" data-theme="light" data-tweet-limit="2" data-related="twitterapi,twitter" data-aria-polite="assertive" data-widget-id="347621595801608192">Tweets by @</a>
        <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
    </div>
    <!-- Twitter Side Block End -->
    <!-- Video Side Block Start -->
    <div id="video_box" class="vb-left sort-order-3">
        <div id="video_box_icon"><i class="fa fa-play"></i></div>
        <p>
            <iframe allowfullscreen="" src="//www.youtube.com/embed/SZEflIVnhH8" height="315" width="560"></iframe>
        </p>
    </div>
    <!-- Video Side Block End -->
    <!-- Custom Side Block Start -->
    <div id="custom_side_block" class="custom_side_block_left sort-order-4">
        <div class="custom_side_block_icon"> <i class="fa fa-chevron-right"></i> </div>
        <table>
            <tbody>
            <tr>
                <td><h2>CMS Blocks</h2></td>
            </tr>
            <tr>
                <td><img alt="" src="/image/banner/cms-block.jpg"></td>
            </tr>
            <tr>
                <td>You can add any HTML content to this block or turn it off in Theme Admin panel!</td>
            </tr>
            <tr>
                <td><strong><a href="#">Read More</a></strong></td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- Custom Side Block End -->
</div>
<!-- JS Part Start-->
<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/jquery.easing-1.3.min.js"></script>
<script type="text/javascript" src="/js/jquery.dcjqaccordion.min.js"></script>
<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/js/custom.js"></script>
<!-- JS Part End-->
</body>
</html>
