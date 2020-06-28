package net.vicp.zyl_me.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ComponentScan("net.vicp.zyl_me.*")
@ImportResource("classpath:springmvc.xml")
public class RootConfig {
}
