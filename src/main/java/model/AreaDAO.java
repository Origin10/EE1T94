package model;

import java.util.List;

/**
 * Created by Student on 2017/6/1.
 */
public interface AreaDAO {

    public void insert(Area area);

    public void update(Area area);

    public void delete(Integer id);

    public Area findByPrimaryKey(Integer id);

    public List<Area> getAll();
    
}
