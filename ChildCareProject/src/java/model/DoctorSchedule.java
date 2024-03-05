/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Dell
 */
public class DoctorSchedule {
    private int docID;
    private String doctorName;
    private Date date;
    private int slot;
    private int age;
    private String doctorAvatar;
    private String department;
    private String slotTime;
    
    public DoctorSchedule() {
    }

    public DoctorSchedule(String slotTime) {
        this.slotTime = slotTime;
    }

    
    public DoctorSchedule(int docID, String doctorName, Date date, int slot, int age, String doctorAvatar, String department) {
        this.docID = docID;
        this.doctorName = doctorName;
        this.date = date;
        this.slot = slot;
        this.age = age;
        this.doctorAvatar = doctorAvatar;
        this.department = department;
    }

    public String getSlotTime() {
        return slotTime;
    }

    public void setSlotTime(String slotTime) {
        this.slotTime = slotTime;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDoctorAvatar() {
        return doctorAvatar;
    }

    public void setDoctorAvatar(String doctorAvatar) {
        this.doctorAvatar = doctorAvatar;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    

    public int getDocID() {
        return docID;
    }

    public void setDocID(int docID) {
        this.docID = docID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }
    
    
}
