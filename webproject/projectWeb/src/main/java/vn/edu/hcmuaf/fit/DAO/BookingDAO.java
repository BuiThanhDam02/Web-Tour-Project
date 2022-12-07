package vn.edu.hcmuaf.fit.DAO;

public class BookingDAO {
    private static BookingDAO instance;

    private  BookingDAO(){

    }
    public  static  BookingDAO getInstance(){
        if (instance == null) instance = new BookingDAO();
        return instance;
    }

//    public

}
