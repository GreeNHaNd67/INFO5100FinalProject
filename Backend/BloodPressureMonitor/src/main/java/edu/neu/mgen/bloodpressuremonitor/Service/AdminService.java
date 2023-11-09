package edu.neu.mgen.bloodpressuremonitor.Service;

import edu.neu.mgen.bloodpressuremonitor.DAO.AdminDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    AdminDAO adminDAO;
}
