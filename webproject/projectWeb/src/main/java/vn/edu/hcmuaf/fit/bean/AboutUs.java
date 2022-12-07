package vn.edu.hcmuaf.fit.bean;

public class AboutUs {

    private String ABOUTUS_ID;
    private String ABOUTUS_TITLE;
    private String Description;
    private String ImageURL;

    //constructor
    public AboutUs(String ABOUTUS_ID, String ABOUTUS_TITLE, String description, String imageURL) {
        this.ABOUTUS_ID = ABOUTUS_ID;
        this.ABOUTUS_TITLE = ABOUTUS_TITLE;
        Description = description;
        ImageURL = imageURL;
    }
    //setter getter
    public String getABOUTUS_ID() {
        return ABOUTUS_ID;
    }

    public void setABOUTUS_ID(String ABOUTUS_ID) {
        this.ABOUTUS_ID = ABOUTUS_ID;
    }

    public String getABOUTUS_TITLE() {
        return ABOUTUS_TITLE;
    }

    public void setABOUTUS_TITLE(String ABOUTUS_TITLE) {
        this.ABOUTUS_TITLE = ABOUTUS_TITLE;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getImageURL() {
        return ImageURL;
    }

    public void setImageURL(String imageURL) {
        ImageURL = imageURL;
    }


}
