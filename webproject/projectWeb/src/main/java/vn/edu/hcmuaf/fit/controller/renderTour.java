package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.Tour;
import vn.edu.hcmuaf.fit.services.TourService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "renderTour", value = "/renderTourPage")
public class renderTour extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Tour> list = TourService.getInstance().getListTour();
        request.setAttribute("list",list);
        request.getRequestDispatcher("/public/views/package-sidebar.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String text = (String) request.getParameter("search");
        if (text !=null){
            List<Tour> list = TourService.getInstance().getListBySearchText(text);
            request.setAttribute("list",list);
            request.setAttribute("text",text);
            request.getRequestDispatcher("/public/views/package-sidebar.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("/public/views/index.jsp").forward(request,response);
        }

    }
}
