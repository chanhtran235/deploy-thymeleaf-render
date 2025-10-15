package org.example.demo_depoye_spring_boot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/home")
    public String showHome(){
        return "home";
    }
}
