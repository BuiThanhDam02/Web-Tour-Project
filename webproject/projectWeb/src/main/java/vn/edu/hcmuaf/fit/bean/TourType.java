package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

/*
Class TourType chứa thông tin các loại hình du lịch trong 1 Tour du lịch
Tạo bởi Nguyễn Hữu Đạt 20130224
Cập nhật bởi Nguyễn Hữu Đạt 20130224
 */

public class TourType implements Serializable {
    //Khai báo biến
    private String tour_id;
    private int type;
    private float giaVe;

    //Tạo constructor
    public TourType(String tour_id, int type, float giaVe) {
        this.tour_id = tour_id;
        this.type = type;
        this.giaVe = giaVe;
    }
    //Tạo getter và setter
    public String getTour_id() {
        return tour_id;
    }

    public void setTour_id(String tour_id) {
        this.tour_id = tour_id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public float getGiaVe() {
        return giaVe;
    }

    public void setGiaVe(float giaVe) {
        this.giaVe = giaVe;
    }
    //Hàm toString
    @Override
    public String toString() {
        return "TourType{" +
                "tour_id='" + tour_id + '\'' +
                ", type=" + type +
                ", giaVe=" + giaVe +
                '}';
    }

}
