/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.DoctorList;
import model.DoctorSchedule;

/**
 *
 * @author Dell
 */
public class ManagerDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<DoctorSchedule> getSchedulesByDocID(int docID) {
        List<DoctorSchedule> doctorSchedules = new ArrayList<>();
        String query = "SELECT DSL.DocID, S.Date, S.Slot\n"
                + "FROM DoctorSchedueList DSL\n"
                + "JOIN Schedue S ON DSL.SchueduleID = S.SchueduleID where DSL.DocID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, docID);
            rs = ps.executeQuery();
            while (rs.next()) {
                DoctorSchedule doctorSchedule = new DoctorSchedule();
                doctorSchedule.setDocID(rs.getInt("DocID"));
                doctorSchedule.setDate(rs.getDate("Date"));
                doctorSchedule.setSlot(rs.getInt("Slot"));
                doctorSchedules.add(doctorSchedule);
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
        return doctorSchedules;
    }

    public List<String> getAllSlotByDay(int docID, String date) {
        List<String> slotTimes = new ArrayList<>();
        String query = "SELECT sl.TimeSlot\n"
                + "FROM DoctorSchedueList DSL\n"
                + "JOIN Schedue S ON DSL.SchueduleID = S.SchueduleID\n"
                + "JOIN Slot sl ON S.Slot = sl.SlotID\n"
                + "WHERE DSL.DocID = ? AND CONVERT(DATE, S.Date) = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, docID);
            ps.setString(2, date);
            rs = ps.executeQuery();
            while (rs.next()) {
                slotTimes.add(rs.getString("TimeSlot"));
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
        return slotTimes;
    }

    //Get list doctor for the doctor management
    public List<DoctorList> getAllDoctorsForManager() {
        List<DoctorList> doctors = new ArrayList<>();
        String query = "SELECT d.Age, a.FullName, a.Email, dpt.DepartmentName,d.DoctorAvatar, d.DocID\n"
                + "                FROM Doctor d \n"
                + "                INNER JOIN Account a ON d.docID = a.accountID \n"
                + "                INNER JOIN Department dpt ON d.departmentID = dpt.DepartmentID \n"
                + "                WHERE a.Role = 'Doctor'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                DoctorList doctor = new DoctorList();
                doctor.setDocID(rs.getInt("DocID"));
                doctor.setAge(rs.getInt("Age"));
                doctor.setFullName(rs.getString("FullName"));
                doctor.setEmail(rs.getString("Email"));
                doctor.setDepartName(rs.getString("DepartmentName"));
                doctor.setDoctorPicture(rs.getString("DoctorAvatar"));
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

    public static void main(String[] args) {
        ManagerDAO doctorDAO = new ManagerDAO();

//        // Gọi phương thức để lấy danh sách tất cả các bác sĩ cho quản lý
//        List<DoctorList> doctors = doctorDAO.getAllDoctorsForManager();
//
//        // In thông tin của từng bác sĩ
//        for (DoctorList doctor : doctors) {
//            System.out.println("Doctor ID: " + doctor.getDocID());
//            System.out.println("Age: " + doctor.getAge());
//            System.out.println("Full Name: " + doctor.getFullName());
//            System.out.println("Email: " + doctor.getEmail());
//            System.out.println("Department Name: " + doctor.getDepartName());
//            System.out.println("Doctor Avatar: " + doctor.getDoctorPicture());
//            System.out.println("----------------------------------------");
//        }
        int docID = 3; // Thay đổi docID theo nhu cầu
        String date = "2024-02-27"; // Thay đổi date theo nhu cầu

// Gọi hàm getAllSlotByDay để lấy danh sách khe trống
        List<String> slotTimes = doctorDAO.getAllSlotByDay(docID, date);

// In ra danh sách khe trống
        if (slotTimes.isEmpty()) {
            System.out.println("Không có khe trống cho bác sĩ có ID " + docID + " vào ngày " + date);
        } else {
            System.out.println("Danh sách khe trống cho bác sĩ có ID " + docID + " vào ngày " + date + ":");
            for (String slotTime : slotTimes) {
                System.out.println(slotTime);
            }
        }

    }
}