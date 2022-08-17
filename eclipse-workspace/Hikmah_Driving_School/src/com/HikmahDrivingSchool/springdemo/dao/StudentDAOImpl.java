package com.HikmahDrivingSchool.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.HikmahDrivingSchool.springdemo.entity.Student;

@Repository
@Transactional
public class StudentDAOImpl implements StudentDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Student validate(String email, String password) {
//		if (email.equals(password)) {
//			Student student = new Student();
//			student.setEmail(email);
//			return student;
//		} else {
//			return null;
//		}

		// get the current hibernate session
		Student student = getStudent(email);
		if((student != null) && student.getPassword().equals(password)) {
			return student;
		}
		else {
			return null;
		}

	}

	@Override
	@Transactional
	public List<Student> getStudents() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Student> theQuery = currentSession.createQuery("from Student", Student.class);

		// execute query and get result list
		List<Student> students = theQuery.getResultList();

		// return the results
		return students;
	}

	@Override
	public void saveStudent(Student theStudent) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// save the student ... finally LOL
		currentSession.saveOrUpdate(theStudent);

	}

	@Override
//	@Transactional
	public Student getStudent(String theemail) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// get the student ... finally LOL
		System.out.println("getStudent() theemail: " + theemail);    
		Student theStudent = currentSession.get(Student.class, theemail);
		System.out.println("getStudent() student: " + theStudent);    

		return theStudent;

	}

	@Override
	public void deleteStudent(String theemail) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// delete object with primary key
		Query theQuery = currentSession.createQuery("delete from Student where id=:studentemail");
		theQuery.setParameter("studentemail", theemail);

		theQuery.executeUpdate();
	}

}
