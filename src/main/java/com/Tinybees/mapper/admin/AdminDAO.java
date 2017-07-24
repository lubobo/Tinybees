package com.Tinybees.mapper.admin;

import com.Tinybees.model.*;

import java.util.List;

/**
 * Created by lukbo on 2017/7/19.
 */
public interface AdminDAO {
    Admin selectAdminByName(Admin admin);

//    一级分类
    List<Category> getAllCategory();
    Category getCategoryById(String category);
    Category getCategoryByName(String category);

//    二级分类
    List<Category_second> getAllCategorySecond();
    Category_second getCategorySecondByName(String category_second);
//    一级分类级联查询二级分类
    List<Category_second> getAllCategorySecondById(String categories);
    Category_second getCategorySecondById(String category_second);

//    三级分类
    List<Category_third> getAllCategoryThird();
    Category_third getCategoryThirdByName(String category_third);
//    二级分类级联查询三级分类
    List<Category_third> getAllCategoryThirdById(String category_seconds);
    Category_third getCategoryThirdById(String category_third);

//    商品操作
    void addProduct(Product product);
    List<Product> getAllProduct();
    void deleteProductById(int p_id);

//    添加分类
//    添加一级分类
    void add_category(Category category);
//    添加二级分类
    void add_category_second(Category_second category_second,String category);
//    添加三级分类
    void add_category_third(Category_third category_third,String  category_second);
}

