package com.Tinybees.mapper.admin;

import com.Tinybees.model.*;

import java.util.List;

/**
 * Created by lukbo on 2017/7/19.
 */
public interface AdminDAO {
    Admin selectAdminByName(Admin admin);

    List<Category> getAllCategory();

    Category getCategoryById(String category);

    List<Category_second> getCategorySecondByName(String categories);

    Category_second getCategorySecondById(String category_second);

    List<Category_second> getAllCategorySecond();

    List<Category_third> getCategoryThirdByName(String category_seconds);

    List<Category_third> getAllCategoryThird();

    void addProduct(Product product);

    List<Product> getAllProduct();

    void deleteProductById(int p_id);
}
