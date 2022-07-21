package jpa.entitymodels;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "student")

public class Student {

	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "email")
	private String sEmail;

	@Column(name = "name")
	private String sName;

	@Column(name = "password")
	private String sPass;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "Student_Course", //
			joinColumns = @JoinColumn(name = "Student_id"), //
			inverseJoinColumns = @JoinColumn(name = "Course_id"))
	
	private Set<Course> sCourses;

	public Student() {

	}

	public Student(String sEmail, String sName, String sPass) {

		this.sEmail = sEmail;
		this.sName = sName;
		this.sPass = sPass;
	}

	public String getsEmail() {
		return sEmail;
	}

	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsPass() {
		return sPass;
	}

	public void setsPass(String sPass) {
		this.sPass = sPass;
	}

	public Set<Course> getsCourses() {
		return sCourses;
	}

	public void setsCourses(Set<Course> sCourses) {
		this.sCourses = sCourses;
	}

	@Override
	public String toString() {
		return "Student [sEmail=" + sEmail + ", sName=" + sName + ", sPass=" + sPass + "]";

	}
}
