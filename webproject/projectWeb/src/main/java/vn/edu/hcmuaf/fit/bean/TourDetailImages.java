package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

/*
Class TourDeailImages chứa thông tin 1 hình ảnh chi tiết của Tour
Tạo bởi Trương Anh Thy 20130131
Cập nhật bởi Trương Anh Thy 20130131 

*/


public class TourDetailImages implements Serializable {
   private String TOUR_ID ;
   private String ImageURL ;
   //non constructor
   public  TourDetailImages(){

   }

    public TourDetailImages(String TOUR_ID, String imageURL) {
        this.TOUR_ID = TOUR_ID;
        this.ImageURL = imageURL;
    }

    //getter setter

    public String getTOUR_ID() {
        return TOUR_ID;
    }

    public void setTOUR_ID(String TOUR_ID) {
        this.TOUR_ID = TOUR_ID;
    }

    public String getImageURL() {
        return ImageURL;
    }

    public void setImageURL(String imageURL) {
        ImageURL = imageURL;
    }

    //

    @Override
    public String toString() {
        return "TourDetailImages{" +
                "TOUR_ID='" + TOUR_ID + '\'' +
                ", ImageURL='" + ImageURL + '\'' +
                '}';
    }
}
