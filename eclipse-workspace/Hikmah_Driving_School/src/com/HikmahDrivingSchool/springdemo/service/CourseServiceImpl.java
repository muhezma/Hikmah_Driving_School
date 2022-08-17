package com.HikmahDrivingSchool.springdemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.HikmahDrivingSchool.springdemo.dao.CourseRepository;
import com.HikmahDrivingSchool.springdemo.entity.Course;

@Service
public class CourseServiceImpl implements CourseService {
	public List<Course> findAll(){return null;}

	public Course findById(int theId){return null;}

	public void save(Course theCourse) {}

	public void deleteById(int theId) {}
//
//	private CourseRepository courseRepository;
//	
//	@Autowired
//	public CourseServiceImpl(CourseRepository theCourseRepository) {
//		courseRepository = theCourseRepository;
//	}
//	
//	@Override
//	public List<Course> findAll() {
//		return courseRepository.findAll();
//	}
//
//	@Override
//	public Course findById(int theId) {
//		Optional<Course> result = courseRepository.findById(theId);
//		
//		Course theCourse = null;
//		
//		if (result.isPresent()) {
//			theCourse = result.get();
//		}
//		else {
//			// we didn't find the course
//			throw new RuntimeException("Did not find course id - " + theId);
//		}
//		
//		return theCourse;
//	}
//
//	@Override
//	public void save(Course theCourse) {
//		courseRepository.save(theCourse);
//	}
//
//	@Override
//	public void deleteById(int theId) {
//		courseRepository.deleteById(theId);
//	}
//
}






