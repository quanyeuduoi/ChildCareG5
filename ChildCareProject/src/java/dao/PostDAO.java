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
import model.Post;
import jakarta.servlet.http.Part;
/**
 *
 * @author Admin
 */
public class PostDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Post> getPostList() {
        ArrayList<Post> postList = new ArrayList<Post>();
        try {
            String sql = "select * from Post order by PostID asc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post(rs.getInt("PostID"),
                        rs.getString("Detail"), rs.getString("Image"), rs.getString("PostTitlie"), rs.getString("PostShort"),rs.getInt("ServiceID")
                );
                postList.add(post);
            }
            return postList;
        } catch (Exception e) {
            System.out.println("postList:" + e.getMessage());
            return null;
        }
    }
    
     public byte[] getImageInPostList(int pid) {
        
        try {
            String sql = "Select Image from Post whrere PostID=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
             ps.setInt(1, pid);
            rs = ps.executeQuery();
           
           return rs.getBytes(1);
        } catch (Exception e) {
            System.out.println("getImageInPostList:" + e.getMessage());
            return null;
        }
    }
     public String createPost(String detail,String title,String pshort,String image,int serviceid,int mid) {
         try {
            String query = "insert into Post(Detail,ServiceID,Image, PostTitlie,PostShort,MarketingID) values(?,?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, detail);
            ps.setInt(2, serviceid);
            ps.setString(3, image);
            ps.setString(4, title);
            ps.setString(5, pshort);
            ps.setInt(6, mid);
            ps.executeUpdate();
            return "Create Succesfully!";
        } catch (Exception e) {
             System.out.println("createPost:" +e.getMessage());
             return "Create Fail!";
        }
        
         
     }
    

    public ArrayList<Post> pagingList(int index) {
        ArrayList<Post> list = new ArrayList<Post>();
        String query = "Select * from Post\n"
                + "Order by PostID\n"
                + "Offset ? ROWS FETCH NEXT 5 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 5);  //in the database, if you want to see 5 first post then offset = 0, 5 post page => 5,....
            rs = ps.executeQuery();
            while (rs.next()) {
                Post post = new Post(rs.getInt("PostID"),
                        rs.getString("Detail"), rs.getString("Image"), rs.getString("PostTitlie"), rs.getString("PostShort")
                );
                list.add(post);
            }
        } catch (Exception e) {
            System.out.println("pagingList:" + e.getMessage());
        }
        return list;
    }

    public int getTotalPost() {

        try {
            String query = "Select count(*) from Post";
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

    public Post getPostByID(int postID) {
        try {
            String query = "select * from Post  where PostID = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, postID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Post(rs.getInt("PostID"),
                        rs.getString("Detail"), rs.getString("Image"), rs.getString("PostTitlie"), rs.getString("PostShort"),rs.getInt("ServiceID"));
            }
        } catch (Exception e) {
            System.out.println("getPostByID:" + e.getMessage());
        }
        return null;
    }
}
