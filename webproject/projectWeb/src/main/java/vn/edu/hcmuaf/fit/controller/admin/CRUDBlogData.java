package vn.edu.hcmuaf.fit.controller.admin;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.services.UploadFile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CRUDBlogData", value = "/admin/CRUDBlogData")
public class CRUDBlogData extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("form-add-blog.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
//        ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
//        try {
//            List<FileItem> fileItem = upload.parseRequest(request);
//            new UploadFile().upload(fileItem,request.getServletContext().getRealPath(""));
//
//        } catch (FileUploadException e) {
//            e.printStackTrace();
//        }
    }
}
