package com.rain.tpl;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class TplApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(TplApplication.class, args);
	}
	 @Override
	 protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
	      return builder.sources(TplApplication.class);
	  }
}
