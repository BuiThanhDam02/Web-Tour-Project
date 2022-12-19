package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.DAO.VoucherDAO;
import vn.edu.hcmuaf.fit.bean.Voucher;

import java.util.List;

public class VoucherService {
    private static VoucherService instance;

    private VoucherService(){

    }
    public  static  VoucherService getInstance(){
        if (instance == null) return instance = new VoucherService();
        return instance;
    }
    public List<Voucher> getVoucherList(){
        return VoucherDAO.getInstance().getVoucherList();
    }
}
