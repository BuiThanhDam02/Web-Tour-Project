package vn.edu.hcmuaf.fit.controller.admin;

import vn.edu.hcmuaf.fit.bean.Blog;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.services.BlogService;
import vn.edu.hcmuaf.fit.services.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogTableData", value = "/admin/BlogTableData")
public class BlogTableData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Blog> blogList = BlogService.getInstance().getListBlog();
        request.setAttribute("blogList",blogList);
        request.getRequestDispatcher("table-data-blog.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getParameter("option");
        String blogId = request.getParameter("blogId");
        if (option.equals("edit")) {
            Blog blog = BlogService.getInstance().getBlogDetail(blogId);
            request.setAttribute("blog",blog);
            request.getRequestDispatcher("form-add-blog.jsp").forward(request,response);
        }
    }
}
