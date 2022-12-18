package vn.edu.hcmuaf.fit.services;

import org.apache.commons.fileupload.FileItem;

import java.io.File;
import java.util.List;

public class UploadFile {
    public  UploadFile(){

    }
    public void upload(List<FileItem> fileItems, String reqPath){
        for (FileItem fileItem : fileItems) {
            if (!fileItem.isFormField()) {
                // xử lý file
                String nameimg = fileItem.getName();
                if (!nameimg.equals("")) {
                    String dirUrl = reqPath + File.separator + "filesUpload";
                    File dir = new File(dirUrl);
                    if (!dir.exists()) {
                        dir.mkdir();
                    }
                    String fileImg = dirUrl + File.separator + nameimg;
                    File file = new File(fileImg);
                    try {
                        fileItem.write(file);
                        System.out.println("UPLOAD THÀNH CÔNG...!");
                        System.out.println("ĐƯỜNG DẪN KIỂM TRA UPLOAD HÌNH ẢNH : \n"+file.getAbsolutePath());
                    } catch (Exception e) {
                        System.out.println("CÓ LỖ TRONG QUÁ TRÌNH UPLOAD!");
                        e.printStackTrace();
                    }
                }
            }
        }
    }
}
