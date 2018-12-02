package pl.coderslab.project05.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import pl.coderslab.project05.converter.StringToTimeConverter;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(getStringToTimeConverter());
    }

    @Bean
    public StringToTimeConverter getStringToTimeConverter() {
        return new StringToTimeConverter();
    }
}