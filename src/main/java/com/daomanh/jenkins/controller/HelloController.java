package com.daomanh.jenkins.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/hello")
public class HelloController {

    public static final int Manh = 55;

    @GetMapping("")
    public String hello(HttpServletRequest httpServletRequest) {
        if(Manh > 50){
            System.out.println("ahihi");
        }
        return "Hello " + httpServletRequest.getPathInfo();
    }

}
