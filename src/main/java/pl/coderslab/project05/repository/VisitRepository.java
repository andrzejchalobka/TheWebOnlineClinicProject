package pl.coderslab.project05.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.project05.model.Visit;

import java.util.List;

@Repository("visitrepository")
public interface VisitRepository extends JpaRepository<Visit, Long> {

    List<Visit> findAllByUserEmail(String email);
}
