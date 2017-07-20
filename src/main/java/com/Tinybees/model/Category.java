package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Category",table="category")
public class Category {

  @AutoField(alias = "c_id", column = "c_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "c_id", column = "A")
  private int c_id;

  @AutoField(alias = "c_name", column = "c_name", length = 255)
  @ExcelVOAttribute(name = "c_name", column = "B")
  private String c_name;


  public int getC_id() {
    return c_id;
  }
  public void setC_id(int c_id){
    this.c_id = c_id;
  }
  public String getC_name() {
    return c_name;
  }
  public void setC_name(String c_name){
    this.c_name = c_name;
  }
}
