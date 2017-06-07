package model;

import java.util.List;

/**
 * Created by Student on 2017/6/1.
 */
public interface CartDAO {

    public void insert(Cart cart);

    public void update(Cart cart);

    public void delete(Integer id);

    public Cart findByPrimaryKey(Integer id);

    public List<Cart> getAll();

}
