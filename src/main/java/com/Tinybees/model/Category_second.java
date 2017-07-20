package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Category_second",table="category_second")
public class Category_second {

  @AutoField(alias = "cs_id", column = "cs_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "cs_id", column = "A")
  private int cs_id;

  @AutoField(alias = "cs_name", column = "cs_name", length = 255)
  @ExcelVOAttribute(name = "cs_name", column = "B")
  private String cs_name;

  @AutoField(alias = "c_id", column = "c_id", type = "Integer")
  @ExcelVOAttribute(name = "c_id", column = "C")
  private int c_id;


  public int getCs_id() {
    return cs_id;
  }
  public void setCs_id(int cs_id){
    this.cs_id = cs_id;
  }
  public String getCs_name() {
    return cs_name;
  }
  public void setCs_name(String cs_name){
    this.cs_name = cs_name;
  }
  public int getC_id() {
    return c_id;
  }
  public void setC_id(int c_id){
    this.c_id = c_id;
  }
}
