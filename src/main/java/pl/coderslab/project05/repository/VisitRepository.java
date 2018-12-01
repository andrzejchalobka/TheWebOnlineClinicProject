package pl.coderslab.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.project05.model.Visit;

@Repository("visitrepository")
public interface VisitRepository extends JpaRepository<Visit, Long> {

}
