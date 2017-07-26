package com.Tinybees.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by lukbo on 2017/7/17.
 */
@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
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

    @RequestMapping("/login")
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

}

