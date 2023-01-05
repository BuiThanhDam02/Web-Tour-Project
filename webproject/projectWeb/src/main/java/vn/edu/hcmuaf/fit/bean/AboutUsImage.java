package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;


public class AboutUsImage implements Serializable {

    private String AboutUs_ID;
    private String ImageURL;
    public AboutUsImage() {

    }

    public AboutUsImage(String AboutUs_ID,String imageURL) {
        this.AboutUs_ID = AboutUs_ID;
        ImageURL = imageURL;
    }
//getter setter

    public String getAboutUs_ID() {
        return AboutUs_ID;
    }

    public void setAboutUs_ID(String aboutUs_ID) {
        AboutUs_ID = aboutUs_ID;
    }

    public String getImageURL() {
        return ImageURL;
    }

    public void setImageURL(String imageURL) {
        ImageURL = imageURL;
    }
    @Override
    public String toString(){
        return "AboutUsImage{" +
                "AboutUs_ID='" + AboutUsImage + '\'' +
                ", ImageURL='" + ImageURL +'\'' +
                '}';
    }
}
