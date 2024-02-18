/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import jakarta.servlet.http.Part;

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
    private int serviceID;
    public Post(int postID, String postDetail, String image, String postTitle, String postShort,int serviceID) {
        this.postID = postID;
        this.postDetail = postDetail;
        this.image = image;
        this.postTitle = postTitle;
        this.postShort = postShort;
        this.serviceID = serviceID;
    }

    public Post(int postID, String postDetail, String image, String postTitle, String postShort) {
       this.postID = postID;
        this.postDetail = postDetail;
        this.image = image;
        this.postTitle = postTitle;
        this.postShort = postShort;
    }

    
    public Post() {
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

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

}
