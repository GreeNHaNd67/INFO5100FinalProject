package edu.neu.mgen.bloodpressuremonitor.DAO;

import edu.neu.mgen.bloodpressuremonitor.Entity.BloodPressure;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;

import java.util.List;

public interface BloodPressureDAO extends JpaRepository<BloodPressure,Integer> {
    List<BloodPressure> findByDateBetween(LocalDate startTime, LocalDate endTime);

    List<BloodPressure> findAll();
}
