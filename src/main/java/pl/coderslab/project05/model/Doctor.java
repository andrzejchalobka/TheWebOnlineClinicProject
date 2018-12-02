package pl.coderslab.project05.model;


import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;


//@Data
//@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "doctor")
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;


    private String name;

    private String surname;


    @ManyToOne(fetch = FetchType.LAZY)
    private Specialization specialization;

    @OneToMany(mappedBy = "doctor", fetch = FetchType.LAZY)
    private List<Visit> visits = new ArrayList<>();

    public String getFullName() {
        return name + " " + surname;
    }


}
