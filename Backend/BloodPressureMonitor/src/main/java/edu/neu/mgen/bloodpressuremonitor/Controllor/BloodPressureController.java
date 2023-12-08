package edu.neu.mgen.bloodpressuremonitor.Controllor;

import edu.neu.mgen.bloodpressuremonitor.Entity.BloodPressure;
import edu.neu.mgen.bloodpressuremonitor.Service.BloodPressureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;

@RestController
@RequestMapping(path="/bloodpressure")
public class BloodPressureController {

    @Autowired
    BloodPressureService bloodPressureService;

    @GetMapping("/{startTime}/{endTime}")
    public List<BloodPressure> getByDateRange(@PathVariable @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate startTime,
                                              @PathVariable @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate endTime) {
        return bloodPressureService.getByDateRange(startTime, endTime );
    }

    @GetMapping()
    public List<BloodPressure> getAll(){
        return bloodPressureService.getAll();
    }
}
