package vn.edu.hcmuaf.fit.cartTest;

import vn.edu.hcmuaf.fit.bean.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CartServlet", value = "/CartServlet")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Cart cart = (Cart) request.getSession().getAttribute("cart");
    if(cart == null){
        response.getWriter().println("Cart is empty");
    }else{
        Collection<Product> list = cart.getListProduct();
        for(Product p : list){
            response.getWriter().println(p);
        }
    }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
