package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "controler;Modele;DAO")
public class FormationApplication {

	public static void main(String[] args) {
		SpringApplication.run(FormationApplication.class, args);
	}

}
