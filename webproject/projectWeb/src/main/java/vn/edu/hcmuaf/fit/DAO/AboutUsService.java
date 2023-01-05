package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.bean.AboutUs;
import vn.edu.hcmuaf.fit.bean.AboutUsImage;

public class AboutUsService {
    private static AboutUsService instance;
    private AboutUsService(){}
        public static AboutUsService getInstance() {
            if (instance == null) instance = new AboutUsService();
            return instance;
        }
    public List<AboutUs> getListAboutUs(){
        return AboutUsDAO.getInstance().getListAboutUs();
    }
    public List<AboutUsImage> getListAboutUsImage(){
        return AboutUsDAO.getInstance().getListAboutUsImage();

    }
}
