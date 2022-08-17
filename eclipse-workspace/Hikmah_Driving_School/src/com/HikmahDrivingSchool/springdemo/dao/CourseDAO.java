package com.HikmahDrivingSchool.springdemo.dao;

import java.util.List;

import com.HikmahDrivingSchool.springdemo.entity.Course;

public interface CourseDAO {

	public List<Course> getCourses();

	public void saveCourse(Course theCourse);

	public Course getCourse(int theId);

	public void deleteCourse(int theId);
	
	
	
}

