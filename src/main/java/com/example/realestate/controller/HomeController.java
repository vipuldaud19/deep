package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    // Root URL -> index.jsp
    @GetMapping("/")
    public String home() {
        return "index";
    }

    // Custom error page -> error.jsp
    @GetMapping("/error-page")
    public String errorPage() {
        return "error";
    }
}
