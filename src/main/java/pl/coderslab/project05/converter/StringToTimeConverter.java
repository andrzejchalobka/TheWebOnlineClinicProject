package pl.coderslab.project05.converter;


import org.springframework.core.convert.converter.Converter;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalTime;

public class StringToTimeConverter implements Converter<String, Time> {
    @Override
    public Time convert(String hourMinute) {
        Time t = Time.valueOf(hourMinute+":00");
        return t;
    }
}
