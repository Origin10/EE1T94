package model;

import model.dao.StuffDAOh;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

/**
 * Created by Student on 2017/6/1.
 */


@Service
public class StuffService {

    @Autowired private StuffDAOh stuffDAO;

    public void insert(Stuff stuff){
         stuffDAO.insert(stuff);
    }

    public void update(Stuff stuff){
        stuffDAO.update(stuff);
    }

    public void deleteByID(Integer id){
        stuffDAO.deleteByID(id);
    }

    public Stuff findByPrimaryKey(Integer id){
        return stuffDAO.findByPrimaryKey(id);
    }

    public List<Stuff> getAll(){
        return stuffDAO.getAll();
    }

    public Set<StuffDetail> getDetailsByStuffID(Integer id){
        return stuffDAO.getDetailsByStuffID(id);
    }


}
