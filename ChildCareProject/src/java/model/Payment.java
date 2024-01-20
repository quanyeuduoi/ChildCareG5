/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author VINH NINH
 */
public class Payment {
    int payID,serviceID,price;
    String servicename,status;
    public Payment() {
    }

    public Payment( String servicename, int price,String status) {
       
        this.servicename = servicename;
        this.price = price;
        this.status = status;
    }

    public int getPayID() {
        return payID;
    }

    public int getServiceID() {
        return serviceID;
    }

    public String getServicename() {
        return servicename;
    }

    public int getPrice() {
        return price;
    }

    public void setPayID(int payID) {
        this.payID = payID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public void setServicename(String servicename) {
        this.servicename = servicename;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }
    
    
    
}
