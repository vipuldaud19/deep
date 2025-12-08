package com.example.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class HomeController {

	// Root URL mapping
    @GetMapping("/project")
    public String home() {
        return "index"; // renders index.jsp
    }

    // Optional: custom error mapping
    @GetMapping("/error")
    public String error() {
        return "error"; // renders error.jsp
    
}
}