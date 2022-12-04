package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.bean.*;

import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class VoucherDAO {
    private static VoucherDAO instance;

    private VoucherDAO(){

    }
    public  static  VoucherDAO getInstance(){
        if (instance == null) return instance = new VoucherDAO();
        return instance;
    }
    // get
    public List<Voucher> getVoucherList(){
        List<Voucher> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select * from voucher")
                        .mapToBean(Voucher.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        list.sort((o1, o2) -> o1.getVOUCHER_VALUE() - o2.getVOUCHER_VALUE());
        return list;
    }
}
