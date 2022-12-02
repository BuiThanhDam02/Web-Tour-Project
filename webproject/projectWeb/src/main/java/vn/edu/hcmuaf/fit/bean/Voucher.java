package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.sql.Date;

/*
Class Voucher chứa những thông tin về Voucher của 1 Tour du lịch
Tạo bởi Nguyễn Hữu Đạt 20130224
Cập nhật bởi Nguyễn Hữu Đạt 20130224
 */

public class Voucher implements Serializable {
    //Khai báo biến
    private String voucher_id;
    private int voucher_value;
    private Date NgayBatDau;
    private Date NgayKetThuc;
    private int trangThai;
    //Tạo constructor
    public Voucher(String voucher_id, int voucher_value, Date ngayBatDau, Date ngayKetThuc, int trangThai) {
        this.voucher_id = voucher_id;
        this.voucher_value = voucher_value;
        NgayBatDau = ngayBatDau;
        NgayKetThuc = ngayKetThuc;
        this.trangThai = trangThai;
    }
    //Tạo getter và setter
    public String getVoucher_id() {
        return voucher_id;
    }

    public void setVoucher_id(String voucher_id) {
        this.voucher_id = voucher_id;
    }

    public int getVoucher_value() {
        return voucher_value;
    }

    public void setVoucher_value(int voucher_value) {
        this.voucher_value = voucher_value;
    }

    public Date getNgayBatDau() {
        return NgayBatDau;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        NgayBatDau = ngayBatDau;
    }

    public Date getNgayKetThuc() {
        return NgayKetThuc;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        NgayKetThuc = ngayKetThuc;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }
    //Hàm toString
    @Override
    public String toString() {
        return "Voucher{" +
                "voucher_id='" + voucher_id + '\'' +
                ", voucher_value=" + voucher_value +
                ", NgayBatDau=" + NgayBatDau +
                ", NgayKetThuc=" + NgayKetThuc +
                ", trangThai=" + trangThai +
                '}';
    }
}
