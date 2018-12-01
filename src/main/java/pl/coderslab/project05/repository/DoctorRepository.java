package pl.coderslab.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.project05.model.Doctor;


@Repository("doctorrepository")
public interface DoctorRepository extends JpaRepository<Doctor, Long> {
}
