package model;

import java.util.List;

/**
 * Created by Student on 2017/6/1.
 */
public interface BloodDetailDAO {

    public void insert(BloodDetail bloodDetail);

    public void update(BloodDetail bloodDetail);

    public void delete(Integer id);

    public BloodDetail findByPrimaryKey(Integer id);

    public List<BloodDetail> getAll();

}