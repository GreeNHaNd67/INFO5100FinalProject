package edu.neu.mgen.bloodpressuremonitor.Controllor;

import edu.neu.mgen.bloodpressuremonitor.Entity.BloodPressure;
import edu.neu.mgen.bloodpressuremonitor.Service.BloodPressureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(path = "/bloodpressure")
public class BloodPressureController {

    @Autowired
    BloodPressureService bloodPressureService;

    @GetMapping(value = "/{startTime}/{endTime}", produces = "application/json")
    public ResponseEntity<Map<String, Object>> getByDateRange(
            @PathVariable(name = "startTime") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
            @PathVariable(name = "endTime") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        List<BloodPressure> result = bloodPressureService.getByDateRange(startTime, endTime);

        Map<String, Object> response = new HashMap<>();
        response.put("code", 200);
        response.put("data", result);

        return ResponseEntity.status(HttpStatus.OK).body(response);
    }

    @GetMapping(produces = "application/json")
    public ResponseEntity<Map<String, Object>> getAll() {
        List<BloodPressure> result = bloodPressureService.getAll();

        Map<String, Object> response = new HashMap<>();
        response.put("code", 200);
        response.put("data", result);

        return ResponseEntity.status(HttpStatus.OK).body(response);
    }
}