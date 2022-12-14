package vn.edu.hcmuaf.fit.cartTest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Add", value = "Cart/Add")
public class Add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String id = request.getParameter("id");
    if(id == null){
        response.sendRedirect("/");
        return;
    }
    Product p = ProductService.getInstance().get(Integer.parseInt(id));
        if(id == null){
            response.sendRedirect("/");
            return;
        }
        HttpSession session = request.getSession(true);
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null){
            cart = new Cart();
        }
        cart.add(p);
        session.setAttribute("cart", cart);
        response.sendRedirect("/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
