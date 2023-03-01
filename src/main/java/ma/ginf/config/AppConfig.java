/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ma.ginf.config;

import ma.ginf.services.EleveService;
import ma.ginf.services.FiliereService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 *
 * @author hp
 */
@Configuration
@ComponentScan("ma.ginf")
public class AppConfig {
    @Bean
    public FiliereService filiereService() {
        return new FiliereService();
    }
    @Bean
    public EleveService eleveService() {
        return new EleveService();
    }
}
