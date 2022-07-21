package jpa.dao;

import java.util.List;
import jpa.entitymodels.Course;
import jpa.entitymodels.Student;

public interface StudentDao {

	public List<Student> getAllStudents();

	public Student getStudentByEmail(String email);

	public boolean validateStudent(String email, String password);

	public void registerStudentToCourse(String email, Integer courseId);

	public List<Course> getStudentCourses(String email);

}
