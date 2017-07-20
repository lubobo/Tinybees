package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Product",table="product")
public class Product {

  @AutoField(alias = "p_id", column = "p_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "p_id", column = "A")
  private int p_id;

  @AutoField(alias = "p_name", column = "p_name", length = 255)
  @ExcelVOAttribute(name = "p_name", column = "B")
  private String p_name;

  @AutoField(alias = "market_price", column = "market_price")
  @ExcelVOAttribute(name = "market_price", column = "C")
  private String market_price;

  @AutoField(alias = "current_price", column = "current_price", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "current_price", column = "D")
  private int current_price;

  @AutoField(alias = "image", column = "image", length = 255)
  @ExcelVOAttribute(name = "image", column = "E")
  private String image;

  @AutoField(alias = "image1", column = "image1", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "image1", column = "F")
  private String image1;

  @AutoField(alias = "image2", column = "image2", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "image2", column = "G")
  private String image2;

  @AutoField(alias = "image3", column = "image3", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "image3", column = "H")
  private String image3;

  @AutoField(alias = "pdesc", column = "pdesc", length = 255)
  @ExcelVOAttribute(name = "pdesc", column = "I")
  private String pdesc;

  @AutoField(alias = "pdate", column = "pdate", type = "Date")
  @ExcelVOAttribute(name = "pdate", column = "J")
  private Date pdate;

  @AutoField(alias = "color", column = "color", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "color", column = "K")
  private String color;

  @AutoField(alias = "size", column = "size", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "size", column = "L")
  private String size;

  @AutoField(alias = "availability", column = "availability", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "availability", column = "M")
  private int availability;

  @AutoField(alias = "ct_id", column = "ct_id", type = "Integer")
  @ExcelVOAttribute(name = "ct_id", column = "N")
  private int ct_id;


  public int getP_id() {
    return p_id;
  }
  public void setP_id(int p_id){
    this.p_id = p_id;
  }
  public String getP_name() {
    return p_name;
  }
  public void setP_name(String p_name){
    this.p_name = p_name;
  }
  public String getMarket_price() {
    return market_price;
  }
  public void setMarket_price(String market_price){
    this.market_price = market_price;
  }
  public int getCurrent_price() {
    return current_price;
  }
  public void setCurrent_price(int current_price){
    this.current_price = current_price;
  }
  public String getImage() {
    return image;
  }
  public void setImage(String image){
    this.image = image;
  }
  public String getImage1() {
    return image1;
  }
  public void setImage1(String image1){
    this.image1 = image1;
  }
  public String getImage2() {
    return image2;
  }
  public void setImage2(String image2){
    this.image2 = image2;
  }
  public String getImage3() {
    return image3;
  }
  public void setImage3(String image3){
    this.image3 = image3;
  }
  public String getPdesc() {
    return pdesc;
  }
  public void setPdesc(String pdesc){
    this.pdesc = pdesc;
  }
  public Date getPdate() {
    return pdate;
  }
  public void setPdate(Date pdate){
    this.pdate = pdate;
  }
  public String getColor() {
    return color;
  }
  public void setColor(String color){
    this.color = color;
  }
  public String getSize() {
    return size;
  }
  public void setSize(String size){
    this.size = size;
  }
  public int getAvailability() {
    return availability;
  }
  public void setAvailability(int availability){
    this.availability = availability;
  }
  public int getCt_id() {
    return ct_id;
  }
  public void setCt_id(int ct_id){
    this.ct_id = ct_id;
  }
}
