package com.examly.springapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.examly.springapp.model.GrievanceCategory;
import java.util.List;

@Repository
public interface GrievanceCategoryRepository extends JpaRepository<GrievanceCategory, Long> {
    List<GrievanceCategory> findByCategoryNameContainingOrDescriptionContaining(String categoryName, String description);
}
