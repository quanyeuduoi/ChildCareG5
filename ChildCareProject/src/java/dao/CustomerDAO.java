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
    
    //Login for customer by email, password
    public Customer login(String Email, String Password) {
        try {
            String query = "SELECT *\n"
                    + "  FROM Customer where [Email] = ? and [Password] = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Email);
            ps.setString(2, Password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
            }
        } catch (Exception ex) {
        }
        return null;
    }
<<<<<<< HEAD
    //Edit profile
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
=======
>>>>>>> origin/main
}
