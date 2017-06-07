package model.dao;


import model.Cart;
import model.CartDAO;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Student on 2017/6/1.
 */

@Repository
public class CartDAOh implements CartDAO {


    @Override
    public void insert(Cart cart) {

    }

    @Override
    public void update(Cart cart) {

    }

    @Override
    public void delete(Integer id) {

    }

    @Override
    public Cart findByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public List<Cart> getAll() {
        return null;
    }

}
