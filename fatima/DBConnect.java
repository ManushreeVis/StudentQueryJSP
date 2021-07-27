/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbutil;
import java.sql.*;

public class DBConnect {
    public Connection c=null;
    public DBConnect() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        c=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentquery","root","root");
    }
    public void QueryExecuter(String sql)throws Exception{
        Statement s=c.createStatement();
        s.execute(sql);
        s.close();
        c.close();
        
    
    }
    public ResultSet QueryReturner(String sql)throws Exception{
        Statement s=c.createStatement();
        ResultSet rs= s.executeQuery(sql);
        return rs;
        
    }
}
