package model;

import model.dao.BloodBankDAOh;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

/**
 * Created by Student on 2017/6/1.
 */


@Service
public class BloodBankService {

    @Autowired private BloodBankDAOh BloodBankDAO;

    public void insert(BloodBank BloodBank){
         BloodBankDAO.insert(BloodBank);
    }

    public void update(BloodBank BloodBank){
        BloodBankDAO.update(BloodBank);
    }

    public void delete(Integer id){
        BloodBankDAO.delete(id);
    }

    public BloodBank findByPrimaryKey(Integer id){
        return BloodBankDAO.findByPrimaryKey(id);
    }

    public List<BloodBank> getAll(){
        return BloodBankDAO.getAll();
    }

    public Set<BloodDetail> getDetailsByBloodBankID(Integer id){
        return BloodBankDAO.getDetailsByBloodBankID(id);
    }


}
