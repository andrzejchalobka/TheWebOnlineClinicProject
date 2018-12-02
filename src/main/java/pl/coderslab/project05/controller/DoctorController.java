package pl.coderslab.project05.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.project05.model.Doctor;
import pl.coderslab.project05.model.Specialization;
import pl.coderslab.project05.repository.DoctorRepository;
import pl.coderslab.project05.repository.SpecializationRepository;

import javax.validation.Valid;
import java.util.Collection;
import java.util.List;

@Controller
@RequestMapping("admin/doctor")
public class DoctorController {

    SpecializationRepository specializationRepository;
    DoctorRepository doctorRepository;

    @Autowired
    public DoctorController(SpecializationRepository specializationRepository, DoctorRepository doctorRepository) {
        this.specializationRepository = specializationRepository;
        this.doctorRepository = doctorRepository;
    }


    @ModelAttribute("specialization")
    public Collection<Specialization> SpecializationAll(){
        return specializationRepository.findAll();
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String AddDoctor(Model model) {
        Doctor doctor = new Doctor();
        model.addAttribute("doctor", doctor);
        return "admin/adddoctor";

    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String AddDoctor(@Valid @ModelAttribute Doctor doctor, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/adddoctor";
        }
        doctorRepository.save(doctor);
        return "redirect:/admin/doctor/show";

    }

    @RequestMapping(path = "/show", method = RequestMethod.GET)
    public String AllDoctors(Model model) {

        List<Doctor> doctors = doctorRepository.findAll();

        model.addAttribute("doctors", doctors);

        return "admin/alldoctor";
    }


}
