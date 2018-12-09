package pl.coderslab.project05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.project05.model.User;
import pl.coderslab.project05.model.Visit;
import pl.coderslab.project05.repository.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    DoctorRepository doctorRepository;
    InstitutionRepository institutionRepository;
    RoleRepository roleRepository;
    SpecializationRepository specializationRepository;
    UserRepository userRepository;
    VisitRepository visitRepository;

    @Autowired
    public UserController(DoctorRepository doctorRepository, InstitutionRepository institutionRepository, RoleRepository roleRepository, SpecializationRepository specializationRepository, UserRepository userRepository, VisitRepository visitRepository) {
        this.doctorRepository = doctorRepository;
        this.institutionRepository = institutionRepository;
        this.roleRepository = roleRepository;
        this.specializationRepository = specializationRepository;
        this.userRepository = userRepository;
        this.visitRepository = visitRepository;
    }

    @GetMapping("/log")
    public String goLogStart() {
        return "logged";
    }






    @GetMapping("/home")
    public String goHomeStart(@ModelAttribute User user, Model model ) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userName = authentication.getName();
        String currentPrincipalEmail = authentication.getName();

        User loggedInUser = this.userRepository.findByEmail(currentPrincipalEmail);

        model.addAttribute("user",userName);
        model.addAttribute("loggedInUser",loggedInUser);
        return "home";
    }


    @GetMapping("/userinfo")
    public String userInfo(@ModelAttribute User user, Model model ) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userName = authentication.getName();
        String currentPrincipalEmail = authentication.getName();

        User loggedInUser = this.userRepository.findByEmail(currentPrincipalEmail);

        model.addAttribute("user",userName);
        model.addAttribute("loggedInUser",loggedInUser);
        return "user/userinfo";
    }

////CRUD USER///

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String AddUser(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user/adduser";

    }
@RequestMapping(value = "/add", method = RequestMethod.POST)
public String AddUser(@Valid @ModelAttribute User user, BindingResult result) {
    if (result.hasErrors()) {
        return "user/adduser";
    }
    userRepository.save(user);
    return "redirect:/user/showall";

}

    @RequestMapping(path = "/showall", method = RequestMethod.GET)
    public String showUser(Model model) {

        List<User> users = userRepository.findAll();
        model.addAttribute("users", users);

        return "user/allusers";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable long id) {
        userRepository.deleteById(id);
        return "redirect:/admin/user/showall";
    }

    @GetMapping("/edit/{id}")
    public String editUser(Model model, @PathVariable long id) {
        model.addAttribute("user", userRepository.findById(id));
        return "user/adduser";
    }

    @PostMapping("edit/**")
    public String editUser(@Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user/adduser";
        }
        userRepository.save(user);
        return "redirect:/admin/user/showall";
    }











//Testing Controller to include jps file
    @GetMapping("/main")
    public String testConnectionToMain() {
        return "admin/main";
    }





//    @GetMapping("/info")
//    public String UserInfo(Model model){
//
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        String currentPrincipalEmail = authentication.getName();
//        List<Visit> user = userRepository.findAllByUserEmail(currentPrincipalEmail);
//
//        model.addAttribute("user",user);
//
//
//        return "user/userinfo";
//
//    }




}
