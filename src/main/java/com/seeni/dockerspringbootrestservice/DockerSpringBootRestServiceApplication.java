package com.seeni.dockerspringbootrestservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;

@SpringBootApplication
@RestController
public class DockerSpringBootRestServiceApplication {

    @GetMapping("/hello")
    public String home() throws Exception {
        return "Hello Docker World " + InetAddress.getLocalHost().getHostName();
    }

    public static void main(String[] args) {
        SpringApplication.run(DockerSpringBootRestServiceApplication.class, args);
    }
}
