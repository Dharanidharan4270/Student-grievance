
package com.examly.springapp.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long studentId;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String status;

	@ManyToOne
	@JoinColumn(name = "role_id")
	private Role role;
}
