package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.bean.Blog;
import vn.edu.hcmuaf.fit.bean.BlogImage;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class BlogDAO {
    private static BlogDAO instance;

    private  BlogDAO(){}

    public static BlogDAO getInstance(){
        if (instance == null) instance = new BlogDAO();
        return instance;
    }

    public List<Blog> getListBlog(){
        List<Blog> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select user.FullName ,blog.* from blog inner join USER on USER.user_id = blog.user_id where user.USER_Role =1")
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList())
                );

        return list;
    }
    public List<Blog> getListRecentBlog(){
        List<Blog> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select user.FullName ,blog.* from blog inner join USER on USER.user_id = blog.user_id where user.USER_Role =1")
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        list.sort((o1, o2) -> o1.getNgayVietBai().getTime() >= o2.getNgayVietBai().getTime()?-1:1);

        return list.size()>=3?list.subList(0,3):list;
    }

    public List<Blog> findListBlogBySearchFilter(String searchText,List<String> liststring){
        String query = "";
        for (String string:
                liststring) {
            query += " and "+string;
        }
        String  textSearchquery = "";
        if (searchText != "") textSearchquery = " and BLOG_TITLE LIKE '%"+searchText+"%' OR BLOG_TITLE LIKE '"+searchText+"%' or BLOG_TITLE LIKE '%"+searchText+"' ";

        String finalQuery = query;

        String finalTextSearchquery = textSearchquery;
        List<Blog> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select user.FullName ,blog.* from blog inner join USER on USER.user_id = blog.user_id where user.USER_Role =1 "+
                                finalTextSearchquery + finalQuery)
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return list;
    }

    public List<Blog> getListRandomBlog(){
        List<Blog> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select user.FullName ,blog.* from blog inner join USER on USER.user_id = blog.user_id where user.USER_Role =1")
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        Random random = new Random();
        List<Blog> result = new ArrayList<Blog>();
        for (int i = 0; i < 4; i++) {
            int j = random.nextInt(list.size());
            result.add(list.get(j));
        }
        return result;
    }
    public Blog getBlogDetail(String blog_id){
        List<Blog> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select user.FullName ,blog.* from blog inner join USER on USER.user_id = blog.user_id where user.USER_Role =1 and blog.BLOG_ID = ?")
                        .bind(0,blog_id)
                        .mapToBean(Blog.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (list.size()!=1) return null;
        return list.get(0);
    }
    public List<BlogImage> getListBlogImage(String blog_id){
        List<BlogImage> list = JDBIConnector.get().withHandle(handle ->
                handle.createQuery("select * from BLOG_IMAGE  where BLOG_IMAGE.blog_id = ?")
                        .bind(0,blog_id)
                        .mapToBean(BlogImage.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        return list;
    }

    public static void main(String[] args) {
        List<BlogImage> blogImage = getInstance().getListBlogImage("Blog001");

        System.out.println(blogImage.get(0).getImageURL()==null?"1":"2");
    }


}
