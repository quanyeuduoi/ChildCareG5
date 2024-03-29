/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Post {
    private int postID;
    private String postTitle;
    private String postDetail;
    private String postShort;
    private String image;

    public Post(int postID, String postTitle, String postDetail, String postShort, String image) {
        this.postID = postID;
        this.postTitle = postTitle;
        this.postDetail = postDetail;
        this.postShort = postShort;
        this.image = image;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostDetail() {
        return postDetail;
    }

    public void setPostDetail(String postDetail) {
        this.postDetail = postDetail;
    }

    public String getPostShort() {
        return postShort;
    }

    public void setPostShort(String postShort) {
        this.postShort = postShort;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
    
}
