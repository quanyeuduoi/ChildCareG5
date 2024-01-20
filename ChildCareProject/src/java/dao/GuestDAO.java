/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Doctor;

/**
 *
 * @author Dell
 */
public class GuestDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Doctor> getAllDoctor() {
        List<Doctor> dlist = new ArrayList<>();
        String query = "select * from Doctor";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                dlist.add(new Doctor(rs.getInt("docID"),
                        rs.getString("fullName"),
                        rs.getInt("age"),
                        rs.getString("department")));
            }
        } catch (Exception e) {
        }
        return dlist;
    }
 
}
