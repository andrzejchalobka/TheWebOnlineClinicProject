//package pl.coderslab.project05.converter;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.core.convert.converter.Converter;
//import pl.coderslab.project05.model.Doctor;
//import pl.coderslab.project05.repository.DoctorRepository;
//
//public class DoctorConverter implements Converter<String,Doctor> {
//
//    @Autowired
//    DoctorRepository doctorRepository;
//
//    @Override
//    public Doctor convert(String s) {
//        return doctorRepository.findOne(Long.parseLong(s));
//    }
//
//}
