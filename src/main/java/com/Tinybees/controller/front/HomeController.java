package com.Tinybees.controller.front;

import com.Tinybees.mapper.home.ProductCategory;
import com.Tinybees.mapper.user.UserDAO;
import com.Tinybees.model.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by lukbo on 2017/7/17.
 */
@Controller
public class HomeController {

    private ProductCategory productCategory;
    private UserDAO userDAO;
    public HomeController() throws IOException {
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建会话工厂,传入Mybatis的配置文件信息
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        productCategory = sqlSession.getMapper(ProductCategory.class);
        userDAO = sqlSession.getMapper(UserDAO.class);
    }
    @RequestMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> lstUsers =productCategory .getAllpro();
        List<Product> products1=productCategory.getproBycate1(1);
        List<Product> nvpro1=productCategory.getproBycate2(4);
        List<Product> nvpro2=productCategory.getproBycate2(5);
        List<Product> nvpro3=productCategory.getproBycate2(6);
        List<Product> nvpro4=productCategory.getproBycate2(7);
        List<Product> products3=productCategory.getproBycate1(3);
        List<Product> products4=productCategory.getproBycate1(4);
        List<Product> avaipro1=productCategory.getproByava(1);
        modelAndView.addObject("avaipro1",avaipro1);
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        modelAndView.addObject("procate1",products1);
        modelAndView.addObject("nvpro1",nvpro1);
        modelAndView.addObject("nvpro2",nvpro2);
        modelAndView.addObject("nvpro3",nvpro3);
        modelAndView.addObject("nvpro4",nvpro4);
        modelAndView.addObject("procate3",products3);
        modelAndView.addObject("procate4",products4);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("allPro",lstUsers);
        modelAndView.setViewName("home/home");
        return modelAndView;
    }

    @RequestMapping("/home")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/home");
        return modelAndView;
    }

    @RequestMapping("/index")
    public ModelAndView getIndex() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/home");
        return modelAndView;
    }

    /*@RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/login");
        return modelAndView;
    }

    @RequestMapping("/register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/register");
        return modelAndView;
    }

    @RequestMapping("/product")
    public ModelAndView product() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/product");
        return modelAndView;
    }

    @RequestMapping("/cart")
    public ModelAndView cart() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/cart");
        return modelAndView;
    }

    @RequestMapping("/category")
    public ModelAndView category() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/category");
        return modelAndView;
    }

    @RequestMapping("/checkout")
    public ModelAndView checkout() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/checkout");
        return modelAndView;
    }

    @RequestMapping("/about-us")
    public ModelAndView about_us() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/about-us");
        return modelAndView;
    }

    @RequestMapping("/404")
    public ModelAndView error() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/404");
        return modelAndView;
    }

    @RequestMapping("/compare")
    public ModelAndView compare() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/compare");
        return modelAndView;
    }

    @RequestMapping("/contact-us")
    public ModelAndView contact_us() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/contact-us");
        return modelAndView;
    }

    @RequestMapping("/elements")
    public ModelAndView elements() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/elements");
        return modelAndView;
    }

    @RequestMapping("/faq")
    public ModelAndView faq() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/faq");
        return modelAndView;
    }

    @RequestMapping("/search")
    public ModelAndView search() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/search");
        return modelAndView;
    }

    @RequestMapping("/sitemap")
    public ModelAndView sitmap() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/sitemap");
        return modelAndView;
    }

    @RequestMapping("/wishlist")
    public ModelAndView wishlist() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/wishlist");
        return modelAndView;
    }
*/

    @RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.setViewName("home/login");
        return modelAndView;
    }

    @RequestMapping("/register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.setViewName("home/register");
        return modelAndView;
    }

    @RequestMapping("/product")
    public ModelAndView product(int proid) {
        ModelAndView modelAndView = new ModelAndView();
        List<Reviewi> reviews = productCategory.getreview(proid);
        Product product = productCategory.getProByID(proid);
        int ctid=Integer.parseInt(product.getCt_id().toString());
        List<Product> products=productCategory.getproByctid(ctid);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro1=productCategory.getproByava(1);
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro1",avaipro1);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("pro",product);
        modelAndView.addObject("proctid",products);
        modelAndView.addObject("review",reviews);
        modelAndView.setViewName("home/product");
        return modelAndView;
    }

    @RequestMapping("/addcart")
    public String addcart(Wishitem wishitem) {
        productCategory.addCart(wishitem);
        return "redirect:/cart";
    }

    @RequestMapping("/cart")
    public ModelAndView cart( HttpServletRequest request
            , HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("login_user");
        int uid = user.getU_id();
        List<Producti>  prod=productCategory.getproBycart(uid);
        Wishitem wishitem=productCategory.getAllcount(uid);
        ModelAndView modelAndView = new ModelAndView();
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("prod",prod);
        modelAndView.addObject("allcout",wishitem);
        modelAndView.setViewName("home/cart");
        return modelAndView;
    }

    @RequestMapping("/category")
    public ModelAndView category(){
        ModelAndView modelAndView=new ModelAndView();
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> products=productCategory.getAllpro();
        List<Product> avaipro1=productCategory.getproByava(1);
        List<Product> avaipro2=productCategory.getproByava(2);
        List<Product> lstUsers =productCategory .getAllpro();
        modelAndView.addObject("allPro",lstUsers);
        modelAndView.addObject("avaipro1",avaipro1);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("product",products);
        modelAndView.setViewName("home/category");
        return modelAndView;
    }

    @RequestMapping("/category1")
    public ModelAndView category1(int cate) {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> lstUsers =productCategory .getAllpro();
        List<Product> products=productCategory.getproBycate1(cate);
        Category category=productCategory.getnameBycate1(cate);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro1=productCategory.getproByava(1);
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro1",avaipro1);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("product",products);
        modelAndView.addObject("category1",category);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("allPro",lstUsers);
        modelAndView.setViewName("home/category");
        return modelAndView;
    }

    @RequestMapping("/category2")
    public ModelAndView category2(int cate) {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> lstUsers =productCategory .getAllpro();
        List<Product> products=productCategory.getproBycate2(cate);
        Category_second category2=productCategory.getnameBycate2(cate);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro1=productCategory.getproByava(1);
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro1",avaipro1);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("product",products);
        modelAndView.addObject("category2",category2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("allPro",lstUsers);
        modelAndView.setViewName("home/category");
        return modelAndView;
    }

    @RequestMapping("/category3")
    public ModelAndView category3(int cate) {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> lstUsers =productCategory .getAllpro();
        List<Product> products=productCategory.getproBycate3(cate);
        Category_third category3=productCategory.getnameBycate3(cate);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro1=productCategory.getproByava(1);
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro1",avaipro1);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("product",products);
        modelAndView.addObject("category3",category3);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("allPro",lstUsers);
        modelAndView.setViewName("home/category");
        return modelAndView;
    }

    @RequestMapping("/checkout")
    public ModelAndView checkout(HttpServletRequest request
            , HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("login_user");
        int uid = user.getU_id();
        List<Producti>  prod=productCategory.getproBycart(uid);
        Wishitem wishitem=productCategory.getAllcount(uid);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("prod",prod);
        modelAndView.addObject("allcout",wishitem);
        modelAndView.setViewName("home/checkout");
        return modelAndView;
    }

    @RequestMapping("/addorders")
    public String addorders(Orders orders, HttpServletRequest request
            , HttpServletResponse response){
        productCategory.addOrders(orders);
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("login_user");
        int uid = user.getU_id();
        productCategory.addorderitem(uid);
        return "redirect:/";
    }

    @RequestMapping("/about-us")
    public ModelAndView about_us() {
        ModelAndView modelAndView = new ModelAndView();
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.setViewName("home/about-us");
        return modelAndView;
    }

    @RequestMapping("/404")
    public ModelAndView error() {
        ModelAndView modelAndView = new ModelAndView();
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.setViewName("home/404");
        return modelAndView;
    }

    @RequestMapping("/compare")
    public ModelAndView compare() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/compare");
        return modelAndView;
    }

    @RequestMapping("/contact-us")
    public ModelAndView contact_us() {
        ModelAndView modelAndView = new ModelAndView();
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.setViewName("home/contact-us");
        return modelAndView;
    }

    @RequestMapping("/elements")
    public ModelAndView elements() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/elements");
        return modelAndView;
    }

    @RequestMapping("/faq")
    public ModelAndView faq() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/faq");
        return modelAndView;
    }

    @RequestMapping("/search")
    public ModelAndView search(Product product) {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products=productCategory.search(product);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("searchpro",products);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.setViewName("home/search");
        return modelAndView;
    }

    @RequestMapping("/sitemap")
    public ModelAndView sitmap() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("home/sitemap");
        return modelAndView;
    }

    @RequestMapping("/addwish")
    public ModelAndView addwish(Wishlist wishlist, HttpServletRequest request
            , HttpServletResponse response) {
        ModelAndView modelAndView= new ModelAndView();
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("login_user");
        int uid = user.getU_id();
        List<Product> products=productCategory.getwishpro(uid);
        int flag=0;
        for (int i=0;i<products.size();i++){
            if (products.get(i).getP_id()==wishlist.getP_id() && uid==wishlist.getU_id()) {
                flag=1;
            }
        }
        if(flag==0) {
            productCategory.addwish(wishlist);
        }
        return modelAndView;
    }

    @RequestMapping("/wishlist")
    public ModelAndView wishlist(HttpServletRequest request
            , HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("login_user");
        int uid = user.getU_id();
        List<Product> products=productCategory.getwishpro(uid);
        List<Category> cate1=productCategory.cate1();
        List<Category_second> cate2=productCategory.cate2();
        List<Category_third> cate3=productCategory.cate3();
        List<Product> avaipro2=productCategory.getproByava(2);
        modelAndView.addObject("avaipro2",avaipro2);
        modelAndView.addObject("cate3",cate3);
        modelAndView.addObject("cate2",cate2);
        modelAndView.addObject("cate1",cate1);
        modelAndView.addObject("wishpro",products);
        modelAndView.setViewName("home/wishlist");
        return modelAndView;
    }

    @RequestMapping("/delwish")
    public ModelAndView delwish(Wishlist wishlist){
        ModelAndView modelAndView=new ModelAndView();
        productCategory.delwish(wishlist);
        return modelAndView;
    }

    @RequestMapping("/delcart")
    public ModelAndView delcart(Wishitem wishitem){
        ModelAndView modelAndView=new ModelAndView();
        productCategory.delcart(wishitem);
        return modelAndView;
    }

    @RequestMapping("/addreview")
    public  String addreview(Review review){
        productCategory.addreview(review);
        int pid=review.getP_id();
        return "redirect:/product?proid="+pid;
    }
}

