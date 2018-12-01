package pl.coderslab.project05.model;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "visit")
public class Visit {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @CreationTimestamp
    private Date date;


    private Date DateOfVisit;

//-------------------------
//    @ManyToOne
//    private Patient patient;

    @ManyToOne
    private User user;
//-------------------------
    @ManyToOne
    private Doctor doctor;

    @ManyToOne
    private Institution institution;
}
