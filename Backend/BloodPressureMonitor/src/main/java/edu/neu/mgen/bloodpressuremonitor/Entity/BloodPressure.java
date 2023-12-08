package edu.neu.mgen.bloodpressuremonitor.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

import java.time.LocalDateTime;

@Entity
public class BloodPressure {

    @Id
    private int pressure_id;

    private int systolic_pressure;

    private int diastolic_pressure;

    private LocalDateTime time;

    private int heart_rate;

    private int heart_beats;

}
