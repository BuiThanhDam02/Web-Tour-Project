package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.bean.AboutUs;
import vn.edu.hcmuaf.fit.bean.AboutUsImage;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;


public class AboutUsDAO {
    private static AboutUsDAO instancce;
    private AboutUsDAO() {}
        public static AboutUsDAO getInstance() {
            if (instancce == null) instancce = new AboutUsDAO();
            return instancce;
    }

    public List<AboutUs> getListAboutUs() {
        List<AboutUs> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("SELECT * FROM aboutus")
                        .mapToBean(AboutUs.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return list;
    }
    public List<AboutUsImage> getListAboutUsImage(String aboutus_id){
        List<AboutUsImage> list = JDBIConnector,get().withHandle(handle ->
                handle.createQuery("SELECT * from ABOUTUS_IMAGE")
                        .bind(0,aboutus_id)
                        .mapToBean(AboutUsImage.class)
                        .stream()
                        .collect(Collectors,toList())
        );
        return list;
    }
}
