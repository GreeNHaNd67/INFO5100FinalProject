package edu.neu.mgen.bloodpressuremonitor.DAO;

import edu.neu.mgen.bloodpressuremonitor.Entity.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminDAO extends JpaRepository<Admin,Integer> {
}
