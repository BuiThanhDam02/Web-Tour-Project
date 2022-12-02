package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

/*
Class TourDetail chứa thông tin hình ảnh của 1 Trang chi tiết Tour du lịch
Tạo bởi Nguyễn Hữu Đạt 20130224
Cập nhật bởi Nguyễn Hữu Đạt 20130224
 */

public class TourDetail_Image implements Serializable {
    //Khai báo biến
    private String tour_id;
    private String imageURL;
    //Tạo constructor
    public TourDetail_Image(String tour_id, String imageURL) {
        this.tour_id = tour_id;
        this.imageURL = imageURL;
    }
    //Tạo getter và setter
    public String getTour_id() {
        return tour_id;
    }

    public void setTour_id(String tour_id) {
        this.tour_id = tour_id;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }
    //Hàm toString
    @Override
    public String toString() {
        return "TourDetail_Image{" +
                "tour_id='" + tour_id + '\'' +
                ", imageURL='" + imageURL + '\'' +
                '}';
    }
}
