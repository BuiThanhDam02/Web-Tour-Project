package vn.edu.hcmuaf.fit.controller;


import vn.edu.hcmuaf.fit.bean.TourPackage;
import vn.edu.hcmuaf.fit.services.TourDetailService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "tourDetail", value = "/tour/tourDetail")
public class tourDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tour_id = request.getParameter("tourId");
        TourPackage tp = TourDetailService.getInstance().getTourPackageDetail(tour_id);
        if (tp == null){
            response.sendRedirect("/projectWeb_war/user/views/tour");
        }
        request.setAttribute("tourdetail",tp);
        request.getRequestDispatcher("package-details.jsp").forward(request,response);

    }
}
