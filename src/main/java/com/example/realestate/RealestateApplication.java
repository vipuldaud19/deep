package com.example.realestate;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan("com.example.realestate.model")
@EnableJpaRepositories("com.example.realestate.repository")
public class RealestateApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(RealestateApplication.class, args);
    }

    // ⭐ Required for WAR deployment
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(RealestateApplication.class);
    }
}
