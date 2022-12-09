package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.db.JDBIConnector;


import java.util.List;

import java.util.Random;
import java.util.stream.Collectors;

/*
Lớp userDAO dùng để bơm dữ liệu từ csdl lên chuyển qua UserService để Servlet gọi lấy dữ liệu
được tạo bởi Bùi Thanh Đảm 20130217
cập nhật bởi Bùi Thanh Đảm
 */
public class UserDAO {
    private static UserDAO instance;
    /*
    Non-constructor
     */
    private UserDAO(){

    }
    /*
    tạo UserDao
     */
    public static UserDAO getInstance(){
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;
    }
    /*
Phương thức checkLogin dùng để kiểm tra dữ liệu User null hoặc 1 object từ csdl lên chuyển qua UserService để Servlet gọi và kiểm
tra dăng nhập
được tạo bởi Bùi Thanh Đảm 20130217
cập nhật bởi Bùi Thanh Đảm
 */
    public User checkLogin(String username, String hashpassword) {
        List<User> users = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE username = ?")
                        .bind(0, username)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (users.size() != 1) return null;
        User user = users.get(0);
        if (!user.getUser_password().equals(hashpassword)
                ||!user.getUsername().equals(username)) return null;
        return user;
    }
    /*
 Phương thức register dùng để tạo mới 1 user và cập nhật vào csdl
 được tạo bởi Bùi Thanh Đảm 20130217
 cập nhật bởi Bùi Thanh Đảm
  */
    public boolean register(String username, String email, String hashpassword, String confirm) {

//        check register with username and password
        Random random = new Random();
        String id ="User"+ (random.nextInt() +5000);
        List<User> users = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE username = ?")
                        .bind(0, username)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (!users.isEmpty()) return false;
        JDBIConnector.get().withHandle(h ->
                h.createUpdate("insert into user values (?,null,?,?,?,null,null,null,null,null,null,null,0)")
                        .bind(0,id)
                        .bind(1,username)
                        .bind(2,email)
                        .bind(3,hashpassword)
                        .execute()
        );
        return true;
    }
    public List<User> getListGuide(){
        List<User> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("SELECT  * from user where user.USER_Role = 1")
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return list;
    }

    public User getGuideById(String user_id){
        List<User> users = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE user.USER_ID = ? and user.USER_Role=1")
                        .bind(0, user_id)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (users.size() != 1) return null;
        return users.get(0);
    }
    public User getUserById(String user_id){
        List<User> users = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM user WHERE user.USER_ID = ?")
                        .bind(0, user_id)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (users.size() != 1) return null;
        return users.get(0);
    }
    public User updateUserProfile(String user_id,String profileFullName,String profileTelephone,String profileDate,String profileGioiTinh,String profileAddress,String profileCmnd){
        Object o = JDBIConnector.get().withHandle(handle ->
                handle.createUpdate("update user " +
                        "set FullName  = ? , Phone =? , Birth =? , GioiTinh  = ? ,DiaChi =?,CMND =? \n" +
                        "where USER_ID = ?"
                ).bind(0,profileFullName==""?null:profileFullName)
                        .bind(1,profileTelephone==""?null:profileTelephone)
                        .bind(2,profileDate==""?null:profileDate)
                        .bind(3,profileGioiTinh==""?null:profileGioiTinh)
                        .bind(4,profileAddress==""?null:profileAddress)
                        .bind(5,profileCmnd==""?null:profileCmnd)
                        .bind(6,user_id)
                        .execute()
        );
        User user = o==null?null:getUserById(user_id);
        return user;
    }

    public static void main(String[] args) {

       User b =  getInstance().updateUserProfile("Kh","aaa","","","","","");
        System.out.println(b.toString());
    }
}
