/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author ACER NQC0821
 */
public class AccountDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Account> getAllAccount(){
        ArrayList<Account> accounts = new ArrayList<>();
        String query = " SELECT * FROM [ChildCare].[dbo].[Account]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                accounts.add(acc); 
            }
//              return accounts;
        } catch (Exception e) {
            System.out.println("getAllAccount:" +e.getMessage());
        }
         return accounts;
    }

    public ArrayList<Account> getAccountByWord(String text){
        ArrayList<Account> accounts = new ArrayList<>();
        String query = " SELECT [AccountID]\n"
                + "      ,[Email]\n"
                + "      ,[Password]\n"
                + "      ,[Role]\n"
                + "      ,[OTP]\n"
                + "      ,[FullName]\n"
                + "      ,[Status]\n"
                + "  FROM [ChildCare].[dbo].[Account]"
                + "  Where Email like ? or FullName like ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + text + "%");
            ps.setString(2, "%" + text + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                accounts.add(acc);
            }
        } catch (Exception e) {

        }
        return accounts;
    }

    public ArrayList<Account> getAccountByRole(String role){
        ArrayList<Account> accounts = new ArrayList<>();
        String query = " SELECT [AccountID]\n"
                + "      ,[Email]\n"
                + "      ,[Password]\n"
                + "      ,[Role]\n"
                + "      ,[OTP]\n"
                + "      ,[FullName]\n"
                + "      ,[Status]\n"
                + "  FROM [ChildCare].[dbo].[Account]"
                + "  Where Role = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, role);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                accounts.add(acc);
            }
        } catch (Exception e) {

        }
        return accounts;
    }

    public ArrayList<Account> getAccountByStatus(String status){
        ArrayList<Account> accounts = new ArrayList<>();
        String query = " SELECT [AccountID]\n"
                + "      ,[Email]\n"
                + "      ,[Password]\n"
                + "      ,[Role]\n"
                + "      ,[OTP]\n"
                + "      ,[FullName]\n"
                + "      ,[Status]\n"
                + "  FROM [ChildCare].[dbo].[Account]"
                + "  Where Status = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                accounts.add(acc);
            }
        } catch (Exception e) {

        }
        return accounts;
    }

    public ArrayList<Account> getByFilter(String text, String role, String status){
        ArrayList<Account> accounts = new ArrayList<>();
        String query = " SELECT [AccountID]\n"
                + "      ,[Email]\n"
                + "      ,[Password]\n"
                + "      ,[Role]\n"
                + "      ,[OTP]\n"
                + "      ,[FullName]\n"
                + "      ,[Status]\n"
                + "  FROM [ChildCare].[dbo].[Account]"
                + "  Where (Email like ? or FullName like ?)  "
                + " and Role like ? and Status like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + text + "%");
            ps.setString(2, "%" + text + "%");
            ps.setString(3, "%" + text + "%");
            ps.setString(4, "%" + text + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
                accounts.add(acc);
            }
        } catch (Exception e) {

        }
        return accounts;

    }
    
//        public ArrayList getByFilter(String text, String role, String status) throws SQLException {
//        ArrayList<Account> accounts = new ArrayList<>();
//        AccountDAO adao = new AccountDAO();
//        ArrayList<Account> listaccount = adao.getAllAccount();
//            for (Account acc : listaccount) {
//                if(acc.)
//            }
//        
//        return accounts;
//
//    }
    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        ArrayList<Account> list = dao.getAllAccount();
        for(Account acc: list){
            System.out.println(acc);
        }
    }
    
}
