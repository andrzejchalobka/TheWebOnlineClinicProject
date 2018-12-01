package pl.coderslab.project05.model;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
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


    @NotNull
    @OneToMany(mappedBy = "specialization")
    private List<Doctor> doctors = new ArrayList<>();

}
