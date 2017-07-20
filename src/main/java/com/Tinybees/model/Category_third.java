package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Category_third",table="category_third")
public class Category_third {

  @AutoField(alias = "ct_id", column = "ct_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "ct_id", column = "A")
  private int ct_id;

  @AutoField(alias = "ct_name", column = "ct_name", length = 255)
  @ExcelVOAttribute(name = "ct_name", column = "B")
  private String ct_name;

  @AutoField(alias = "cs_id", column = "cs_id", type = "Integer")
  @ExcelVOAttribute(name = "cs_id", column = "C")
  private int cs_id;


  public int getCt_id() {
    return ct_id;
  }
  public void setCt_id(int ct_id){
    this.ct_id = ct_id;
  }
  public String getCt_name() {
    return ct_name;
  }
  public void setCt_name(String ct_name){
    this.ct_name = ct_name;
  }
  public int getCs_id() {
    return cs_id;
  }
  public void setCs_id(int cs_id){
    this.cs_id = cs_id;
  }
}
