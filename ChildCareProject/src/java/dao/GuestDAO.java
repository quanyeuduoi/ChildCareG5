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
                        rs.getInt("departmentID")));
            }
        } catch (Exception e) {
        }
        return dlist;
    }

     public static void main(String[] args) {
        GuestDAO guestDAO = new GuestDAO();

        // Retrieve the list of doctors
        List<Doctor> doctorList = guestDAO.getAllDoctor();

        // Display the information for each doctor
        for (Doctor doctor : doctorList) {
            System.out.println("Doctor ID: " + doctor.getDocID());
            System.out.println("Full Name: " + doctor.getFullName());
            System.out.println("Age: " + doctor.getAge());
            System.out.println("Department ID: " + doctor.getDepartmentID());
            System.out.println("------------------------------------");
        }
    }


 
}
