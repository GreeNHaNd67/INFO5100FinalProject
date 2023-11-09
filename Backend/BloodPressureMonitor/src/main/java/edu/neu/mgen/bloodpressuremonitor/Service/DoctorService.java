package edu.neu.mgen.bloodpressuremonitor.Service;

import edu.neu.mgen.bloodpressuremonitor.DAO.DoctorDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DoctorService {
    @Autowired
    DoctorDAO doctorDAO;
}
