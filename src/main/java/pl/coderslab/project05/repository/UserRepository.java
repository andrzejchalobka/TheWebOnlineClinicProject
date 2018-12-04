package pl.coderslab.project05.repository;

import pl.coderslab.project05.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.project05.model.Visit;

import java.util.List;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
//    List<Visit> findAllByUserEmail(String email);
}