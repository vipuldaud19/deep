package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    // Root URL mapping
    @GetMapping("/")
    public String home() {
        return "index"; // renders index.jsp
    }

    // Optional: custom error mapping
    @GetMapping("/error")
    public String error() {
        return "error"; // renders error.jsp
    }
}
