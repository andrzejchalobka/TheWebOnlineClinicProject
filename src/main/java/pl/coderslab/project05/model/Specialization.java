package pl.coderslab.project05.model;


import lombok.*;

import javax.persistence.*;
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
@Table(name = "specialization")
public class Specialization {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;


    @NotNull
    private String specialType;



    @OneToMany(mappedBy = "specialization", fetch = FetchType.LAZY)
    private List<Doctor> doctors = new ArrayList<>();

}
