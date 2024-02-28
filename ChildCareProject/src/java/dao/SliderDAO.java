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
                return new Post(rs.getInt(1));
            }
        } catch (Exception e) {
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

    //Add new slider 
    public Slider addSlider(String imageSlider, int marketingID, int postID) {
        String query = "INSERT INTO [dbo].[Slider]\n"
                + "           ([ImageSlider]\n"
                + "           ,[MarketingID]\n"
                + "           ,[PostID])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, imageSlider);
            ps.setInt(2, marketingID);
            ps.setInt(3, postID);
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

    //Delete the slider
    public void deleteSlider(int sliderID) {
        String query = "DELETE FROM [dbo].[Slider]\n"
                + "      WHERE SliderID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, sliderID);
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

    //Edit slider
    public void editSlider(String imageSlider, int marketingID, int postID, int sliderID) {
        String query = "UPDATE [dbo].[Slider]\n"
                + "   SET [ImageSlider] = ?\n"
                + "      ,[MarketingID] = ?\n"
                + "      ,[PostID] = ?\n"
                + " WHERE [SliderID] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, imageSlider);
            ps.setInt(2, marketingID);
            ps.setInt(3, postID);
            ps.setInt(4, sliderID);
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

    //Get slider information by sliderID
    public SliderList getSliderByID(int sliderID) {
        String query = "SELECT S.SliderID, S.ImageSlider,  A.FullName AS MarketingFullName, P.PostTitle AS PostTitle FROM Slider S\n"
                + "             INNER JOIN \n"
                + "             Marketing M ON S.MarketingID = M.MarketingID\n"
                + "             INNER JOIN\n"
                + "             Account A ON M.MarketingID = A.AccountID\n"
                + "             INNER JOIN\n"
                + "             Post P ON S.PostID = P.PostID\n"
                + "Where SliderID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, sliderID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new SliderList(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4)
                );
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
        return null;
    }

    //Search slider by post's title
    public List<SliderList> searchSliderByTitle(String txtSearch) {
        List<SliderList> sliders = new ArrayList<>();
        String query = "SELECT S.SliderID, S.ImageSlider,  A.FullName AS MarketingFullName, P.PostTitle AS PostTitle FROM Slider S\n"
                + "             INNER JOIN \n"
                + "             Marketing M ON S.MarketingID = M.MarketingID\n"
                + "             INNER JOIN\n"
                + "             Account A ON M.MarketingID = A.AccountID\n"
                + "             INNER JOIN\n"
                + "             Post P ON S.PostID = P.PostID\n"
                + "Where PostTitle like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
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
        

    public static void main(String[] args) {
        // Khởi tạo đối tượng SliderDAO
        SliderDAO sliderDAO = new SliderDAO();

//        // Gọi phương thức getListAllSlider() để lấy danh sách slider
//        List<SliderList> sliders = sliderDAO.getListAllSlider();
//        List<Post> post = sliderDAO.getListPostTitle();
//
//        // In ra kết quả
//        for (SliderList slider : sliders) {
//            System.out.println("Slider ID: " + slider.getSliderID());
//            System.out.println("Image Slider: " + slider.getImageSlider());
//            System.out.println("Marketing Full Name: " + slider.getAuthor());
//            System.out.println("Post Title: " + slider.getTiltePost());
//            System.out.println("--------------------------------------");
//        }
//
//        for (Post p : post) {
//            System.out.println("Post Title: " + p.getPostTitle());
//        }
        // Test hàm getPostIDByTitle
        String titleToTest = "Title Post"; // Thay thế bằng tiêu đề muốn kiểm tra
        Post postByID = sliderDAO.getPostIDByTitle(titleToTest);
        if (postByID != null) {
            System.out.println("Post ID for title '" + titleToTest + "' is: " + postByID.getPostID());
        } else {
            System.out.println("No post found with title: " + titleToTest);
        }
    }
}
