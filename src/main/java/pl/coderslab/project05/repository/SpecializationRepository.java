package pl.coderslab.project05.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.project05.model.Specialization;

@Repository("specializationrepository")
public interface SpecializationRepository extends JpaRepository<Specialization,Long> {
}
