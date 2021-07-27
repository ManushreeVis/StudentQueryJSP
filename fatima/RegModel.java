/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dbutil.DBConnect;
import java.sql.ResultSet;

public class RegModel {
String email;
String name;
String pass;
String mobile;
String utype;
String branch;

    @Override
    public String toString() {
        return "RegModel{" + "email=" + email + ", name=" + name + ", pass=" + pass + ", mobile=" + mobile + ", utype=" + utype + ", branch=" + branch + '}';
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUtype() {
        return utype;
    }

    public void setUtype(String utype) {
        this.utype = utype;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public RegModel(String email, String name, String pass, String mobile, String utype, String branch) {
        this.email = email;
        this.name =  name;
        this.pass =  pass;
        this.mobile= mobile;
        this.utype=  utype;
        this.branch= branch;
    }
public void submit() throws Exception{
    DBConnect x=new DBConnect();
    x.QueryExecuter("insert into reg values('"+
            name+"','"+
            email+"','"+
            pass+"','"+
            mobile+"','"+
            utype+"','"+
            branch+"')");
}
public boolean checkUser(String e,String p)throws Exception{
    
    DBConnect x=new DBConnect();
    ResultSet rs=x.QueryReturner(
    "Select *from reg where email='"+e+"'and password='"+p+"'");
    if(rs.next()){//means database se record aaya hai
        this.name=rs.getString(1);
        this.email=rs.getString(2);
        this.pass=rs.getString(3);
        this.mobile=rs.getString(4);
        this.utype=rs.getString(5);
        this.branch=rs.getString(6);
        return true;
    }
    return false;
        
}
public RegModel(){
    
}
        
        }
