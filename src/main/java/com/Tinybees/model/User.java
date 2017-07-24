package com.Tinybees.model;

import com.tgb.lk.annotation.AutoBean;
import com.tgb.lk.annotation.AutoField;
import com.tgb.lk.annotation.ExcelVOAttribute;

import java.util.Date;

@AutoBean(alias = "User",table="user")
public class User {

    @AutoField(alias = "u_id", column = "u_id", isRequired = true, type = "Integer")
    @ExcelVOAttribute(name = "u_id", column = "A")
    private int u_id;

    @AutoField(alias = "u_name", column = "u_name", length = 255)
    @ExcelVOAttribute(name = "u_name", column = "B")
    private String u_name;

    @AutoField(alias = "password", column = "password", length = 255)
    @ExcelVOAttribute(name = "password", column = "C")
    private String password;

    @AutoField(alias = "email", column = "email", length = 255)
    @ExcelVOAttribute(name = "email", column = "D")
    private String email;

    @AutoField(alias = "phone", column = "phone", length = 255)
    @ExcelVOAttribute(name = "phone", column = "E")
    private String phone;

    @AutoField(alias = "addr", column = "addr", length = 255)
    @ExcelVOAttribute(name = "addr", column = "F")
    private String addr;

    @AutoField(alias = "country", column = "country", isRequired = true, length = 255)
    @ExcelVOAttribute(name = "country", column = "G")
    private String country;

    @AutoField(alias = "city", column = "city", isRequired = true, length = 255)
    @ExcelVOAttribute(name = "city", column = "H")
    private String city;

    @AutoField(alias = "region", column = "region", length = 255)
    @ExcelVOAttribute(name = "region", column = "I")
    private String region;

    @AutoField(alias = "code", column = "code", length = 64)
    @ExcelVOAttribute(name = "code", column = "J")
    private String code;


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
    public String getPassword() {
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email){
        this.email = email;
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
    public String getCountry() {
        return country;
    }
    public void setCountry(String country){
        this.country = country;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city){
        this.city = city;
    }
    public String getRegion() {
        return region;
    }
    public void setRegion(String region){
        this.region = region;
    }
    public String getCode() {
        return code;
    }
    public void setCode(String code){
        this.code = code;
    }
}
