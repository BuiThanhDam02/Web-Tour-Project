package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.DAO.BookingDAO;
import vn.edu.hcmuaf.fit.DAO.TourDAO;
import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.bean.Booking;
import vn.edu.hcmuaf.fit.bean.Tour;
import vn.edu.hcmuaf.fit.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ReportTableData", value = "admin/ReportTableData")
public class ReportTableData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> listGuide = UserDAO.getInstance().getListGuide();
        request.setAttribute("listGuide", listGuide);

        List<Tour> listALlTour = TourDAO.getInstance().getAllTour();
        request.setAttribute("listAllTour", listALlTour);

        List<Booking> listBooking = BookingDAO.getInstance().getListBooking();
        request.setAttribute("listBooking", listBooking);

        List<Tour> listTour = TourDAO.getInstance().getListTour();
        request.setAttribute("listTour", listTour);

        List<User> listKhachHang = UserDAO.getInstance().getListKhachHang();
        request.setAttribute("listKhachHang", listKhachHang);

        request.getRequestDispatcher("quan-ly-bao-cao.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
