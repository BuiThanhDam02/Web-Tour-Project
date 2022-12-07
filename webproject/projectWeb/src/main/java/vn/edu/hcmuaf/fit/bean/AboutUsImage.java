package vn.edu.hcmuaf.fit.bean;

public class AboutUsImage {

    private String ABOUTUS_ID;
    private String ImaageURL;
    //constructor
    public AboutUsImage(String ABOUTUS_ID, String imaageURL) {
        this.ABOUTUS_ID = ABOUTUS_ID;
        ImaageURL = imaageURL;
    }
    //setter getter
    public String getABOUTUS_ID() {
        return ABOUTUS_ID;
    }

    public void setABOUTUS_ID(String ABOUTUS_ID) {
        this.ABOUTUS_ID = ABOUTUS_ID;
    }

    public String getImaageURL() {
        return ImaageURL;
    }

    public void setImaageURL(String imaageURL) {
        ImaageURL = imaageURL;
    }


}
