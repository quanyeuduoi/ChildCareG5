/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class DoctorList {
    private int docID;
    private int age;
    private String fullName;
    private String email;
    private String departName;
    private String doctorPicture;

    public DoctorList() {
    }

    public DoctorList(int docID, int age, String fullName, String email, String departName) {
        this.docID = docID;
        this.age = age;
        this.fullName = fullName;
        this.email = email;
        this.departName = departName;
    }
    public DoctorList(int docID, int age, String fullName, String email, String departName, String doctorPicture) {
        this.docID = docID;
        this.age = age;
        this.fullName = fullName;
        this.email = email;
        this.departName = departName;
        this.doctorPicture = doctorPicture;
    }

    public String getDoctorPicture() {
        return doctorPicture;
    }

    public void setDoctorPicture(String doctorPicture) {
        this.doctorPicture = doctorPicture;
    }

    public int getDocID() {
        return docID;
    }

    public void setDocID(int docID) {
        this.docID = docID;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDepartName() {
        return departName;
    }

    public void setDepartName(String departName) {
        this.departName = departName;
    }
    
    
}
