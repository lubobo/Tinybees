package com.Tinybees.model;

import java.util.*;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Activity",table="activity")
public class Activity {

  @AutoField(alias = "a_id", column = "a_id", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "a_id", column = "A")
  private int a_id;

  @AutoField(alias = "a_name", column = "a_name", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "a_name", column = "B")
  private String a_name;

  @AutoField(alias = "a_reward", column = "a_reward", isRequired = true, length = 255)
  @ExcelVOAttribute(name = "a_reward", column = "C")
  private String a_reward;

  @AutoField(alias = "start_time", column = "start_time", isRequired = true, type = "Date")
  @ExcelVOAttribute(name = "start_time", column = "D")
  private Date start_time;

  @AutoField(alias = "end_time", column = "end_time", isRequired = true, type = "Date")
  @ExcelVOAttribute(name = "end_time", column = "E")
  private Date end_time;


  public int getA_id() {
    return a_id;
  }
  public void setA_id(int a_id){
    this.a_id = a_id;
  }
  public String getA_name() {
    return a_name;
  }
  public void setA_name(String a_name){
    this.a_name = a_name;
  }
  public String getA_reward() {
    return a_reward;
  }
  public void setA_reward(String a_reward){
    this.a_reward = a_reward;
  }
  public Date getStart_time() {
    return start_time;
  }
  public void setStart_time(Date start_time){
    this.start_time = start_time;
  }
  public Date getEnd_time() {
    return end_time;
  }
  public void setEnd_time(Date end_time){
    this.end_time = end_time;
  }
}
