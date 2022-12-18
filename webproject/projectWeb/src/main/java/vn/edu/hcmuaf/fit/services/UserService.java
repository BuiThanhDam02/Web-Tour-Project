package vn.edu.hcmuaf.fit.services;


import vn.edu.hcmuaf.fit.DAO.UserDAO;
import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;

/*
Class UserService chứa các phương thức làm việc với Model User : đăng nhập,đăng ký,..
được tạo bởi Bùi Thanh Đảm 20130217
cập nhật bởi Bùi Thanh Đảm
 */
public class UserService {
    private static UserService instance;
    private static Random random;
    private static Map<String,String> users= new HashMap<>();
    static {
        users.put("admin","admin");
        users.put("user","user");
        users.put("ti","123");
    }
    /*
    Non-constructor
     */
    private UserService() {
    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }

    /*
    Kiểm tra đăng nhập User trả về null hoặc 1 object User
     */
    public User checkLogin(String username, String password) {
        return UserDAO.getInstance().checkLogin(username,hashPassword(password));
    }
    public String hashPassword(String password) {
        try {
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public boolean register(String username, String email, String password, String confirm) {
       random = new Random();
       return UserDAO.getInstance().register(username, email, hashPassword(password), confirm);

    }
    public List<User> getListGuide(){
        return UserDAO.getInstance().getListGuide();
    }
    public User getGuideById(String user_id){
        return UserDAO.getInstance().getGuideById(user_id);
    }
    public User getCurrentUserByIdAndPassword(String user_id,String oldHashPassword){
        return  UserDAO.getInstance().getCurrentUserByIdAndPassword(user_id, hashPassword(oldHashPassword));
    }
    public User changeUserPassword(User user , String newHashPassword){
        return  UserDAO.getInstance().changeUserPassword(user,hashPassword(newHashPassword));
    }

}
