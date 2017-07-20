package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Admin",table="admin")
public class Admin {

  @AutoField(alias = "ad_id", column = "ad_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "ad_id", column = "A")
  private int ad_id;

  @AutoField(alias = "ad_name", column = "ad_name", length = 255)
  @ExcelVOAttribute(name = "ad_name", column = "B")
  private String ad_name;

  @AutoField(alias = "ad_password", column = "ad_password", length = 255)
  @ExcelVOAttribute(name = "ad_password", column = "C")
  private String ad_password;


  public int getAd_id() {
    return ad_id;
  }
  public void setAd_id(int ad_id){
    this.ad_id = ad_id;
  }
  public String getAd_name() {
    return ad_name;
  }
  public void setAd_name(String ad_name){
    this.ad_name = ad_name;
  }
  public String getAd_password() {
    return ad_password;
  }
  public void setAd_password(String ad_password){
    this.ad_password = ad_password;
  }
}
