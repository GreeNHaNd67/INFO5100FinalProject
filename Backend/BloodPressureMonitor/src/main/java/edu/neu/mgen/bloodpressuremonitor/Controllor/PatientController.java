package edu.neu.mgen.bloodpressuremonitor.Controllor;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path="/patient")
public class PatientController {
    @GetMapping()
    public String sayHello() {
        return "Hello, World!";
    }
}
