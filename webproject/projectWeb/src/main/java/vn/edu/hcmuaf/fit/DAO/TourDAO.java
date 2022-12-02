package vn.edu.hcmuaf.fit.DAO;


import vn.edu.hcmuaf.fit.bean.Tour;
import vn.edu.hcmuaf.fit.bean.TourDetail;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

/*
Lớp TourDAO dùng để bơm dữ liệu từ csdl lên chuyển qua TourService để Servlet gọi lấy dữ liệu
được tạo bởi Bùi Thanh Đảm 20130217
cập nhật bởi Bùi Thanh Đảm 20130217
 */
public class TourDAO {
    private static TourDAO instance;
    //non constructor
    private TourDAO(){

    }

    public static TourDAO getInstance() {
        if (instance ==null) instance = new TourDAO();
        return instance;
    }

    /*
    phương thức lấy dữ liệu tất cả tour từ csdl để gửi đến view
     */
    public List<Tour> getListTour(){

        List<Tour> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select tour.TOUR_ID,TourName,TrangThai,NgayTao,NgayKhoiHanh,NgayKetThuc,SoLuong,ImageURL,TOUR_CATEGORY,tour_type.GiaVe from tour INNER JOIN tour_type on tour.TOUR_ID = tour_type.TOUR_ID where tour_type.Type =1 and tour.TrangThai =1")
                        .mapToBean(Tour.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return list ;
    }

    public TourDetail getTourDetail(String tour_id){

        List<TourDetail> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select * from tour where tour.TOUR_ID = ? and tour.TrangThai =1")
                        .bind(0, tour_id)
                        .mapToBean(TourDetail.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (list.size() != 1) return null;
        TourDetail odes = list.get(0);
        return odes ;
    }
    /*
   phương thức tiềm kiếm nhanh dữ liệu tour thông qua 1 đoạn text nhập vào
   từ ô tìm kiến trên thanh header hoặc trong rightNav trang package
    */
    public List<Tour> getListBySearchText(String textSearch){

        List<Tour> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select tour.TOUR_ID,TourName,TrangThai,NgayTao,NgayKhoiHanh,NgayKetThuc,SoLuong,ImageURL,TOUR_CATEGORY,tour_type.GiaVe" +
                                " from Tour INNER JOIN tour_type on tour.TOUR_ID = tour_type.TOUR_ID " +
                                "where tour_type.Type =1 and tour.TrangThai =1 and " +
                                "TourName LIKE '%"+textSearch+"%' OR TourName LIKE '"+textSearch+"%' or TourName LIKE '%"+textSearch+"' or " +
                                "TOUR_CATEGORY  LIKE '%"+textSearch+"%' or TOUR_CATEGORY  LIKE '"+textSearch+"%'or TOUR_CATEGORY  LIKE '%"+textSearch+"'")
                        .mapToBean(Tour.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return list ;
    }

    public static void main(String[] args) {
        System.out.println(getInstance().getListBySearchText("chùa").toString());
    }

}
