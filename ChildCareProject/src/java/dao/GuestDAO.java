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
import model.Account;
import model.Doctor;
import model.DoctorList;

/**
 *
 * @author Dell
 */
public class GuestDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Get list doctor from database
    public List<DoctorList> getAllDoctors() {
        List<DoctorList> doctors = new ArrayList<>();
        String query = "SELECT d.Age, a.FullName, a.Email, dpt.DepartmentName "
                + "FROM Doctor d "
                + "INNER JOIN Account a ON d.docID = a.accountID "
                + "INNER JOIN Department dpt ON d.departmentID = dpt.DepartmentID "
                + "WHERE a.Role = 'Doctor'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                DoctorList doctor = new DoctorList();
                doctor.setAge(rs.getInt("Age"));
                doctor.setFullName(rs.getString("FullName"));
                doctor.setEmail(rs.getString("Email"));
                doctor.setDepartName(rs.getString("DepartmentName"));
                doctors.add(doctor);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return doctors;
    }

    //Search doctor by name
    public List<DoctorList> searchDoctorByName(String txtFullnameSearch) {
    List<DoctorList> dlist = new ArrayList<>();
    String query = "SELECT d.Age, a.FullName, a.Email, dpt.DepartmentName "
                 + "FROM Doctor d "
                 + "INNER JOIN Account a ON d.docID = a.accountID "
                 + "INNER JOIN Department dpt ON d.departmentID = dpt.DepartmentID "
                 + "WHERE a.Role = 'Doctor' AND a.FullName LIKE ?";
    try {
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, "%" + txtFullnameSearch + "%");
        rs = ps.executeQuery();
        while (rs.next()) {
            DoctorList doctor = new DoctorList();
            doctor.setAge(rs.getInt("Age"));
            doctor.setFullName(rs.getString("FullName"));
            doctor.setEmail(rs.getString("Email"));
            doctor.setDepartName(rs.getString("DepartmentName"));
            dlist.add(doctor);
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    return dlist;
}


    

}
