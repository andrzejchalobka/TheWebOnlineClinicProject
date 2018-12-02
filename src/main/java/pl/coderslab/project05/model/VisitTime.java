package pl.coderslab.project05.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VisitTime {
    private String hourMinute;

    public VisitTime(String hourMinute) {
        this.hourMinute = hourMinute;
    }
}
