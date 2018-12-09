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
@Table(name = "institution")
public class Institution {



    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;


    private String town;

    private String adress;

    private int number;

    @OneToMany(mappedBy = "institution", fetch = FetchType.LAZY)
    private List<Visit> visits = new ArrayList<>();

//    public String getAdress() {
//        return adress + " " + number +" " + town;
//    }

    public String getAllAdress() {
        return adress + ", " + number +", " + town;
    }

}
