package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.bean.Booking;
import vn.edu.hcmuaf.fit.bean.Tour;
import vn.edu.hcmuaf.fit.bean.TourCart;
import vn.edu.hcmuaf.fit.bean.TourDetail;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.services.TourDetailService;
import vn.edu.hcmuaf.fit.services.TourService;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class BookingDAO {
    private static BookingDAO instance;

    private  BookingDAO(){

    }
    public  static  BookingDAO getInstance(){
        if (instance == null) instance = new BookingDAO();
        return instance;
    }

//    public

    public List<Booking> getListBookingByUserId(String user_id){
        List<Booking> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select  booking.*,tour.TourName,tour.NgayKhoiHanh,tour.NgayKetThuc from booking inner join tour on tour.TOUR_ID = booking.TOUR_ID where user_id = ? ")
                        .bind(0,user_id)
                        .mapToBean(Booking.class)
                        .stream()
                        .collect(Collectors.toList())
                );
        list.sort((o1, o2) -> o1.getNgayTao().getTime()>= o2.getNgayTao().getTime()?-1:1);
        return list;

    }
    public List<Booking> getListBooking(){
        List<Booking> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select  * from booking")
                        .mapToBean(Booking.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        list.sort((o1, o2) -> o1.getNgayTao().getTime()>= o2.getNgayTao().getTime()?-1:1);
        return list;

    }
    public boolean createBooking(TourCart tc){
        Random random = new Random();
        String id ="BOOKING"+ (random.nextInt() +100);
        TourDetail tour = TourDetailService.getInstance().getTourDetail(tc.getTOUR_ID());
        if (tour.getSoLuong() < tc.getSOLUONG()){
            return false;
        }else {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate("insert into booking values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)")
                            .bind(0, id)
                            .bind(1, tc.getTOUR_ID())
                            .bind(2, tc.getUSER_ID())
                            .bind(3, tc.getHoTen())
                            .bind(4, tc.getEmail())
                            .bind(5, tc.getPhone())
                            .bind(6, tc.getDiaChi())
                            .bind(7, tc.getSOLUONG_VENGUOILON())
                            .bind(8, tc.getSOLUONG_VETREEM())
                            .bind(9, tc.getSOLUONG())
                            .bind(10, 0)
                            .bind(11, tc.getNgayTao())
                            .bind(12, tc.getTongTien())
                            .bind(13, tc.getDescription())
                            .execute()
            );
            return true;
        }
    }
    public boolean cancelBooking(String bookingId,String user_id){
       int row= JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("update booking " +
                        "set booking.TRANGTHAI = -1 " +
                        "where booking.BOOKING_ID = ? and booking.USER_ID = ? and booking.TRANGTHAI = 0")
                        .bind(0,bookingId)
                        .bind(1,user_id)
                        .execute()
        );

        return row!=1?false:true;
    }

    public static void main(String[] args) {

    }
}
