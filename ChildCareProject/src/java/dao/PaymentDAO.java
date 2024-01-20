/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Payment;
import context.DBContext;
import java.util.ArrayList;
/**
 *
 * @author VINH NINH
 */
public class PaymentDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public ArrayList<Payment> paymentList(int id) {
        ArrayList<Payment> data=new ArrayList<Payment>();
        try {
            String query = "Select Service.ServiceName, abc.Price \n" +
"from Service join (Select Payment.PayID,Payment.ServiceID,Payment.Price,PaymentList.CustomerID from PaymentList join Payment on PaymentList.PayID = Payment.PayID) \n" +
"as abc on Service.ServiceID = abc.ServiceID where abc.CustomerID= ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);

            rs = ps.executeQuery();
            while (rs.next()) {
                String name=rs.getString(1);
                int price=rs.getInt(2);
                   Payment p= new Payment(name,price);     
                data.add(p);
                
            }
        } catch (Exception ex) {
        }
        return data;
    }
}
