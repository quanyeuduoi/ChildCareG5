/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class SliderList {
    private int sliderID;
    private String imageSlider;
    private String author;
    private String tiltePost;

    public SliderList() {
    }

    public SliderList(int sliderID, String imageSlider, String author, String tiltePost) {
        this.sliderID = sliderID;
        this.imageSlider = imageSlider;
        this.author = author;
        this.tiltePost = tiltePost;
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

    public String getTiltePost() {
        return tiltePost;
    }

    public void setTiltePost(String tiltePost) {
        this.tiltePost = tiltePost;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
    
    
}
