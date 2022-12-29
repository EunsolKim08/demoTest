package com.example.demo.config;

import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

@Configuration
public class MessageSourceConfig {

	@Bean
    public MessageSource messageSource() {
    	 ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
    	 messageSource.setDefaultLocale(Locale.KOREAN);
    	 messageSource.setBasenames("classpath:message/message-comm", "classpath:/message/validation");
         //messageSource.setBasenames("classpath:message/message-comm_ko", "classpath:/message/validation_ko");
         messageSource.setDefaultEncoding("UTF-8");
         messageSource.setCacheSeconds(10);
         return messageSource;
    }
	
	@Bean
	public MessageSourceAccessor getMessageSourceAccessor() {
		return new MessageSourceAccessor(messageSource());
	}
}