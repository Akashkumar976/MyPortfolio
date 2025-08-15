package com.portfolio.akashportfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class PortfolioController {

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/projects")
    public String projects() {
        return "projects";
    }

    @GetMapping("/experience")
    public String experience() {
        return "experience";
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }

    // ✅ POST method to handle feedback form submission
    @PostMapping("/submit-feedback")
    public String submitFeedback(@RequestParam("name") String name,
                                 @RequestParam("email") String email,
                                 @RequestParam("message") String message,
                                 Model model) {
        // For now, just print the feedback to the console
        System.out.println("📩 Feedback Received:");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Message: " + message);

        model.addAttribute("success", true);  // to show success message in contact.html
        return "contact";
    }
}
