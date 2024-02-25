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
    
    //Login for customer by email, password
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
                        rs.getString(6),
                        rs.getString(7)
                );
            }
        } catch (Exception ex) {
        }
        return null;
    }
    public void UpdatePassword(Account acc){
        String query = "UPDATE Account SET [Password] = ? WHERE [Email] = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, acc.getPassword());
            ps.setString(2, acc.getEmail());
            ps.executeUpdate(); 
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
