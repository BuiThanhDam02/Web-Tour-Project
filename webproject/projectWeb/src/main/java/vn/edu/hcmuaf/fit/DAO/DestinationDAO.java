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
                h.createQuery("SELECT * FROM DIADIEM WHERE DIADIEM.DiaDiem_ID  = ?")
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
    public List<Destination> getOneDestination(){
        List<Destination> des = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM DIADIEM")
                        .mapToBean(Destination.class)
                        .stream()
                        .collect(Collectors.toList())
        );

        return des;
    }
}
