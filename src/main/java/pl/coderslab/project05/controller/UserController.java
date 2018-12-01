package pl.coderslab.project05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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



    @RequestMapping(path = "/allvisits", method = RequestMethod.GET)
    public String mainPage(Model model) {

        List<Visit> visits = visitRepository.findAll();
        model.addAttribute("visits", visits);

        return "allvisits";
    }


    @GetMapping("/test")

    public String goHomeStart() {
        return "logged";
    }


}
