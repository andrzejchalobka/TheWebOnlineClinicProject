package pl.coderslab.project05.controller;


import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.project05.model.User;
import pl.coderslab.project05.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class LoginControllerJsp {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String goHomeStart() {
        return "start";
    }

    @GetMapping("/logout")
    public String Logout() {
        return "logout";
    }

    @GetMapping("/infoinst")
    public String infoInst() {
        return "infoinstitution";
    }

    @GetMapping("/userinfo")
    public String UserInfo(Model model) {
        return "userinfo";
    }


    @GetMapping("/test")
    public String goHome() {
        return "index";
    }



    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login(Model model) {
        return "login";

    }

    @RequestMapping(value = {"/login/error"}, method = RequestMethod.GET)
    public String loginError(Model model) {
        String error = "Wrong name or password";
        model.addAttribute("error", error);
        return "loginerror";

    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String register(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "/register";

    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String createNewUser(@Valid User user, BindingResult result, Model model) throws Exception {
        User userExists = userService.findUserByEmail(user.getEmail());
        if (userExists != null) {
            result.rejectValue("email", "error.user",
                    "User with this e-mail address already exist, please review input");
        }
        if(result.hasErrors()) {
            return "register";
        } else {
            userService.saveUser(user);
                        model.addAttribute("successMessage", "Registration succesful");

            return "registersucces";
        }



    }











}
