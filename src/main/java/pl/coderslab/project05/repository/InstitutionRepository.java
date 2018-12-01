package pl.coderslab.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.project05.model.Institution;


@Repository("institutionrepository")
public interface InstitutionRepository extends JpaRepository<Institution,Long> {
}
