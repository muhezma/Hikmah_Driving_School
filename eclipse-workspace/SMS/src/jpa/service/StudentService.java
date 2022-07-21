package jpa.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import jpa.dao.StudentDao;
import jpa.entitymodels.Course;
import jpa.entitymodels.Student;

public class StudentService implements StudentDao {

//	public static void main(String[] args) {
//		StudentService s = new StudentService();
//		System.out.println(s.getAllStudents());
//		System.out.println("------------validateStudent");
//		System.out.println(s.validateStudent("tattwool4@biglobe.ne.jp", "-Hjt0SoVmuBz"));
//
//		System.out.println("------------registerStudentToCourse");
//		s.registerStudentToCourse("tattwool4@biglobe.ne.jp", 7);
//
//		System.out.println("------------tattwool4@biglobe.ne.jp");
//		System.out.println(s.getStudentCourses("tattwool4@biglobe.ne.jp"));
//	}

	private static SessionFactory factory() {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)
				.buildSessionFactory();
		return factory;
	}

	public List<Student> getAllStudents() {
		SessionFactory factory = factory();

		try {
			Session session = factory.getCurrentSession();
			session.beginTransaction();

			/// System.out.println("Not passing here");

			List<Student> theStudents = session.createQuery("from Student", Student.class).getResultList();

			for (Student tempStudent : theStudents) {
				System.out.println(tempStudent);
			}
			session.close();
			System.out.println("Done!");
			return theStudents;

		} finally {
			factory.close();
		}
	}

	public Student getStudentByEmail(String email) {
		SessionFactory factory = factory();
		try {
			Session session = factory.getCurrentSession();
			session.beginTransaction();
			Student theStudent = session.get(Student.class, email);
			// display
			System.out.println("\n\nStudent who has an ID of " + email);
			session.getTransaction().commit();
			return theStudent;
		} catch (Exception e) {
			System.out.println("Invalid student email :(");
			return null;
		} finally {
			factory.close();
		}

	}

	public boolean validateStudent(String email, String password) {
		SessionFactory factory = factory();
		Session session = factory.getCurrentSession();
		try {
			session.beginTransaction();

			String hql = "select std from Student std WHERE std.sEmail=:email AND std.sPass=:password";
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			List resultList = query.getResultList();
			if (resultList != null && resultList.size() == 1) {
				System.out.println("You have entered valid credentials student found");
				return true;
			} else {
				System.out.println("You have entered incorrect credentials student not found");
				return false;
			}

		} finally {
			session.close();
		}
	}

	public List<Course> getStudentCourses(String email) {
		Student student = getStudentByEmail(email);
		return new ArrayList(student.getsCourses());
	}

	@Override
	public void registerStudentToCourse(String email, Integer courseId) {
		SessionFactory factory = factory();
		Session session = factory.getCurrentSession();
		try {
			Transaction tx = session.beginTransaction();

			String sql = "INSERT INTO student_course (Student_id, Course_id) VALUES(:Student_id, :Course_id)";
			NativeQuery nativeQuery = session.createSQLQuery(sql);
			nativeQuery.setParameter("Student_id", email);
			nativeQuery.setParameter("Course_id", courseId);

			nativeQuery.executeUpdate();
			tx.commit();
		} finally {
			session.close();
		}

	}
}
