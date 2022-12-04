package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.Tour;
import vn.edu.hcmuaf.fit.services.TourService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

/* Servlet tìm kiếm các thông tin về 1 Tour
Được tạo bởi Bùi Thanh Đảm - 20130217

 */
@WebServlet(name = "doSearchWithFilter", value = "/user/views/doSearchWithFilter")
public class doSearchWithFilter extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchText = request.getParameter("searchText");
        String searchDiaDiem = request.getParameter("searchDiaDiem");
        String searchCategory = request.getParameter("searchText");
        String searchDay = request.getParameter("searchDay");
        String searchPrice = request.getParameter("searchPrice");
        String searchPersons = request.getParameter("searchPersons");
        String searchDate = request.getParameter("searchDate");
        List<Tour> list = TourService.getInstance().findListTourBySearchFilter(searchText,searchDiaDiem,searchCategory,searchDay,searchPrice,searchPersons,searchDate);
        List<Tour> incommingList = TourService.getInstance().getListIncomingTour();
        request.setAttribute("list",list);
        request.setAttribute("incommingList",incommingList);
        request.getRequestDispatcher("package-sidebar.jsp").forward(request,response);
    }
}
