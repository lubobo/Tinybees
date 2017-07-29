package com.Tinybees.mapper.home;

import com.Tinybees.model.*;

import java.util.List;

/**
 * Created by wangjun on 2017/7/20.
 */
public interface ProductCategory {
    List<Product> getAllpro();
    Product getProByID(int p_id);
    List<Category> cate1();
    List<Category_second> cate2();
    List<Category_third> cate3();
    int addCart(Wishitem wishitem);
    List<Producti> getproBycart(int u_id);
    Wishitem getAllcount(int u_id);
    int addOrders(Orders orders);
    int addorderitem(int u_id);
    List<Product> getproBycate1(int cate1);
    Category getnameBycate1(int cate1);
    List<Product> getproBycate2(int cate2);
    Category_second getnameBycate2(int cate2);
    List<Product> getproBycate3(int cate3);
    Category_third getnameBycate3(int cate3);
    int addwish(Wishlist wishlist);
    List<Product> getwishpro(int u_id);
    int delwish(Wishlist wishlist);
    int delcart(Wishitem wishitem);
    List<Product> search(Product product);
    int addreview(Review review);
    List<Reviewi> getreview(int p_id);
    List<Product> getproByctid(int ct_id);
    List<Product> getproByava(int avai);
}
