package model;

import java.util.List;
import java.util.Set;

/**
 * Created by Student on 2017/6/5.
 */

public interface BloodBankDAO {
    public void insert(BloodBank BloodBank);

    public void update(BloodBank BloodBank);

    public void delete(Integer id);

    public BloodBank findByPrimaryKey(Integer id);

    public List<BloodBank> getAll();

    public Set<BloodDetail> getDetailsByBloodBankID(Integer id);
}