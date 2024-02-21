package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Dell
 */
public class Slider {
    int sliderID;
    String imageSlider;
    int marketingID;
    int postID;

    public Slider() {
    }

    public Slider(int sliderID, String imageSlider, int marketingID, int postID) {
        this.sliderID = sliderID;
        this.imageSlider = imageSlider;
        this.marketingID = marketingID;
        this.postID = postID;
    }

    public int getSliderID() {
        return sliderID;
    }

    public void setSliderID(int sliderID) {
        this.sliderID = sliderID;
    }

    public String getImageSlider() {
        return imageSlider;
    }

    public void setImageSlider(String imageSlider) {
        this.imageSlider = imageSlider;
    }

    public int getMarketingID() {
        return marketingID;
    }

    public void setMarketingID(int marketingID) {
        this.marketingID = marketingID;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }
    
}
