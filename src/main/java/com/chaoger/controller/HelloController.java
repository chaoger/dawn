package com.chaoger.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/*
**Created by chaoger on  18-5-12.
*/
@RestController
public class HelloController {

    @RequestMapping("/hello")
    public String index(){
        return "Hello World !";
    }
}
