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
import java.util.List;

@Controller
@RequestMapping("/admin/specialization")
public class SpecializationController {

    DoctorRepository doctorRepository;
    InstitutionRepository institutionRepository;
    RoleRepository roleRepository;
    SpecializationRepository specializationRepository;
    UserRepository userRepository;
    VisitRepository visitRepository;

    @Autowired
    public SpecializationController(DoctorRepository doctorRepository, InstitutionRepository institutionRepository, RoleRepository roleRepository, SpecializationRepository specializationRepository, UserRepository userRepository, VisitRepository visitRepository) {
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



    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String AddSpecialization(Model model){
        Specialization specialization = new Specialization();
        model.addAttribute("specialization",specialization);
        return "admin/addspecialization";

    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String AddSpecialization(@Valid @ModelAttribute Specialization specialization, BindingResult result){
        if( result.hasErrors()){
            return "admin/addspecialization";
        }
        specializationRepository.save(specialization);
        return "redirect:/admin/specialization/show";
    }

    @RequestMapping(path = "/show", method = RequestMethod.GET)
    public String AllSpecialization(Model model) {

        List<Specialization> specializations = specializationRepository.findAll();

        model.addAttribute("specializations", specializations);

        return "admin/allspecialization";
    }








}
