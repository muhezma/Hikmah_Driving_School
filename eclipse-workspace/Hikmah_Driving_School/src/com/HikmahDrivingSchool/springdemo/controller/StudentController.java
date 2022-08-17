package com.HikmahDrivingSchool.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.HikmahDrivingSchool.springdemo.entity.Course;
import com.HikmahDrivingSchool.springdemo.entity.Student;
import com.HikmahDrivingSchool.springdemo.entity.Student;
import com.HikmahDrivingSchool.springdemo.service.CourseService;
import com.HikmahDrivingSchool.springdemo.service.StudentService;
import com.HikmahDrivingSchool.springdemo.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	// need to inject our student service
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/list")
	public String listStudents(Model theModel) {
		
		// get students from the service
		List<Student> theStudents = studentService.getStudents();
				
		// add the students to the model
		theModel.addAttribute("students", theStudents);
		
		return "list-students";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		Student theStudent = new Student();
		
		theModel.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@PostMapping("/signupStudent")
	public String signupStudent(@ModelAttribute("student") Student theStudent) {
		
		// save the student using our service
		studentService.saveStudent(theStudent);

		return "HikmahSignupSuccess";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentId") String theemail,
									Model theModel) 
    {
		
		// get the student from our service
		Student theStudent = studentService.getStudent(theemail);	
		
		// set student as a model attribute to pre-populate the form
		theModel.addAttribute("student", theStudent);
		
		// send over to our form		
		return "student-form";
	}
	
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam("studentId") String theemail,
									Model theModel) 
    {
		
		// get the student from our service
		studentService.deleteStudent(theemail);	
		
		
		// set student as a model attribute to pre-populate the form
		//theModel.addAttribute("student", theStudent);
		
		// send over to our form		x
		return "redirect:/student/list";
	}
	
	
	@GetMapping("/HikmahSignup")
	public String showFormForSignup(Model theModel) {
		Student theStudent = new Student();
		
		theModel.addAttribute("student",theStudent);
		
		return "HikmahSignup";
	}
	
	// login method
	@GetMapping("/login")
	public String loginStudent(@RequestParam("email") String email, @RequestParam("password") String password,
			Model theModel) {
		Student student = studentService.validate(email, password);
		System.out.println("validated student: " + student);    
		
		if (student != null) {
			return "student-home";
		} else {
			System.out.println("wrong credentials");
			return "redirect:/student/HikmahLogin";
		}
	}

	@GetMapping("/HikmahLogin")
	public String studentLoginPage(Model theModel) {
		return "HikmahLogin";
	}

	@GetMapping("/HikmahHomeP")
	public String HomeStudent(Model theModel) {
		return "HikmahHomeP";
	}


	@GetMapping("/HikmahCoursesPrice")
	public String CoursesPriceStudent(Model theModel) {
		return "HikmahCoursesPrice";
	}

	@GetMapping("/HikmahAboutUs")
	public String AboutUs() {
		return "HikmahAboutUs";
	}

//	@GetMapping("/listCourses")
//	public String listCourses(Model theModel) {
//
//		// get courses from db
//		List<Course> theCourses = courseService.findAll();
//
//		// add to the spring model
//		theModel.addAttribute("courses", theCourses);
//		
//		System.out.println("==================================================");
//		System.out.println("Courses: " + theCourses);
//		System.out.println("==================================================");
//
//		return "course-list";
//	}

//
//	@GetMapping("/list")
//	public String listStudents(Model theModel) {
//		
//		// get students from db
//		List<Student> theStudents = studentService.findAll();
//		
//		// add to the spring model
//		theModel.addAttribute("students", theStudents);
//		
//		return "students/list-students";
//	}

}
