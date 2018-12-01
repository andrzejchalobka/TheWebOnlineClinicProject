//package pl.coderslab.project05.model;
//
//
//import javax.persistence.Entity;
//import javax.persistence.Table;
//
//@Entity
//@Table(name = "visit")
//public class Visit {
//
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private long id;
//
//    @CreationTimestamp
//    private Date date;
//
//    @NotNull
//    private Date DateOfVisit;
//
//    @ManyToOne
//    private Patient patient;
//
//    @ManyToOne
//    private Doctor doctor;
//
//    @ManyToOne
//    private Institution institution;
//}
