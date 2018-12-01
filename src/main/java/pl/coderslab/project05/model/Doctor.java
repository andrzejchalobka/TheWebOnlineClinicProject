//package pl.coderslab.project05.model;
//
//
//import lombok.AllArgsConstructor;
//import lombok.Builder;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//import javax.persistence.Entity;
//import javax.persistence.Table;
//
//
//@Data
//@Builder
//@AllArgsConstructor
//@NoArgsConstructor
//@Entity
//@Table(name = "doctor")
//public class Doctor {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private long id;
//
//    @NotNull
//    private String name;
//    @NotNull
//    private String surname;
//
////    @OneToOne//(fetch = FetchType.LAZY)
////    @JoinColumn(name = "specialization_id") - to jest opcjonalne
////    @NotNull
////    private Specialization specialization;
//
//    @ManyToOne
//    private Specialization specialization;
//
//    @OneToMany(mappedBy = "doctor")
//    private List<Visit> visits = new ArrayList<>();
//
//    @NotNull
//    private String patient;
//    @NotNull
//    private String instituion;
//}