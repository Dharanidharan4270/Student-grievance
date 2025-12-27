package com.examly.springapp.controller;


import java.util.List;
import java.util.Optional;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.examly.springapp.model.Grievance;
import com.examly.springapp.repository.GrievanceRepository;

@RestController
@RequestMapping("/api/grievances")
public class GrievanceController {

    @Autowired
    public GrievanceRepository grievanceRepository;

    @GetMapping
    public ResponseEntity<List<Grievance>> getAllGrievance(){
        List<Grievance> g=grievanceRepository.findAll();
        if(g.isEmpty()){
            return ResponseEntity.noContent().build();
        }

        return ResponseEntity.ok(g);
 
    }
    @GetMapping("/{id}")
    public ResponseEntity<Grievance> getGrievanceById(@PathVariable Long id){
       
       Optional<Grievance> g= grievanceRepository.findById(id);

       if(g.isEmpty()){
        throw new com.examly.springapp.exception.ResourceNotFoundException("Grievance not found");
       }
       return ResponseEntity.ok(g.get());
    }

    @PostMapping
    public ResponseEntity<Grievance> createGrievance(@RequestBody Grievance grievance){
       Grievance saved = grievanceRepository.save(grievance);
        return ResponseEntity.status(HttpStatus.CREATED).body(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Grievance> updateGrievance(@PathVariable Long id,@RequestBody Grievance grievance){
        grievance.setGrievanceId(id);

        Grievance update= grievanceRepository.save(grievance);
        return ResponseEntity.ok(update);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletById(@PathVariable Long id){
        grievanceRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
   
}
