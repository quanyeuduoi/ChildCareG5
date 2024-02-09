/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;
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
            String strSQL="UPDATE dbo.[Account] SET [Password] = ? WHERE [Email] = ? ";
                    
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(strSQL);
            ps.setString(1, password);
            ps.setString(2, email);
            
            rs = ps.executeQuery();
            
        } catch (Exception e) {
            System.out.println("UpdateProduct:"+e.getMessage());
           
        }
    }
     
      public Account login(String Email, String Password) {
        try {
            String query = "SELECT *\n"
                    + "  FROM Account where [Email] = ? and [Password] = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Email);
            ps.setString(2, Password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }
        } catch (Exception ex) {
        }
        return null;
    }
     
      public boolean forGetPassCheckMail(String email) {
        try {
            String strSQL="select * from Customer where Email = ? ";
                    
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(strSQL);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while(rs.next()){
                return true;
        }
        } catch (Exception e) {
            System.out.println("UpdateProduct:"+e.getMessage());
           
        }
        return false;
    }
      
      public boolean editProfile(String email, String phone, String address, String fullName){
        try {
            String query = "update Customer "
                    + "set Fullname=?,Phonenumber=?,Address=? "
                    + "where email=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, phone);
            ps.setString(3, address);
            ps.setString(4, email);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("editProfile:" + e.getMessage());
            return false;
        }
    }
      
    public void UpdatePassword(Account cus){
        String query = "UPDATE [dbo].[Account] SET [Password] = ? WHERE [Email] = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cus.getPassword());
            ps.setString(2, cus.getEmail());
            ps.executeUpdate(); 
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
