package vn.edu.hcmuaf.fit.bean;

import java.sql.Date;

public class TourCart {

    private String TOUR_ID;
    private String tourName;
    private Date NgayKhoiHanh;
    private Date NgayKetThuc;
    private int soLuong;
    private double total;

    public TourCart(String TOUR_ID, String tourName, Date ngayKhoiHanh, Date ngayKetThuc, int soLuong, double total) {
        this.TOUR_ID = TOUR_ID;
        this.tourName = tourName;
        NgayKhoiHanh = ngayKhoiHanh;
        NgayKetThuc = ngayKetThuc;
        this.soLuong = soLuong;
        this.total = total;
    }

    public String getTOUR_ID() {
        return TOUR_ID;
    }

    public void setTOUR_ID(String TOUR_ID) {
        this.TOUR_ID = TOUR_ID;
    }

    public String getTourName() {
        return tourName;
    }

    public void setTourName(String tourName) {
        this.tourName = tourName;
    }

    public Date getNgayKhoiHanh() {
        return NgayKhoiHanh;
    }

    public void setNgayKhoiHanh(Date ngayKhoiHanh) {
        NgayKhoiHanh = ngayKhoiHanh;
    }

    public Date getNgayKetThuc() {
        return NgayKetThuc;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        NgayKetThuc = ngayKetThuc;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }


}
