package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "VoucherTableData", value = "/admin/VoucherTableData")
public class VoucherTableData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> voucherList = UserService.getInstance().getListVoucher();
        request.setAttribute("voucherList",voucherList);
        request.getRequestDispatcher("table-date-voucher.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getParameter("option");
        Sting voucherId = request.getParameter("voucherId");
        if (option.equals("edit")) {
            User user = UserService.getInstance().getVoucherById(voucherId);
            request.setAttribute("voucher",user);
            request.getRequestDispatcher("form-add-voucher.jsp").forward(request,response);
        }
    }
}
