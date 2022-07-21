package jpa.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import jpa.dao.CourseDao;
import jpa.entitymodels.Course;
import jpa.entitymodels.Student;

public class CourseService implements CourseDao {
	
//	public static void main(String[] args) {
//		CourseService s = new CourseService();
//		List<Course> List = s.getAllCourses();
//		for (Course course : List) {
//			System.out.println(course);
//		}
//	}

	private static SessionFactory factory() {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)
				.buildSessionFactory();
		return factory;
	}

	public List<Course> getAllCourses() {
		Session session = null;
		List<Course> courseList = new ArrayList<Course>();
		try {
			session = factory().openSession();
			String hql = "select cor from Course cor";

			courseList = session.createQuery(hql).list();
		} catch (Exception ex) {
			ex.printStackTrace();
			// handle exception here
		} finally {
			try {
				if (session != null)
					session.close();
			} catch (Exception ex) {
			}
		}
		return courseList;

	}
}