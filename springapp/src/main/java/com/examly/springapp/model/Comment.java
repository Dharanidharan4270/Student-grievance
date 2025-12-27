package com.examly.springapp.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long commentId;
    private String content;
    private Boolean isInternal;
    
    @ManyToOne
    @JoinColumn(name = "grievance_id")
    private Grievance grievance;
    
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
