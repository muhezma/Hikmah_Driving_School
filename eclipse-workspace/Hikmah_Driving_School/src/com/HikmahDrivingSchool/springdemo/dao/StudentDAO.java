package com.HikmahDrivingSchool.springdemo.dao;

import java.util.List;

import com.HikmahDrivingSchool.springdemo.entity.Student;

public interface StudentDAO {

	public Student validate(String email, String password);

	public List<Student> getStudents();

	public void saveStudent(Student theStudent);

	public Student getStudent(String theemail);

	public void deleteStudent(String theemail);

	

}
