package pl.coderslab.project05.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.project05.model.*;
import pl.coderslab.project05.repository.*;

import javax.validation.Valid;
import java.util.Arrays;
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

    @ModelAttribute("hours")
    public Collection<VisitTime> getHours() {
        VisitTime[] visitTimes = {new VisitTime("09:00"),new VisitTime("09:30"),new VisitTime("10:00"),new VisitTime("10:30")};

        return Arrays.asList(visitTimes);
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String AddVisit(Model model) {
        Visit visit = new Visit();
        model.addAttribute("visit", visit);
        return "visits/addvisit";
}

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String AddVisit(@Valid @ModelAttribute Visit visit, BindingResult result) {
        if (result.hasErrors()) {
            return "visits/addvisit";
        }
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalEmail = authentication.getName();
        User loggedInUser = this.userRepository.findByEmail(currentPrincipalEmail);

        visit.setUser(loggedInUser);
        visitRepository.save(visit);
        return "redirect:/admin/visit/show";
}

    @RequestMapping(path = "/show", method = RequestMethod.GET)
    public String AllVisit(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalEmail = authentication.getName();
        List<Visit> visits = visitRepository.findAllByUserEmail(currentPrincipalEmail);

        model.addAttribute("visits", visits);

        return "visits/allvisit3";
    }

    @GetMapping("/delete/{id}")
    public String deleteVisit(@PathVariable long id) {
        visitRepository.deleteById(id);
        return "redirect:/admin/visit/show";
    }

    @GetMapping("/edit/{id}")
    public String editVisit(Model model, @PathVariable long id) {
        model.addAttribute("visit", visitRepository.findById(id));
        return "visits/addvisit";
    }

    @PostMapping("edit/**")
    public String editVisit(@Valid @ModelAttribute Visit visit, BindingResult result) {
        if (result.hasErrors()) {
            return "visits/addvisit";
        }
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalEmail = authentication.getName();
        User loggedInUser = this.userRepository.findByEmail(currentPrincipalEmail);
        visit.setUser(loggedInUser);
        visitRepository.save(visit);
        return "redirect:/admin/visit/show";
    }



}
