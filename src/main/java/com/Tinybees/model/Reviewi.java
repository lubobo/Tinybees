package com.Tinybees.model;

import com.tgb.lk.annotation.AutoBean;
import com.tgb.lk.annotation.AutoField;
import com.tgb.lk.annotation.ExcelVOAttribute;

@AutoBean(alias = "Review",table="review")
public class Reviewi {

  @AutoField(alias = "r_id", column = "r_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "r_id", column = "A")
  private int r_id;

  @AutoField(alias = "u_name", column = "u_name", length = 255)
  @ExcelVOAttribute(name = "u_name", column = "B")
  private String u_name;

  @AutoField(alias = "r_comment", column = "r_comment", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "r_comment", column = "B")
  private String r_comment;

  @AutoField(alias = "r_rate", column = "r_rate", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "r_rate", column = "C")
  private int r_rate;

  @AutoField(alias = "p_id", column = "p_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "p_id", column = "D")
  private int p_id;

  @AutoField(alias = "u_id", column = "u_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "u_id", column = "E")
  private int u_id;


  public int getR_id() {
    return r_id;
  }
  public void setR_id(int r_id){
    this.r_id = r_id;
  }
  public String getR_comment() {
    return r_comment;
  }
  public void setR_comment(String r_comment){
    this.r_comment = r_comment;
  }
  public int getR_rate() {
    return r_rate;
  }
  public void setR_rate(int r_rate){
    this.r_rate = r_rate;
  }
  public int getP_id() {
    return p_id;
  }
  public void setP_id(int p_id){
    this.p_id = p_id;
  }
  public int getU_id() {
    return u_id;
  }
  public void setU_id(int u_id){
    this.u_id = u_id;
  }
  public String getU_name() {
    return u_name;
  }
  public void setU_name(String u_name){
    this.u_name = u_name;
  }
}
