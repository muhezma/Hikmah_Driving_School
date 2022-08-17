package com.HikmahDrivingSchool.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="course")
public class Course {
	
	@Id
	@Column(name = "idcourse")
	private int idcourse;
	
	@Column(name = "courseName")
	private int courseName;
	
	@Column(name = "instructorTeaching")
	private int instructorTeaching;
	
	public Course () {
		
	}

	public Course(int idcourse, int courseName, int instructorTeaching) {
	
		this.idcourse = idcourse;
		this.courseName = courseName;
		this.instructorTeaching = instructorTeaching;
	}

	public int getIdcourse() {
		return idcourse;
	}

	public void setIdcourse(int idcourse) {
		this.idcourse = idcourse;
	}

	public int getCourseName() {
		return courseName;
	}

	public void setCourseName(int courseName) {
		this.courseName = courseName;
	}

	public int getInstructorTeaching() {
		return instructorTeaching;
	}

	public void setInstructorTeaching(int instructorTeaching) {
		this.instructorTeaching = instructorTeaching;
	}

	@Override
	public String toString() {
		return "Course [idcourse=" + idcourse + ", courseName=" + courseName + ", instructorTeaching="
				+ instructorTeaching + "]";
	}
	
	
}
