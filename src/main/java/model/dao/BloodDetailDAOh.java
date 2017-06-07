package model.dao;


import model.BloodDetail;
import model.BloodDetailDAO;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Student on 2017/6/1.
 */

@Repository
public class BloodDetailDAOh implements BloodDetailDAO {


    @Override
    public void insert(BloodDetail bloodDetail) {

    }

    @Override
    public void update(BloodDetail bloodDetail) {

    }

    @Override
    public void delete(Integer id) {

    }

    @Override
    public BloodDetail findByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public List<BloodDetail> getAll() {
        return null;
    }


}
