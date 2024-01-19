/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Customer;

/**
 *
 * @author Dell
 */
public class CustomerDAO {
     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
     public void forGetPass(String password,String email) {
        try {
            String strSQL="update Products "
                    + "set Password="+password+" "
                    + "where Email="+email+"";
            conn = new DBContext().getConnection();
            ps=conn.prepareStatement(strSQL);
            ps.setString(1, password);
            ps.setDouble(2, Double.parseDouble(email));
            
            rs = ps.executeQuery();
            
        } catch (Exception e) {
            System.out.println("UpdateProduct:"+e.getMessage());
           
        }
    }
}
