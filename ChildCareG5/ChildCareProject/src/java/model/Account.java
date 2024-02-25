/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class Account {
    int accountID;
    String email;
    String password;
    String role;
    String otp;
    String fullName;
    String status;

    public Account() {
    }

    public Account(int accountID, String email, String password, String role, String otp, String fullName, String status) {
        this.accountID = accountID;
        this.email = email;
        this.password = password;
        this.role = role;
        this.otp = otp;
        this.fullName = fullName;
        this.status = status;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Account{" + "accountID=" + accountID + ", email=" + email + ", password=" + password + ", role=" + role + ", otp=" + otp + ", fullName=" + fullName + ", status=" + status + '}';
    }

    
}
