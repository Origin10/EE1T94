package controller;


import model.BloodBank;
import model.BloodBankService;
import model.BloodDetail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Set;


@Controller
@RequestMapping(value = "/BloodBank")
public class BloodBankController {

    private static Logger log = LoggerFactory.getLogger(BloodBankController.class);//提供一個logger提供日誌 添加API(slf4j)

    @Autowired
    private BloodBankService bloodBankService;

    @RequestMapping(value = "/insertBloodBank")
    public void insert(BloodBank BloodBank) {
        bloodBankService.insert(BloodBank);
    }

    @RequestMapping(value = "/updateBloodBank")
    public void update(BloodBank BloodBank) {
        bloodBankService.update(BloodBank);
    }

    @RequestMapping(value = "/getBloodBankById")
    @ResponseBody
    public BloodBank findByPrimaryKey(Integer id) {
        return bloodBankService.findByPrimaryKey(id);
    }

    @RequestMapping(value = "/getBloodBanks")
    @ResponseBody //Json格式的回傳
    public List<BloodBank> getAll() {
        return bloodBankService.getAll();
    }

    @RequestMapping(value = "/getDetailsById")
    public Set<BloodDetail> getDetailsByBloodBankID(Integer id) {
        return bloodBankService.getDetailsByBloodBankID(id);
    }
}