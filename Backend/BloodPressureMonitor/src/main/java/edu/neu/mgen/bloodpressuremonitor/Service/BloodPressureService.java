package edu.neu.mgen.bloodpressuremonitor.Service;

import edu.neu.mgen.bloodpressuremonitor.DAO.BloodPressureDAO;
import edu.neu.mgen.bloodpressuremonitor.Entity.BloodPressure;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class BloodPressureService {
    @Autowired
    BloodPressureDAO bloodPressureDAO;

    public List<BloodPressure> getByDateRange(LocalDate startTime, LocalDate endTime) {
        return bloodPressureDAO.findByDateBetween(startTime,endTime);
    }

    public List<BloodPressure> getAll(){
        return bloodPressureDAO.findAll();
    }
}
