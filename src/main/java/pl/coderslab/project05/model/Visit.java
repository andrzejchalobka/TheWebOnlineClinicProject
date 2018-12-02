package pl.coderslab.project05.model;


import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.sql.Date;
import java.sql.Time;

//@Data
//@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "visit")
public class Visit {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

//    @CreationTimestamp
    private Date date;

    private Date DateOfVisit;


    private Time timeOfVisit;



//-------------------------
//    @ManyToOne
//    private Patient patient;

    @ManyToOne(fetch = FetchType.LAZY, cascade = {CascadeType.MERGE})
    private User user;
//-------------------------
    @ManyToOne(fetch = FetchType.LAZY)
    private Doctor doctor;

    @ManyToOne(fetch = FetchType.LAZY)
    private Institution institution;
}
