package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.DAO.TourDAO;
import vn.edu.hcmuaf.fit.bean.Tour;
import vn.edu.hcmuaf.fit.db.JDBIConnector;


import java.util.List;

import java.util.stream.Collectors;

/*
Class TourService dùng để sử dụng các phương thức lên 1 Tour
 */
public class TourService {
    private  static TourService instance ;

    public  TourService(){

    };
    public static TourService getInstance(){
        if (instance == null) {
            instance = new TourService();
        }
        return instance;
    }
    /*
    Phương thức lấy dữ liệu các Tour từ cơ sở dữ liệu trả lại 1 List sản phẩm Tour
     */
    public List<Tour> getListTour(){

        return TourDAO.getInstance().getListTour();
    }
    public List<Tour> getListBySearchText(String textSearch){

        return TourDAO.getInstance().getListBySearchText(textSearch) ;
    }


}
