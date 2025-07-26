package com.bank.digital_bank_boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.bank")
public class DigitalBankBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(DigitalBankBootApplication.class, args);
	}

}
