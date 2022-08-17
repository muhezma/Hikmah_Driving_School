package com.HikmahDrivingSchool.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.HikmahDrivingSchool.springdemo.entity.Course;

@Repository
public class CourseDAOImpl implements CourseDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	@Transactional
	public List<Course> getCourses() {
		
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
				
		// create a query
		Query<Course> theQuery = 
				currentSession.createQuery("from Course", Course.class);
		
		// execute query and get result list
		List<Course> courses = theQuery.getResultList();
				
		// return the results		
		return courses;
	}
	@Override
	public void saveCourse(Course theCourse) 
    {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the course ... finally LOL
		currentSession.saveOrUpdate(theCourse);
		
	}
	@Override
	public Course getCourse(int theId) 
    {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the course ... finally LOL
		Course theCourse = currentSession.get(Course.class,theId);
		return theCourse;
		
	}
	@Override
	public void deleteCourse(int theId) {
	

			// get the current hibernate session
			Session currentSession = sessionFactory.getCurrentSession();
			
			// delete object with primary key
			Query theQuery = 
					currentSession.createQuery("delete from Course where id=:courseId");
			theQuery.setParameter("courseId", theId);
			
			theQuery.executeUpdate();		
		}
}
	
	








