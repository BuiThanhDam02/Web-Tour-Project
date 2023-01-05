package vn.edu.hcmuaf.fit.bean;

import com.mysql.cj.x.protobuf.MysqlxDatatypes;

import java.io.Serializable;

public class AboutUs implements Serializable {


    private String AboutUs_ID;
    private String AboutUs_TITLE;
    private String Description;

    public AboutUs() {

    }

    public AboutUs(String AboutUs_ID, String AboutUs_TITLE, String description ){
        this.AboutUs_ID = AboutUs_ID;
        this.AboutUs_TITLE = AboutUs_TITLE;
        Description = description;
    }
    // getter setter
    public String getAboutUs_ID() {
        return AboutUs_ID;
    }

    public void setAboutUs_ID(String aboutUs_ID) {
        AboutUs_ID = aboutUs_ID;
    }

    public String getAboutUs_TITLE() {
        return AboutUs_TITLE;
    }

    public void setAboutUs_TITLE(String aboutUs_TITLE) {
        AboutUs_TITLE = aboutUs_TITLE;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }
//

    @Override
    public String toString(){
        return "AboutUs{" +
                ", AboutUs_ID='" + AboutUs_ID +'\'' +
                ", AboutUs_TITLE='" + AboutUs_TITLE + '\''+
                ", Description='" + Description + '\'' +
                '}';
    }   

}

