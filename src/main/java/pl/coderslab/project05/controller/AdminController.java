package pl.coderslab.project05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.project05.model.Specialization;
import pl.coderslab.project05.repository.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin")
public class AdminController {

    DoctorRepository doctorRepository;
    InstitutionRepository institutionRepository;
    RoleRepository roleRepository;
    SpecializationRepository specializationRepository;
    UserRepository userRepository;
    VisitRepository visitRepository;

    @Autowired
    public AdminController(DoctorRepository doctorRepository, InstitutionRepository institutionRepository, RoleRepository roleRepository, SpecializationRepository specializationRepository, UserRepository userRepository, VisitRepository visitRepository) {
        this.doctorRepository = doctorRepository;
        this.institutionRepository = institutionRepository;
        this.roleRepository = roleRepository;
        this.specializationRepository = specializationRepository;
        this.userRepository = userRepository;
        this.visitRepository = visitRepository;
    }

    @GetMapping("/home")
    public String LoggedHome() {
        return "logged";
    }




    @RequestMapping(value = "/addspecialization",method = RequestMethod.GET)
    public String AddSpecialization(Model model){
        Specialization specialization = new Specialization();
        model.addAttribute("specialization",specialization);
        return "admin/addspecialization";

    }

    @RequestMapping(value = "/addspecialization",method = RequestMethod.POST)
    public String AddSpecialization(@Valid @ModelAttribute Specialization specialization, BindingResult result){
        if( result.hasErrors()){
            return "admin/addspecialization";
        }
        specializationRepository.save(specialization);
        return "redirect:/admin/home";
    }

//    @PostMapping("/add")
//    public String addUser(@Valid @ModelAttribute User user, BindingResult result) {
//        if (result.hasErrors()) {
//            return "addUser";
//        }
//        userRepository.save(user);
//        return "redirect:/user/all";
//    }








}
