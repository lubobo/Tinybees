package com.Tinybees.model;

import com.tgb.lk.annotation.AutoBean;
import com.tgb.lk.annotation.AutoField;
import com.tgb.lk.annotation.ExcelVOAttribute;

@AutoBean(alias = "Wishitem",table="wish_item")
public class Wishitem {

  @AutoField(alias = "wt_id", column = "wt_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "wt_id", column = "A")
  private int wt_id;

  @AutoField(alias = "count", column = "count", isRequired = true)
  @ExcelVOAttribute(name = "count", column = "B")
  private String count;

  @AutoField(alias = "subcount", column = "subcount", isRequired = true)
  @ExcelVOAttribute(name = "subcount", column = "C")
  private String subcount;

  @AutoField(alias = "p_id", column = "p_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "p_id", column = "D")
  private int p_id;

  @AutoField(alias = "u_id", column = "u_id", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "u_id", column = "E")
  private int u_id;


  public int getWt_id() {
    return wt_id;
  }
  public void setWt_id(int wt_id){
    this.wt_id = wt_id;
  }
  public String getCount() {
    return count;
  }
  public void setCount(String count){
    this.count = count;
  }
  public String getSubcount() {
    return subcount;
  }
  public void setSubcount(String subcount){
    this.subcount = subcount;
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
}
