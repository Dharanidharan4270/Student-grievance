package com.examly.springapp.service;

import com.examly.springapp.model.GrievanceCategory;
import java.util.List;

public interface GrievanceCategoryService {
    GrievanceCategory addGrievanceCategory(GrievanceCategory category);
    List<GrievanceCategory> getAllGrievanceCategories();
    GrievanceCategory getGrievanceCategoryById(Long id);
    GrievanceCategory updateGrievanceCategory(Long id, GrievanceCategory category);
    List<GrievanceCategory> searchGrievanceCategories(String keyword);
}
