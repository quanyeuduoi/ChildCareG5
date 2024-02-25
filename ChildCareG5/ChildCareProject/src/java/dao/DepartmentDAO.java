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
import model.Department;

/**
 *
 * @author ACER NQC0821
 */
public class DepartmentDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
     public ArrayList<Department> getDepartmentList() {
       ArrayList<Department> departmentList = new ArrayList<>();
        try {
            String sql = "Select * from Department";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Department department = new Department(rs.getInt(1), rs.getString(2)            
                );
                departmentList.add(department);
            }
            return departmentList;
        } catch (Exception e) {
            System.out.println("departmentList:" + e.getMessage());
            return null;
        }
    }
     
    //Get department by ID
    public Department getDepartmentByID(int deID){
        String sql = "SELECT * FROM Department where DepartmentID = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(deID, sql);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Department(
                            rs.getInt(1),
                            rs.getString(2));
            }
        } catch(Exception e){
            
        }
        return null;
    }
      
    public static void main(String[] args) {
        ArrayList<Department> list = new ArrayList();
        DepartmentDAO dao = new DepartmentDAO();
        list = dao.getDepartmentList();
        System.out.println(list);
    }
    
}
