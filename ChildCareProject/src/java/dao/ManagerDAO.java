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
import model.Slot;

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
        String query = "SELECT DocID, Date, Slot\n"
                + "            FROM Schedue \n"
                + "            WHERE DocID =  ?";
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

    //Lấy slot theo ngày ở trang doctorScheduleManagement
    public List<Slot> getAllSlotByDay(int docID, String date) {
        List<Slot> slotTimes = new ArrayList<>();
        String query = "SELECT sl.SlotID, sl.TimeSlot\n"
                + "                FROM Schedue S\n"
                + "                JOIN Slot sl ON S.Slot = sl.SlotID\n"
                + "                WHERE S.DocID = ? AND CONVERT(DATE, S.Date) = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, docID);
            ps.setString(2, date);
            rs = ps.executeQuery();
            while (rs.next()) {
                Slot slotTime = new Slot();
                slotTime.setSlotID(rs.getInt("SlotID"));
                slotTime.setTimeSlot(rs.getString("TimeSlot"));
                slotTimes.add(slotTime);
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

    //Lấy tất cả slot cho việc edit slot
    public List<Slot> getAllSlot() {
        List<Slot> slotTimes = new ArrayList<>();
        String query = "Select SlotID, TimeSlot from Slot";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Slot slotTime = new Slot();
                slotTime.setSlotID(rs.getInt("SlotID"));
                slotTime.setTimeSlot(rs.getString("TimeSlot"));
                slotTimes.add(slotTime);
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

    //Sửa lịch cho bác sĩ
    public void editSchedule(String date, int slotID, int reservationID, int docID) {
        String query = "UPDATE [dbo].[Schedue]\n"
                + "   SET [Date] = ?\n"
                + "      ,[Slot] = ?\n"
                + "      ,[ReservationID] = ?\n"
                + " WHERE [DocID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setInt(2, slotID);
            ps.setInt(3, reservationID);
            ps.setInt(4, docID);
            ps.executeUpdate();
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
    }

    //Thêm lịch mới cho doctor
    public DoctorSchedule addSchedule(String date, int slotID, int reservationID, int docID) {
        String query = "INSERT INTO [dbo].[Schedue]\n"
                + "           ([Date]\n"
                + "           ,[Slot]\n"
                + "           ,[ReservationID]\n"
                + "           ,[DocID])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setInt(2, slotID);
            ps.setInt(3, reservationID);
            ps.setInt(4, docID);
            ps.executeUpdate();
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
        return null;
    }
    
    //Xóa lịch bác sĩ 
    public void deleteSchedule(int docID) {
        String query = "DELETE FROM [dbo].[Schedue]\n"
                + "      WHERE [DocID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, docID);
            ps.executeUpdate();
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
        List<Slot> slotTimes = doctorDAO.getAllSlotByDay(docID, date);

// In ra danh sách khe trống
        if (slotTimes.isEmpty()) {
            System.out.println("Không có khe trống cho bác sĩ có ID " + docID + " vào ngày " + date);
        } else {
            System.out.println("Danh sách khe trống cho bác sĩ có ID " + docID + " vào ngày " + date + ":");
            for (Slot slotTime : slotTimes) {
                System.out.println(slotTime.getSlotID());
                System.out.println(slotTime.getTimeSlot());
            }
        }

    }
}
