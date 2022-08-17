package com.HikmahDrivingSchool.springdemo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.HikmahDrivingSchool.springdemo.dao.StudentDAO;
import com.HikmahDrivingSchool.springdemo.entity.Student;
import com.HikmahDrivingSchool.springdemo.entity.User;

@Service
public class StudentServiceImpl implements StudentService {
	// need to inject DAO
		@Autowired
		private StudentDAO studentDAO;

		@Override
		public Student validate(String email, String password) {
			return studentDAO.validate(email, password);
		}
		
		@Override
		@Transactional
		public List<Student> getStudents() {
			return studentDAO.getStudents();
		}
		@Override
		@Transactional
		public void saveStudent (Student theStudent) {
			studentDAO.saveStudent(theStudent);
		}
		
		@Override
		@Transactional
		public  Student getStudent (String theemail) {
			
			return studentDAO.getStudent(theemail);
		}
		@Override
		@Transactional
		public void deleteStudent(String theemail) {
			studentDAO.deleteStudent(theemail);
			
		}

		
		
	
	
}


