package com.daomanh.jenkins.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/hello")
public class HelloController {

    @GetMapping("")
    public String hello(HttpServletRequest httpServletRequest) {
        return "Hello " + httpServletRequest.getPathInfo();
    }

}
