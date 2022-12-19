package vn.edu.hcmuaf.fit.services;

import org.apache.commons.fileupload.FileItem;

import java.io.File;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UploadFile {
    public  UploadFile(){

    }
    public Map<String,String> upload(List<FileItem> fileItems, String reqPath,String divide){
        Map<String,String> result = new HashMap<String,String>();

        for (FileItem fileItem : fileItems) {
            if (!fileItem.isFormField()) {
                // xử lý file
                String nameimg = fileItem.getName();
                if (!nameimg.equals("")) {
                    String dirUrl = reqPath + File.separator + "filesUpload"+ File.separator +divide;
                    File dir = new File(dirUrl);
                    if (!dir.exists()) {
                        dir.mkdir();
                    }
                    String fileImg = dirUrl +File.separator +nameimg;
                    File file = new File(fileImg);
                    try {
                        fileItem.write(file);
                        System.out.println("UPLOAD THÀNH CÔNG...!");
                        System.out.println("ĐƯỜNG DẪN KIỂM TRA UPLOAD HÌNH ẢNH : \n"+file.getAbsolutePath());
                        String imgValue =  File.separator + "filesUpload"+ File.separator +divide+File.separator+file.getName();
                        result.put("ImageUpload",imgValue);
                    } catch (Exception e) {
                        System.out.println("CÓ LỖ TRONG QUÁ TRÌNH UPLOAD!");
                        e.printStackTrace();
                    }
                }
            }else{

                String name = fileItem.getFieldName();
                String value = fileItem.getString();

                result.put(name,value);
            }
        }
        return result;
    }

    public static void main(String[] args) {
        String n = "Ná»¯";
        String valueUTF = new String(n.getBytes(Charset.forName("UTF-16")), StandardCharsets.UTF_8);
        System.out.println(valueUTF);
    }
}
