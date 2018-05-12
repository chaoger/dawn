package com.chaoger.controller;

import com.chaoger.dao.UserDao;
import com.chaoger.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/*
**Created by chaoger on  18-5-12.
*/
@RestController
public class HelloController {

    @Autowired
    private UserDao userDao;


    

    @RequestMapping("/hello")
    public String index(){
        User user = userDao.selectUserById(1);
        return user.toString();

    }
}
