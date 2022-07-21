package jpa.mainrunner;

//import com.entity.models.Student;
import java.util.List;
import java.util.Scanner;

import jpa.entitymodels.Course;
import jpa.service.CourseService;
import jpa.service.StudentService;



public class SMSrunner {

	public static void main(String[] args) {
		
		
		// TODO Auto-generated method stub
		
       StudentService service = new StudentService();
       CourseService  courseService = new CourseService();
		
		Scanner scanner = new Scanner(System.in);
		
		Scanner scanner1 = new Scanner(System.in);
		System.out.println("Welcome to student management system");
		System.out.println("Select one of the below option");
		System.out.println("1. Student");
		System.out.println("2. Quit");
		System.out.print("Please enter [1 or 2]: ");
		int choice = scanner1.nextInt();

		// based on user choice either processing or quitting the application
		switch (choice) {
		case 1:
			System.out.print("Enter your email: ");
			String email = scanner1.next();
			System.out.print("Enter your password: ");
			String password = scanner1.next();

			// validating user email and password
			if (service.validateStudent(email, password)) {
				System.out.println("My Classes: ");
				printMyCourses(service, email);

				System.out.println("1. Register to Class");
				System.out.println("2. Logout");
				System.out.print("Enter choice [1 or 2]: ");
				int userChoice = scanner1.nextInt();

				switch (userChoice) {
				case 1:
					System.out.printf("%-4s%-15s%-15s\n", "#", " COURSE NAME", "  INSTRUCTOR NAME");
					List<Course> courseList = courseService.getAllCourses();
					for (int i = 0; i < courseList.size(); i++) {
						System.out.printf("%-4d%-15s%-15s\n ", (i + 1), courseList.get(i).getcName(),
								courseList.get(i).getcInstructorName());
					}
					System.out.print("Which course?");
					int courseId = scanner1.nextInt();
					service.registerStudentToCourse(email, courseId);
					printMyCourses(service, email);
				case 2:
					System.out.println("You have been signed out");
					System.exit(0);
				}

			} else {
				System.out.println("Invalid email or password");
				System.out.println("Exiting application!");
			}
			break;
		case 2:
			// exiting the application
			System.out.println("Exiting application!");
			System.exit(0);
		}

	}

	// method used for printing out courses list
	public static void printMyCourses(StudentService service, String email) {
		List<Course> studentCourses = service.getStudentCourses(email);
		if (studentCourses.size() > 0) {
			System.out.printf("%-4s%-15s%-15s\n", "#", "COURSE NAME", "INSTRUCTOR NAME");
			for (int i = 0; i < studentCourses.size(); i++) {
				System.out.printf("%-4s%-15s%-15s\n", (i + 1), studentCourses.get(i).getcName(),
						studentCourses.get(i).getcInstructorName());
			}
		} else {
			System.out.println("You are not registered for any course");
		}
	}
}


//'aiannitti7@is.gd','Alexandra \nIannitti','TWP4hf5j'
//'cjaulme9@bing.com','Cahra \nJaulme','FnVklVgC6r6'
//'cstartin3@flickr.com','Clem \nStartin','XYHzJ1S'
//'hguerre5@deviantart.com','Harcourt Guerre','OzcxzD1PGs'
//'hluckham0@google.ru','Hazel \nLuckham','X1uZcoIh0dj'
//'htaffley6@columbia.edu','Holmes Taffley','xowtOQ'
//'ljiroudek8@sitemeter.com','Laryssa Jiroudek','bXRoLUP'
//'qllorens2@howstuffworks.com','Quillan Llorens','W6rJuxd'
//'sbowden1@yellowbook.com','Sonnnie Bowden','SJc4aWSU'
//'tattwool4@biglobe.ne.jp','Thornie Attwool','Hjt0SoVmuBz'
