package com.test.jenkins;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControllerTest {

    @GetMapping(value = "/")
    public String testHome(){
        System.out.println("hello");
        return "hello";
    }
}
