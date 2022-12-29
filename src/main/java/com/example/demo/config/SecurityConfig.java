package com.example.demo.config;



import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import com.sorincorp.comm.util.RedisUtil;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{


	//private final RedisUtil redisUtil;

	
	// 암호화에 필요한 PasswordEncoder를 Bean 등록
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
//	}
//	
//	// authenticationMannger를 Bean 등록
//	@Bean
//	@Override
//	public AuthenticationManager authenticationManagerBean() throws Exception {
//		return super.authenticationManagerBean();
//	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.headers().frameOptions().sameOrigin().and()
			.httpBasic().disable()
		//	.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
		//	.and()
			.authorizeRequests()
			/* ROLE을 사용하는 경우만 처리*/
			.antMatchers("/admin/**").hasRole("ADMIN") 
			.antMatchers("/**").permitAll()
			.antMatchers("/").authenticated()
			.anyRequest().permitAll()
			//.and().formLogin().loginPage("/login/loginView") /**로그인 페이지 커스터마이징을 위한 설정*/
			//.and().logout().logoutUrl("/login/logout").logoutSuccessUrl("/login/loginView").deleteCookies("boaccessToken")
			.and().csrf().disable(); /**ajax 설정시 csrf token 전송하는 설정을 disable한다.*/
			
	}
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/images/**", "/css/**", "/js/**", "/fonts/**");
	}
	
	
}




