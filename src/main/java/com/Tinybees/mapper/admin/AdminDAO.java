package com.Tinybees.mapper.admin;

import com.Tinybees.model.Admin;
import com.Tinybees.model.Category;
import com.Tinybees.model.Category_second;
import com.Tinybees.model.Category_third;

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
}