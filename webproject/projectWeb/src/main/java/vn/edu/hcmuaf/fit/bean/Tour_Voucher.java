package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
/*
Class Tour_Voucher chứa thông tin 1 Voucher của Tour du lịch
Tạo bởi Nguyễn Hữu Đạt 20130224
Cập nhật bởi Nguyễn Hữu Đạt 20130224
 */
public class Tour_Voucher implements Serializable {
    //Khai báo biến
    private String tour_id;
    private String voucher_id;
    //Tạo constructor
    public Tour_Voucher(String tour_id, String voucher_id) {
        this.tour_id = tour_id;
        this.voucher_id = voucher_id;
    }

    //Tạo các getter và setter
    public String getTour_id() {
        return tour_id;
    }

    public void setTour_id(String tour_id) {
        this.tour_id = tour_id;
    }

    public String getVoucher_id() {
        return voucher_id;
    }

    public void setVoucher_id(String voucher_id) {
        this.voucher_id = voucher_id;
    }

    //Hàm toString
    @Override
    public String toString() {
        return "Tour_Voucher{" +
                "tour_id='" + tour_id + '\'' +
                ", voucher_id='" + voucher_id + '\'' +
                '}';
    }
}
