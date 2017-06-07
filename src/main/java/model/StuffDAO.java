package model;

import java.util.List;
import java.util.Set;

/**
 * Created by Student on 2017/6/1.
 */
public interface StuffDAO {

    public void insert(Stuff stuff);

    public void update(Stuff stuff);

    public void deleteByID(Integer id);

    public Stuff findByPrimaryKey(Integer id);

    public List<Stuff> getAll();

    public Set<StuffDetail> getDetailsByStuffID(Integer id);
}
