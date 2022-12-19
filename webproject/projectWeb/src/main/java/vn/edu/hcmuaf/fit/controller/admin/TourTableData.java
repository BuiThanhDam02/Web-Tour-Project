package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.bean.Tour;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.services.TourService;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TourTableData", value = "/admin/TourTableData")
public class TourTableData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Tour> tourList = TourService.getInstance().getListTour();
        request.setAttribute("tourList", tourList);
        request.getRequestDispatcher("table-data-product.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getParameter("option");
        String tourId = request.getParameter("tourId");
        if (option.equals("edit")){
//            User user = UserService.getInstance().getGuideById(tourId);
//            request.setAttribute("guide",user);
//            request.getRequestDispatcher("form-add-san-pham.jsp").forward(request,response);
        }
    }
}
