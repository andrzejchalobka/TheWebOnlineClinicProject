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
@Table(name = "institution")
public class Institution {



    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;


    private String town;

    private String adress;

    private int number;

    @OneToMany(mappedBy = "institution")
    private List<Visit> visits = new ArrayList<>();
}
