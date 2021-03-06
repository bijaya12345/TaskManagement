
package com.hcl.taskmanagement.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Bean
	public AuthenticationProvider authProvider() {

		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(userDetailsService);
		provider.setPasswordEncoder(new BCryptPasswordEncoder());
		return provider;

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.csrf().disable().authorizeRequests().antMatchers("/login").permitAll().antMatchers("/").permitAll()
				.antMatchers("/register").permitAll().antMatchers("/welcome").permitAll().antMatchers("/create")
				.permitAll().antMatchers("/delete").permitAll().antMatchers("/display").permitAll()
				.antMatchers("/update").permitAll().antMatchers("/deleteUpdate").permitAll()
				.antMatchers("/updateConform").permitAll().antMatchers("/updateFromWelcome").permitAll()
				.antMatchers("/admin").hasRole("ADMIN").antMatchers("/**").hasAnyRole("USER", "ADMIN").anyRequest()
				.authenticated().and().formLogin().loginPage("/").permitAll().loginProcessingUrl("/welcome")
				.defaultSuccessUrl("/welcome").and().logout().invalidateHttpSession(true).clearAuthentication(true);

	}
}
