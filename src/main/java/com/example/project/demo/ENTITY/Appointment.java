package com.example.project.demo.ENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Appointment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int userId;
	private String fullName;
	private String gender;
	private String age;
	private String appointmentdate;
	private String email;
	@Column
	@Pattern(regexp = "\\d{10}", message = "Invalid phone number")
	private String phNo;
	private String diseases;
	private int doctorId;
	private String address;
	private String status;
}
