package vn.edu.hcmuaf.fit.DAO;



import vn.edu.hcmuaf.fit.bean.*;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

/*
Lớp TourPackageDAO dùng để bơm dữ liệu từ csdl lên chuyển qua TourPackageService để Servlet gọi lấy dữ liệu
được tạo bởi Bùi Thanh Đảm 20130217
cập nhật bởi Bùi Thanh Đảm 20130217
 */
public class TourDetailDAO {

    private static TourDetailDAO instance;

    //non constructor
    private TourDetailDAO(){

    }

    public static TourDetailDAO getInstance(){
        if (instance == null) instance = new TourDetailDAO();
        return  instance;
    }


    public List<TourDetailDays> getListDay(String tour_id){
        List<TourDetailDays> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select * from TOUR_DETAIL_PER_DAY where TOUR_DETAIL_PER_DAY.TOUR_ID  = ?")
                        .bind(0, tour_id)
                        .mapToBean(TourDetailDays.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return list ;
    }
    public List<TourDetailImages> getListImage(String tour_id){
        List<TourDetailImages> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select * from TOUR_DETAIL_IMAGE where TOUR_DETAIL_IMAGE.TOUR_ID  = ?")
                        .bind(0, tour_id)
                        .mapToBean(TourDetailImages.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return list ;
    }
    public List<TourDetailType> getListType(String tour_id){
        List<TourDetailType> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select * from TOUR_TYPE where TOUR_TYPE.TOUR_ID  = ?")
                        .bind(0, tour_id)
                        .mapToBean(TourDetailType.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return list ;
    }
    public List<Review> getListReview(String tour_id){
        List<Review> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select REVIEW.TOUR_ID,User.USER_ID ,user.FullName ,user.ImageURL ,REVIEW.Comment , REVIEW.NgayTao ,REVIEW.Stars  from REVIEW inner join User on User.USER_ID =REVIEW.USER_ID where REVIEW.TOUR_ID  = ?")
                        .bind(0, tour_id)
                        .mapToBean(Review.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return list ;
    }

    public List<TourGuide> getListGuide(String tour_id){
        List<TourGuide> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select TOUR_GUIDE.*,user.FullName ,user.email ,user.phone ,user.ImageURL from TOUR_GUIDE inner join User on User.USER_ID =TOUR_GUIDE.USER_ID where TOUR_GUIDE.TOUR_ID  = ? and user.USER_Role =1")
                        .bind(0, tour_id)
                        .mapToBean(TourGuide.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return list ;
    }

    public List<Voucher> getListVoucher(String tour_id){
        List<Voucher> list = JDBIConnector.get().withHandle(h ->
                h.createQuery("select VOUCHER.* from VOUCHER inner join TOUR_VOUCHER on TOUR_VOUCHER.VOUCHER_ID =VOUCHER.VOUCHER_ID where TOUR_VOUCHER.TOUR_ID  = ? and VOUCHER.TRANGTHAI = 1")
                        .bind(0, tour_id)
                        .mapToBean(Voucher.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return list ;
    }
}
