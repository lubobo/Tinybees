package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Orderitem",table="order_item")
public class Orderitem {

  @AutoField(alias = "ot_id", column = "ot_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "ot_id", column = "A")
  private int ot_id;

  @AutoField(alias = "count", column = "count", type = "Integer")
  @ExcelVOAttribute(name = "count", column = "B")
  private int count;

  @AutoField(alias = "subtotal", column = "subtotal")
  @ExcelVOAttribute(name = "subtotal", column = "C")
  private String subtotal;

  @AutoField(alias = "p_id", column = "p_id", type = "Integer")
  @ExcelVOAttribute(name = "p_id", column = "D")
  private int p_id;

  @AutoField(alias = "o_id", column = "o_id", type = "Integer")
  @ExcelVOAttribute(name = "o_id", column = "E")
  private int o_id;


  public int getOt_id() {
    return ot_id;
  }
  public void setOt_id(int ot_id){
    this.ot_id = ot_id;
  }
  public int getCount() {
    return count;
  }
  public void setCount(int count){
    this.count = count;
  }
  public String getSubtotal() {
    return subtotal;
  }
  public void setSubtotal(String subtotal){
    this.subtotal = subtotal;
  }
  public int getP_id() {
    return p_id;
  }
  public void setP_id(int p_id){
    this.p_id = p_id;
  }
  public int getO_id() {
    return o_id;
  }
  public void setO_id(int o_id){
    this.o_id = o_id;
  }
}
