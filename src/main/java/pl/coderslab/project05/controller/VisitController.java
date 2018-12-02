package pl.coderslab.project05.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.project05.model.*;
import pl.coderslab.project05.repository.*;

import javax.validation.Valid;
import java.util.Collection;
import java.util.List;

@Controller
@RequestMapping("/admin/visit")
public class VisitController {

    DoctorRepository doctorRepository;
    InstitutionRepository institutionRepository;
    RoleRepository roleRepository;
    SpecializationRepository specializationRepository;
    UserRepository userRepository;
    VisitRepository visitRepository;

    @Autowired
    public VisitController(DoctorRepository doctorRepository, InstitutionRepository institutionRepository, RoleRepository roleRepository, SpecializationRepository specializationRepository, UserRepository userRepository, VisitRepository visitRepository) {
        this.doctorRepository = doctorRepository;
        this.institutionRepository = institutionRepository;
        this.roleRepository = roleRepository;
        this.specializationRepository = specializationRepository;
        this.userRepository = userRepository;
        this.visitRepository = visitRepository;
    }

    @ModelAttribute("doctors")
    public Collection<Doctor> doctorAll() {
        return doctorRepository.findAll();
    }

    @ModelAttribute("specialization")
    public Collection<Specialization> SpecializationAll() {
        return specializationRepository.findAll();
    }

    @ModelAttribute("institutions")
    public Collection<Institution> institutionAll() {
        return institutionRepository.findAll();
    }

    @ModelAttribute("user")
    public Collection<User> UserAll() {
        return userRepository.findAll();
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String AddVisit(Model model) {
        Visit visit = new Visit();
        model.addAttribute("visit", visit);
        return "admin/addvisit";

    }


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String AddVisit(@Valid @ModelAttribute Visit visit, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/addvisit";
        }
        visitRepository.save(visit);
        return "redirect:/admin/visit/show";

    }

    @RequestMapping(path = "/show", method = RequestMethod.GET)
    public String AllVisit(Model model) {

        List<Visit> visits = visitRepository.findAll();

        model.addAttribute("visits", visits);

        return "admin/allvisits";
    }

}
