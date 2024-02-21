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
import java.util.List;
import model.DoctorList;
import model.SliderList;
import model.Slider;
import model.Post;

/**
 *
 * @author Dell
 */
public class SliderDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Get list slider for slider management page
    public List<SliderList> getListAllSlider() {
        List<SliderList> sliders = new ArrayList<>();
        String query = "SELECT \n"
                + "    S.SliderID,\n"
                + "    S.ImageSlider,\n"
                + "    A.FullName AS MarketingFullName,\n"
                + "    P.PostTitle AS PostTitle\n"
                + "FROM \n"
                + "    Slider S\n"
                + "INNER JOIN \n"
                + "    Marketing M ON S.MarketingID = M.MarketingID\n"
                + "INNER JOIN \n"
                + "    Account A ON M.MarketingID = A.AccountID\n"
                + "INNER JOIN \n"
                + "    Post P ON S.PostID = P.PostID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                SliderList slider = new SliderList();
                slider.setSliderID(rs.getInt("SliderID"));
                slider.setImageSlider(rs.getString("ImageSlider"));
                slider.setAuthor(rs.getString("MarketingFullName"));
                slider.setTiltePost(rs.getString("PostTitle"));
                sliders.add(slider);
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
        return sliders;
    }

    //Get list all the post's title for slider
    public List<Post> getListPostTitle() {
        List<Post> postTitles = new ArrayList<>();
        String query = "select PostID, PostTitle from Post";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                postTitles.add(new Post(
                        rs.getInt(1),
                        rs.getString(2)));
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
        return postTitles;
    }

    //Get postID by post title for slider
    public Post getPostIDByTitle(String title) {
        String query = "select PostID from Post where PostTitle = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Post(rs.getInt(1),
                        rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //Add new slider 
    public Slider addSlider(String imageSlider, int marketingID, int postID) {
        String query = "INSERT INTO [dbo].[Slider]\n"
                + "           ([ImageSlider]\n"
                + "           ,[MarketingID]\n"
                + "           ,[PostID])\n"
                + "     VALUES\n"
                + "           (?,?,?)"
                + "GO";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, imageSlider);
            ps.setInt(2, marketingID);
            ps.setInt(3, postID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        // Khởi tạo đối tượng SliderDAO
        SliderDAO sliderDAO = new SliderDAO();

        // Gọi phương thức getListAllSlider() để lấy danh sách slider
        List<SliderList> sliders = sliderDAO.getListAllSlider();
        List<Post> post = sliderDAO.getListPostTitle();

        // In ra kết quả
        for (SliderList slider : sliders) {
            System.out.println("Slider ID: " + slider.getSliderID());
            System.out.println("Image Slider: " + slider.getImageSlider());
            System.out.println("Marketing Full Name: " + slider.getAuthor());
            System.out.println("Post Title: " + slider.getTiltePost());
            System.out.println("--------------------------------------");
        }

        for (Post p : post) {
            System.out.println("Post Title: " + p.getPostTitle());
        }
    }
}
