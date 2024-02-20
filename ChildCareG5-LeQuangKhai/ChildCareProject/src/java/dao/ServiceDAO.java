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
import model.Service;

/**
 *
 * @author ACER NQC0821
 */
public class ServiceDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public ArrayList<Service> getServiceList() {
       ArrayList<Service> serviceList = new ArrayList<>();
        try {
            String sql = "Select * from Service";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Service service = new Service(rs.getInt(1), rs.getString(2),
                        rs.getString(3)
                );
                serviceList.add(service);
            }
            return serviceList;
        } catch (Exception e) {
            System.out.println("serviceList:" + e.getMessage());
            return null;
        }
    }
    
    public ArrayList<Service> getServiceByID(String depID){
         ArrayList<Service> serviceListByID = new ArrayList<>();
        try {
            String sql = "Select * from Service Where DepartmentID = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,depID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Service service = new Service(rs.getInt(1), rs.getString(2),
                        rs.getString(3)
                );
                serviceListByID.add(service);
            }
            return serviceListByID;
        } catch (Exception e) {
            System.out.println("serviceListByID:" + e.getMessage());
            return null;
        }
    }
    
public ArrayList<Service> pagingList(int index) {
        ArrayList<Service> list = new ArrayList<>();
        String query = "Select * from Service\n"
                + "Order by ServiceID\n"
                + "Offset ? ROWS FETCH NEXT 4 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index-1)*4);  //in the database, if you want to see 5 first post then offset = 0, 5 post page => 5,....
            rs = ps.executeQuery();
            while (rs.next()) {
                Service service = new Service(rs.getInt(1), rs.getString(2),
                        rs.getString(3)
                );
                list.add(service);
            }
        } catch (Exception e) {
            System.out.println("pagingList:" + e.getMessage());
        }
        return list;
    } 

     public int getTotalService() {

        try {
            String query = "Select count(*) from Service";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
            System.out.println("count:" + e.getMessage());

        }
        return 0;
    }
    
    public static void main(String[] args) {
        ServiceDAO sdao = new ServiceDAO();
        int count = sdao.getTotalService();
        System.out.println(count);
        
//        for(Service s : lists){
//            System.out.println(s);
//        }
    }
}