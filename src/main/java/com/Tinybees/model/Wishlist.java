package com.Tinybees.model;

import com.tgb.lk.annotation.AutoBean;
import com.tgb.lk.annotation.AutoField;
import com.tgb.lk.annotation.ExcelVOAttribute;

@AutoBean(alias = "Wishlist",table="wish_list")
public class Wishlist {

  @AutoField(alias = "w_id", column = "w_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "w_id", column = "A")
  private int w_id;

  @AutoField(alias = "u_id", column = "u_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "u_id", column = "B")
  private int u_id;

  @AutoField(alias = "p_id", column = "p_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "p_id", column = "C")
  private int p_id;


  public int getW_id() {
    return w_id;
  }
  public void setW_id(int w_id){
    this.w_id = w_id;
  }
  public int getU_id() {
    return u_id;
  }
  public void setU_id(int u_id){
    this.u_id = u_id;
  }
  public int getP_id() {
    return p_id;
  }
  public void setP_id(int p_id){
    this.p_id = p_id;
  }
}
