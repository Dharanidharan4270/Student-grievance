package com.examly.springapp.service;

import com.examly.springapp.model.GrievanceCategory;
import com.examly.springapp.repository.GrievanceCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class GrievanceCategoryServiceImpl implements GrievanceCategoryService {
    @Autowired
    private GrievanceCategoryRepository categoryRepository;

    public GrievanceCategory addGrievanceCategory(GrievanceCategory category) {
        return categoryRepository.save(category);
    }

    public List<GrievanceCategory> getAllGrievanceCategories() {
        return categoryRepository.findAll();
    }

    public GrievanceCategory getGrievanceCategoryById(Long id) {
        return categoryRepository.findById(id).orElse(null);
    }

    public GrievanceCategory updateGrievanceCategory(Long id, GrievanceCategory category) {
        category.setCategoryId(id);
        return categoryRepository.save(category);
    }

    public List<GrievanceCategory> searchGrievanceCategories(String keyword) {
        return categoryRepository.findByCategoryNameContainingOrDescriptionContaining(keyword, keyword);
    }
}
