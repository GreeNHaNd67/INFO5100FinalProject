package edu.neu.mgen.bloodpressuremonitor.Controllor;

import edu.neu.mgen.bloodpressuremonitor.Entity.BloodPressure;
import edu.neu.mgen.bloodpressuremonitor.Service.BloodPressureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping(path="/bloodpressure")
public class BloodPressureController {

    @Autowired
    BloodPressureService bloodPressureService;

    @GetMapping("/{startTime}/{endTime}")
    public List<BloodPressure> getByTimeRange(@PathVariable LocalDateTime startTime, @PathVariable LocalDateTime endTime) {
        return bloodPressureService.getByTimeRange(startTime, endTime );
    }
}
