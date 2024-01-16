/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Customer;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Dell
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Register customer
    public Customer addCustomer(String paymentID, String username, String password, String fullName, String phoneNumber,
            String address, String email, String cOTP) {
        String query = "INSERT INTO [dbo].[Customer]\n"
                + "           ([PayID]\n"
                + "           ,[Username]\n"
                + "           ,[Password]\n"
                + "           ,[Fullname]\n"
                + "           ,[Phonenumber]\n"
                + "           ,[Address]\n"
                + "           ,[Email]\n"
                + "           ,[COTP])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, paymentID);
            ps.setString(2, username);
            ps.setString(3, password);
            ps.setString(4, fullName);
            ps.setString(5, phoneNumber);
            ps.setString(6, address);
            ps.setString(8, email);
            ps.setString(9, cOTP);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return null;
    }

    //Send OTP
    public void sendOTPEmail(String subjectMail, String toEmail, String otp) {
        final String fromEmail = "pchildcareg5@gmail.com";
        final String password = "eesx dgaj vcox vrjw";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject(subjectMail);
            message.setText("Your OTP code is: " + otp + ". It will expired after 5 minutes.");

            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
    
    //Check Customer Exist
    public Customer CheckCustomerExist(String Email) {
        String query = "select * from Customer where [Email] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }
}
