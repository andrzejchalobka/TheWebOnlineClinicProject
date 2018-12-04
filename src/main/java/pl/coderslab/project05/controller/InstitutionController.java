package pl.coderslab.project05.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.project05.model.Institution;
import pl.coderslab.project05.repository.InstitutionRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("admin/institution")
public class InstitutionController {


    InstitutionRepository institutionRepository;

    @Autowired
    public InstitutionController(InstitutionRepository institutionRepository) {
        this.institutionRepository = institutionRepository;
    }


//Mozna sprobowac wyswietlic dla kazdej instutucji to samo
    @RequestMapping(path="/info", method = RequestMethod.GET)
    public String InfoInstitution(){
        return "institution/infoinstitution";
    }


    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String AddInstitution(Model model){
        Institution institution = new Institution();
        model.addAttribute("institution",institution);

        return "institution/addinstitution";

}

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String AddInstitution(@Valid @ModelAttribute Institution institution, BindingResult result){
        if( result.hasErrors()){
            return "institution/addinstitution";
        }
        institutionRepository.save(institution);
        return "redirect:/admin/institution/show";

    }

    @RequestMapping(path = "/show", method = RequestMethod.GET)
    public String AllInstitution(Model model) {

        List<Institution> institutions = institutionRepository.findAll();
        model.addAttribute("institution", institutions);
        return "institution/allinstitution";
    }

    @GetMapping("/delete/{id}")
    public String deleteInstitution(@PathVariable long id) {
        institutionRepository.deleteById(id);
        return "redirect:/admin/institution/show";
    }

    @GetMapping("/edit/{id}")
    public String editInstitution(Model model, @PathVariable long id) {
        model.addAttribute("institution", institutionRepository.findById(id));
        return "institution/addinstitution";
    }

    @PostMapping("edit/**")
    public String editInstitution(@Valid @ModelAttribute Institution institution, BindingResult result) {
        if (result.hasErrors()) {
            return "institution/addinstitution";
        }
        institutionRepository.save(institution);
        return "redirect:/admin/institution/show";
    }



}
