package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.DAO.VoucherDAO;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.bean.Voucher;
import vn.edu.hcmuaf.fit.services.UserService;
import vn.edu.hcmuaf.fit.services.VoucherService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "VoucherTableData", value = "/admin/VoucherTableData")
public class VoucherTableData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Voucher> voucherList = VoucherService.getInstance().getVoucherList();
        request.setAttribute("voucherList",voucherList);
        request.getRequestDispatcher("table-data-voucher.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getParameter("option");
        String voucherId = request.getParameter("voucherId");
        if (option.equals("edit")) {
//            Voucher voucher = UserService.getInstance().getVoucherById(voucherId);
//            request.setAttribute("voucher",voucher);
//            request.getRequestDispatcher("form-add-voucher.jsp").forward(request,response);
        }
    }
}
