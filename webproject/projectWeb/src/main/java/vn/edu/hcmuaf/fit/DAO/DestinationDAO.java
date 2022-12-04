package vn.edu.hcmuaf.fit.DAO;

import vn.edu.hcmuaf.fit.bean.Destination;

import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class DestinationDAO {
    private static DestinationDAO instance;

    private DestinationDAO(){

    }

    public static DestinationDAO getInstance(){
        if (instance == null) instance = new DestinationDAO();
        return instance;
    }
    /*
    Phương thức lấy dữ liệu 1 địa điểm có trong cơ sở dữ liệu thông qua id của địa điểm
     */
    public Destination getOneDestination(String Des_id){
        List<Destination> des = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT diadiem.DiaDiem_ID,TenDiaDiem,diadiem.ImageURL, count(diadiem.DiaDiem_ID)as soluong FROM diadiem INNER JOIN tour ON DiaDiem.DiaDiem_ID=tour.DiaDiem_ID WHERE DIADIEM.DiaDiem_ID  = ? \n" +
                                "GROUP BY diadiem.DiaDiem_ID,TenDiaDiem,diadiem.ImageURL ")
                        .bind(0, Des_id)
                        .mapToBean(Destination.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (des.size() != 1) return null;
        Destination odes = des.get(0);

        return odes;
    }
    /*
   Phương thức lấy dữ liệu tất cả địa điểm có trong cơ sở dữ liệu
    */
    public List<Destination> getDestination(){
        List<Destination> des = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT diadiem.DiaDiem_ID,TenDiaDiem,diadiem.ImageURL, count(diadiem.DiaDiem_ID)as soluong FROM diadiem INNER JOIN tour ON DiaDiem.DiaDiem_ID=tour.DiaDiem_ID\n" +
                                "GROUP BY diadiem.DiaDiem_ID,TenDiaDiem,diadiem.ImageURL")
                        .mapToBean(Destination.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return des;
    }

    public List<Destination> getPopularDestination(){
        List<Destination> des = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT diadiem.DiaDiem_ID,TenDiaDiem,diadiem.ImageURL, count(diadiem.DiaDiem_ID)as soluong FROM diadiem INNER JOIN tour ON DiaDiem.DiaDiem_ID=tour.DiaDiem_ID\n" +
                                "GROUP BY diadiem.DiaDiem_ID,TenDiaDiem,diadiem.ImageURL")
                        .mapToBean(Destination.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        des.sort((o1, o2) -> o2.getSoluong() - o1.getSoluong());
        List<Destination> popudes = des.subList(0,9);
        return popudes;
    }

    public static void main(String[] args) {
        List<Destination> des = DestinationDAO.getInstance().getDestination();
        System.out.println(des.toString());
    }
}
