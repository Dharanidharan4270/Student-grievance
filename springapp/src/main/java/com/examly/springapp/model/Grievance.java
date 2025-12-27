package com.examly.springapp.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Grievance {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long grievanceId;
    private String title;
    private String description;
    private String priority;

    private String grievanceStatus;

    @ManyToOne
    @JoinColumn(name = "complainant_id")
    private Student complainant;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private GrievanceCategory grievanceCategory;
}
