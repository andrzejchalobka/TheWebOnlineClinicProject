package pl.coderslab.project05.model;

import lombok.*;

import javax.persistence.*;

//@Data
//@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "role")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "role_id")
    private long id;
    @Column(name = "role")
    private String role;
}
