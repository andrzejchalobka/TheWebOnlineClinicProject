package pl.coderslab.project05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.project05.model.Visit;
import pl.coderslab.project05.repository.*;

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

    @GetMapping("/test")
    public String goHomeStart() {
        return "logged";
    }

    @GetMapping("/test2")
    public String testConnectionToCcs() {
        return "user/test";
    }

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
