<%--
  Created by IntelliJ IDEA.
  User: wangjun
  Date: 2017/7/16
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="/image/favicon.png" rel="icon" />
    <title>Elements</title>
    <meta name="description" content="Responsive and clean html template design for any kind of ecommerce webshop">
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
                            <input id="filter_name" type="text" name="search" value="" placeholder="Search" class="form-control input-lg" />
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
                        <li><a class="home_link" title="Home" href="/"><span>首页</span></a></li>
                        <li class="contact-link"><a href="#"></a></li>
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
                                                        <li><a href="/category">凉拖</a></li>
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
                        <li class="contact-link"><a href="#"></a></li>
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
                <li><a href="/elements">Elements</a></li>
            </ul>
            <!-- Breadcrumb End-->
            <div class="row">
                <!--Middle Part Start-->
                <div id="content" class="col-sm-12">
                    <h1 class="title">Elements</h1>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-6">
                            <h2 class="text-uppercase">Typography</h2>
                            <h1>H1 Heading. Lorem ipsum dolor</h1>
                            <h2>H2 Heading. Lorem ipsum dolor</h2>
                            <h3>H3 Heading. Lorem ipsum dolor</h3>
                            <h4>H4 Heading. Lorem ipsum dolor</h4>
                            <h5>H5 Heading. Lorem ipsum dolor</h5>
                            <h6>H6 Heading. Lorem ipsum dolor</h6>
                            <div class="divider"></div>
                            <h2 class="text-uppercase">Accordion</h2>
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="accordion-toggle" href="#accordion-1">Accordion Title #1 <i class="fa fa-caret-down"></i></a></h4>
                                    </div>
                                    <div id="accordion-1" class="panel-collapse collapse">
                                        <div class="panel-body">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu. </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="accordion-toggle" href="#accordion-2">Accordion Title #2 <i class="fa fa-caret-down"></i></a></h4>
                                    </div>
                                    <div id="accordion-2" class="panel-collapse collapse">
                                        <div class="panel-body">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu. </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a data-parent="#accordion" data-toggle="collapse" class="accordion-toggle" href="#accordion-3">Accordion Title #3 <i class="fa fa-caret-down"></i></a></h4>
                                    </div>
                                    <div id="accordion-3" class="panel-collapse collapse">
                                        <div class="panel-body">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu. </div>
                                    </div>
                                </div>
                            </div>
                            <h2 class="text-uppercase">List</h2>
                            <div class="row">
                                <div class="col-md-6 col-lg-6">
                                    <h5 class="text-uppercase">Unordered</h5>
                                    <ul class="simple-ul">
                                        <li>Lorem ipsum dolor amet</li>
                                        <li>Consectetur adipiscing elit </li>
                                        <li>Donec eros tellus </li>
                                        <li>Nullam ac nisi non eros gravida venenatis
                                            <ul>
                                                <li>Libero massa dapibus dui, eu</li>
                                                <li>Celerisque nec, rhoncus eget</li>
                                                <li>Praesent vitae dui</li>
                                                <li>Ut euismod, turpis sollicitudin</li>
                                            </ul>
                                        </li>
                                        <li>Dolor sit amet, consectetuer</li>
                                        <li>Vehicula venenatis, tempor vitae</li>
                                        <li>Fermentum posuere lectus</li>
                                        <li>Maecenas eu enim in lorem</li>
                                    </ul>
                                    <div class="divider visible-sm visible-xs"></div>
                                </div>
                                <div class="col-md-6 col-lg-6">
                                    <h5 class="text-uppercase">Ordered</h5>
                                    <ul class="decimal-list">
                                        <li>Lorem ipsum dolor amet</li>
                                        <li>Consectetur adipiscing elit</li>
                                        <li>Donec eros tellus </li>
                                        <li>Nullam ac nisi non eros gravida</li>
                                        <li>Libero massa dapibus dui, eu</li>
                                        <li>Celerisque nec, rhoncus eget</li>
                                        <li>Praesent vitae dui</li>
                                        <li>Ut euismod, turpis sollicitudin</li>
                                        <li>Ac tristique libero volutpat at</li>
                                        <li>Faucibus porta lacingilla vel</li>
                                        <li>Eget porttitor lorem</li>
                                        <li>Integer vel nibh sit amet</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="divider"></div>
                            <h2 class="text-uppercase">Buttons</h2>
                            <div class="row">
                                <div class="col-sm-4">
                                    <button class="btn btn-primary btn-lg" onClick="">Large button</button>
                                    <br>
                                    <br>
                                    <button class="btn btn-primary" onClick="">Default button</button>
                                    <br>
                                    <br>
                                    <button class="btn btn-primary btn-sm" onClick="">Small button</button>
                                </div>
                                <div class="col-sm-4">
                                    <button class="btn btn-default btn-lg" onClick="">Large button</button>
                                    <br>
                                    <br>
                                    <button class="btn btn-default" onClick="">Default button</button>
                                    <br>
                                    <br>
                                    <button class="btn btn-default btn-sm" onClick="">Small button</button>
                                </div>
                                <div class="col-sm-4">
                                    <button class="btn btn-warning" onClick="">Warning button</button>
                                    <br>
                                    <br>
                                    <button class="btn btn-danger" onClick="">Danger button</button>
                                    <br>
                                    <br>
                                    <button class="btn btn-success" onClick="">Success button</button>
                                    <br>
                                    <br>
                                    <button class="btn btn-info" onClick="">Info button</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <h2 class="text-uppercase">Alert Box</h2>
                            <div class="alert alert-info"><i class="fa fa-info-circle"></i> Information - Lorem ipsum dolor sit amet, con sectetuer adipiscing elit.</div>
                            <div class="alert alert-success"><i class="fa fa-check-circle"></i> Success - Lorem ipsum dolor sit amet, con sectetuer adipiscing elit.</div>
                            <div class="alert alert-warning"><i class="fa fa-warning"></i> Warning - Lorem ipsum dolor sit amet, con sectetuer adipiscing elit.</div>
                            <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Danger - Lorem ipsum dolor sit amet, con sectetuer adipiscing elit.</div>
                            <h2 class="text-uppercase">Tabs</h2>
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1">Tab #1</a></li>
                                <li><a data-toggle="tab" href="#tab-2">Tab #2</a></li>
                                <li><a data-toggle="tab" href="#tab-3">Tab #3</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tab-1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus.</div>
                                <div class="tab-pane" id="tab-2">Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</div>
                                <div class="tab-pane" id="tab-3">Consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Lorem ipsum dolor sit amet,</div>
                            </div>
                            <div class="divider"></div>
                            <h2 class="text-uppercase">Blockquote</h2>
                            <blockquote>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu. </p>
                                <footer>Ipsum dolor sit</footer>
                            </blockquote>
                            <h2 class="text-uppercase">Blockquote Reverse</h2>
                            <blockquote class="blockquote-reverse">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu. </p>
                                <footer>Ipsum dolor sit</footer>
                            </blockquote>
                            <h2 class="text-uppercase">Dropcaps</h2>
                            <p> <span class="dropcap custom-color">D</span> olor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Cum sociis natoque penatibus et magnis dis part urient montes, nascetur ridiculus mus. Maecenas eu enim in lorem scelerisque auctor. Ut non erat. Suspendisse fermentum posuere lectus. Fusce vulputate nibh egestas orci.</p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <h2 class="text-uppercase">Tables</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="text-uppercase">Basic Table</h4>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Username</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Aaron</td>
                                    <td>Seth</td>
                                    <td>@aaron</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Daichi</td>
                                    <td>Barbal</td>
                                    <td>@daichi</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Tabor</td>
                                    <td>Guju</td>
                                    <td>@tabor</td>
                                </tr>
                                </tbody>
                            </table>
                            <h4 class="text-uppercase">Striped Table</h4>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Username</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Aaron</td>
                                        <td>Seth</td>
                                        <td>@aaron</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Daichi</td>
                                        <td>Barbal</td>
                                        <td>@daichi</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Tabor</td>
                                        <td>Guju</td>
                                        <td>@tabor</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h4 class="text-uppercase">Bordered Table</h4>
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Username</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Aaron</td>
                                        <td>Seth</td>
                                        <td>@aaron</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Daichi</td>
                                        <td>Barbal</td>
                                        <td>@daichi</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Tabor</td>
                                        <td>Guju</td>
                                        <td>@tabor</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <h4 class="text-uppercase">Hover rows Table</h4>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Username</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Aaron</td>
                                        <td>Seth</td>
                                        <td>@aaron</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>Daichi</td>
                                        <td>Barbal</td>
                                        <td>@daichi</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>Tabor</td>
                                        <td>Guju</td>
                                        <td>@tabor</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <h2 class="text-uppercase">Grid</h2>
                    <div class="row">
                        <div class="col-lg-12">
                            <h5>1 COLUMN</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Cum sociis natoque penatibus et magnis dis part urient montes, nascetur ridiculus mus. Maecenas eu enim in lorem scelerisque auctor. Ut non erat. Suspendisse fermentum posuere lectus. Fusce vulputate nibh egestas orci. Aliquam lectus. Morbi eget dolor ullamcorper massa pellentesque sagittis. Morbi sit amet quam sed felis. Quisque vest ibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-6">
                            <h5>1/2 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Cum sociis natoque penatibus et magnis dis part urient montes, nascetur ridiculus mus. Maecenas eu enim in lorem scelerisque auctor. Ut non erat. Suspendisse fermentum posuere lectus. Fusce vulputate nibh egestas orci. Aliquam lectus. Morbi eget dolor ullamcorper massa pellentesque sagittis. Morbi sit amet quam sed felis. Quisque vest ibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                        <div class="col-sm-6">
                            <h5>1/2 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Cum sociis natoque penatibus et magnis dis part urient montes, nascetur ridiculus mus. Maecenas eu enim in lorem scelerisque auctor. Ut non erat. Suspendisse fermentum posuere lectus. Fusce vulputate nibh egestas orci. Aliquam lectus. Morbi eget dolor ullamcorper massa pellentesque sagittis. Morbi sit amet quam sed felis. Quisque vest ibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-4">
                            <h5>1/3 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, con sectetuer adipiscing elit. Donec eros tellus, scelerisqu nec, rhonc us eget, sollicitudin eu, vehicula venenatis, tem por vitae, est. Praesent vitae dui. Morbi id tellus. Nullam massa. Sad dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                        <div class="col-sm-4">
                            <h5>1/3 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, con sectetuer adipiscing elit. Donec eros tellus, scelerisqu nec, rhonc us eget, sollicitudin eu, vehicula venenatis, tem por vitae, est. Praesent vitae dui. Morbi id tellus. Nullam massa. Sad dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                        <div class="col-sm-4">
                            <h5>1/3 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, con sectetuer adipiscing elit. Donec eros tellus, scelerisqu nec, rhonc us eget, sollicitudin eu, vehicula venenatis, tem por vitae, est. Praesent vitae dui. Morbi id tellus. Nullam massa. Sad dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-8">
                            <h5>2/3 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Cum sociis natoque penatibus et magnis dis part urient montes, nascetur ridiculus mus. Maecenas eu enim in lorem scelerisque auctor. Ut non erat. Suspendisse fermentum posuere lectus. Fusce vulputate nibh egestas orci. Aliquam lectus. Morbi eget dolor ullamcorper massa pellentesque sagittis. Morbi sit amet quam sed felis. Quisque vest ibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                        <div class="col-sm-4">
                            <h5>1/3 COLUMNS</h5>
                            <p>Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellenlaoreet justo ultrices. In pellentesque lorem condimentum dui morbi pulvinar dui non quam pretium ut lacinia tortor. Fusce lacinia tempor malesuada. Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec. </p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-6 col-md-3 col-lg-3">
                            <h5>1/4 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. </p>
                        </div>
                        <div class="col-sm-6 col-md-3 col-lg-3">
                            <h5>1/4 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. </p>
                        </div>
                        <div class="col-sm-6 col-md-3 col-lg-3">
                            <h5>1/4 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. </p>
                        </div>
                        <div class="col-sm-6 col-md-3 col-lg-3">
                            <h5>1/4 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. </p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-9">
                            <h5>3/4 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Cum sociis natoque penatibus et magnis dis part urient montes, nascetur ridiculus mus. Maecenas eu enim in lorem scelerisque auctor. Ut non erat. Suspendisse fermentum posuere lectus. Fusce vulputate nibh egestas orci. Aliquam lectus. Morbi eget dolor ullamcorper massa pellentesque sagittis. Morbi sit amet quam sed felis. Quisque vest ibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                        <div class="col-sm-3">
                            <h5>1/4 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. </p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-6 col-md-2 col-lg-2">
                            <h5>1/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc.</p>
                        </div>
                        <div class="col-sm-6 col-md-2 col-lg-2">
                            <h5>1/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc.</p>
                        </div>
                        <div class="col-sm-6 col-md-2 col-lg-2">
                            <h5>1/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc.</p>
                        </div>
                        <div class="col-sm-6 col-md-2 col-lg-2">
                            <h5>1/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc.</p>
                        </div>
                        <div class="col-sm-6 col-md-2 col-lg-2">
                            <h5>1/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc.</p>
                        </div>
                        <div class="col-sm-6 col-md-2 col-lg-2">
                            <h5>1/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc.</p>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="row">
                        <div class="col-sm-8 col-md-10 col-lg-10">
                            <h5>5/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. Ut sit amet turpis. In est arcu, sollicitudin eu, vehicula venenatis, tempor vitae, est. Praesent vitae dui. Morbi id tellus. Cum sociis natoque penatibus et magnis dis part urient montes, nascetur ridiculus mus. Maecenas eu enim in lorem scelerisque auctor. Ut non erat. Suspendisse fermentum posuere lectus. Fusce vulputate nibh egestas orci. Aliquam lectus. Morbi eget dolor ullamcorper massa pellentesque sagittis. Morbi sit amet quam sed felis. Quisque vest ibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. </p>
                        </div>
                        <div class="col-sm-4 col-md-2 col-lg-2">
                            <h5>1/6 COLUMNS</h5>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec eros tellus, scelerisque nec, rhoncus eget, laoreet sit amet, nunc. </p>
                        </div>
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
                        <h5>Contact Details</h5>
                        <ul>
                            <li class="address"><i class="fa fa-map-marker"></i>Central Square, 22 Hoi Wing Road, New Delhi, India</li>
                            <li class="mobile"><i class="fa fa-phone"></i>+91 9898777656</li>
                            <li class="email"><i class="fa fa-envelope"></i>Send email via our <a href="#">Contact Us</a>
                        </ul>
                    </div>
                    <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                        <h5>Information</h5>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Delivery Information</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms &amp; Conditions</a></li>
                        </ul>
                    </div>
                    <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                        <h5>Customer Service</h5>
                        <ul>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="/sitemap">Site Map</a></li>
                        </ul>
                    </div>
                    <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                        <h5>Extras</h5>
                        <ul>
                            <li><a href="#">Brands</a></li>
                            <li><a href="#">Gift Vouchers</a></li>
                            <li><a href="#">Affiliates</a></li>
                            <li><a href="#">Specials</a></li>
                        </ul>
                    </div>
                    <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                        <h5>My Account</h5>
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Wish List</a></li>
                            <li><a href="#">Newsletter</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="fpart-second">
            <div class="container">
                <div id="powered" class="clearfix">
                    <div class="powered_text pull-left flip">
                        <p>Marketshop Ecommerce Template © 2016 | Template By <a href="http://harnishdesign.net" target="_blank">Harnish Design</a></p>
                    </div>
                    <div class="social pull-right flip"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/facebook.png" alt="Facebook" title="Facebook"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/twitter.png" alt="Twitter" title="Twitter"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/google_plus.png" alt="Google+" title="Google+"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/pinterest.png" alt="Pinterest" title="Pinterest"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/socialicons/rss.png" alt="RSS" title="RSS"> </a> </div>
                </div>
                <div class="bottom-row">
                    <div class="custom-text text-center">
                        <p>This is a CMS block. You can insert any content (HTML, Text, Images) Here. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                    </div>
                    <div class="payments_types"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_paypal.png" alt="paypal" title="PayPal"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_american.png" alt="american-express" title="American Express"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_2checkout.png" alt="2checkout" title="2checkout"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_maestro.png" alt="maestro" title="Maestro"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_discover.png" alt="discover" title="Discover"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="/image/payment/payment_mastercard.png" alt="mastercard" title="MasterCard"></a> </div>
                </div>
            </div>
        </div>
        <div id="back-top"><a data-toggle="tooltip" title="Back to Top" href="javascript:void(0)" class="backtotop"><i class="fa fa-chevron-up"></i></a></div>
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
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.easing-1.3.min.js"></script>
<script type="text/javascript" src="js/jquery.dcjqaccordion.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!-- JS Part End-->
</body>
</html>