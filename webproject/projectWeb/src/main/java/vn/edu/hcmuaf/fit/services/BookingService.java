package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.DAO.BookingDAO;
import vn.edu.hcmuaf.fit.bean.Booking;
import vn.edu.hcmuaf.fit.bean.TourCart;

import java.util.List;

public class BookingService {
    private static BookingService instance;
    private BookingService(){

    }
    public static BookingService getInstance(){
        if (instance==null) instance = new BookingService();
        return instance;
    }
    public List<Booking> getListBookingByUserId(String user_id){
        return BookingDAO.getInstance().getListBookingByUserId(user_id);
    }
    public boolean cancelBooking(String bookingId,String user_id){
        return BookingDAO.getInstance().cancelBooking(bookingId,user_id);
    }
    public boolean createBooking(TourCart tc){
        return BookingDAO.getInstance().createBooking(tc);
    }
    public List<Booking> getListBooking(){
        return BookingDAO.getInstance().getListBooking();
    }

}
