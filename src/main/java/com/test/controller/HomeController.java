package com.test.controller;

/**
 * Created by michelhayman on 7/21/17.
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld() {
        String name = "Michel";

        return new
                ModelAndView("index", "developerName", name);

    }

    @RequestMapping("/registration")
    // the String method returns the jsp page that we want to show
    public String registration() {

        return "registration";
    }

    @RequestMapping("/summary")
    // model is a paramter that allows us to add stuff to our jsp
    // requestParam allows us to take in date form the form -- we must assign a type and a variable with it
    public String formSuccess(Model model, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
                              @RequestParam("email") String email, @RequestParam("phoneNumber") String phoneNumber,
                              @RequestParam("password") String password, @RequestParam ("gender") String gender,
                            @RequestParam("mailingList") String mailingList, @RequestParam ("preferences") String preferences) {


        // add the values to the jsp using the model and addAttribute method
        model.addAttribute("firstName", firstName);
        model.addAttribute("lastName", lastName);
        model.addAttribute("email", email);
        model.addAttribute("phoneNumber", phoneNumber);
        model.addAttribute("password", password);
        model.addAttribute("gender", gender);
        model.addAttribute("mailingList", mailingList);
        model.addAttribute("preferences", preferences);


        return "summary";
    }
}
