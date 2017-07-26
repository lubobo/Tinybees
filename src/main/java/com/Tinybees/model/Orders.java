package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Orders",table="orders")
public class Orders {

  @AutoField(alias = "o_id", column = "o_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "o_id", column = "A")
  private int o_id;

  @AutoField(alias = "total", column = "total")
  @ExcelVOAttribute(name = "total", column = "B")
  private String total;

  @AutoField(alias = "ordertime", column = "ordertime", type = "Date")
  @ExcelVOAttribute(name = "ordertime", column = "C")
  private Date ordertime;

  @AutoField(alias = "state", column = "state", type = "Integer")
  @ExcelVOAttribute(name = "state", column = "D")
  private int state;

  @AutoField(alias = "name", column = "name", length = 20)
  @ExcelVOAttribute(name = "name", column = "E")
  private String name;

  @AutoField(alias = "phone", column = "phone", length = 20)
  @ExcelVOAttribute(name = "phone", column = "F")
  private String phone;

  @AutoField(alias = "addr", column = "addr", length = 50)
  @ExcelVOAttribute(name = "addr", column = "G")
  private String addr;

  @AutoField(alias = "u_id", column = "u_id", type = "Integer")
  @ExcelVOAttribute(name = "u_id", column = "H")
  private int u_id;


  public int getO_id() {
    return o_id;
  }
  public void setO_id(int o_id){
    this.o_id = o_id;
  }
  public String getTotal() {
    return total;
  }
  public void setTotal(String total){
    this.total = total;
  }
  public Date getOrdertime() {
    return ordertime;
  }
  public void setOrdertime(Date ordertime){
    this.ordertime = ordertime;
  }
  public int getState() {
    return state;
  }
  public void setState(int state){
    this.state = state;
  }
  public String getName() {
    return name;
  }
  public void setName(String name){
    this.name = name;
  }
  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone){
    this.phone = phone;
  }
  public String getAddr() {
    return addr;
  }
  public void setAddr(String addr){
    this.addr = addr;
  }
  public int getU_id() {
    return u_id;
  }
  public void setU_id(int u_id){
    this.u_id = u_id;
  }
}
