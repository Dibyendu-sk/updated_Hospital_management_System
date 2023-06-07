package com.example.project.demo.ENTITY;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Doctor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@NotEmpty
	private String fullName;
	@NotEmpty
	private String dob;
	@NotEmpty
	private String qualification;
	@NotEmpty
	private String specialist;
	@NotEmpty
	private String email;
	@Column
	@Pattern(regexp = "\\d{10}", message = "Invalid phone number")
	private String MobileNumber;
	private String password;
}
