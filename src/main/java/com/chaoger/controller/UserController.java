package com.chaoger.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.chaoger.model.User;
import com.chaoger.dao.UserDao;
/*
**Created by chaoger on  18-5-12.
*/
@Controller
public class UserController {

    @RequestMapping(value="/login")
    public String hello(){
        System.out.println("--login");
        return "login";
    }




}




