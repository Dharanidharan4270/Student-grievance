package com.examly.springapp.controller;

import com.examly.springapp.model.GrievanceCategory;
import com.examly.springapp.service.GrievanceCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/grievance-categories")
public class GrievanceCategoryController {
    @Autowired
    private GrievanceCategoryService categoryService;

    @PostMapping
    public ResponseEntity<GrievanceCategory> addGrievanceCategory(@RequestBody GrievanceCategory category) {
        return ResponseEntity.status(HttpStatus.CREATED).body(categoryService.addGrievanceCategory(category));
    }

    @GetMapping
    public ResponseEntity<List<GrievanceCategory>> getAllGrievanceCategories() {
        return ResponseEntity.ok(categoryService.getAllGrievanceCategories());
    }

    @GetMapping("/{id}")
    public ResponseEntity<GrievanceCategory> getGrievanceCategoryById(@PathVariable Long id) {
        return ResponseEntity.ok(categoryService.getGrievanceCategoryById(id));
    }

    @PutMapping("/{id}")
    public ResponseEntity<GrievanceCategory> updateGrievanceCategory(@PathVariable Long id, @RequestBody GrievanceCategory category) {
        return ResponseEntity.ok(categoryService.updateGrievanceCategory(id, category));
    }

    @GetMapping("/search/{keyword}")
    public ResponseEntity<List<GrievanceCategory>> searchGrievanceCategories(@PathVariable String keyword) {
        return ResponseEntity.ok(categoryService.searchGrievanceCategories(keyword));
    }
}
