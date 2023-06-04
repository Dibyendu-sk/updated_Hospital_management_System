package com.example.project.demo.ENTITY;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Specialist {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String specialistName;
}