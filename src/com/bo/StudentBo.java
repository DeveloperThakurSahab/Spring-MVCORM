package com.bo;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.bean.Student;
import com.dao.StudentDao;

public class StudentBo {

	private StudentDao studentDao;

	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	
	public void insertOrUpdateStudent(Student s)
	{
		this.studentDao.insertOrUpdateStudent(s);
	}
	
	public List<Student> getAllStudent()
	{
		return this.studentDao.getAllStudent();
	}
	
	public Student getStudentById(int id)
	{
		return this.studentDao.getStudentById(id);
	}
	
	public void deleteStudent(int id)
	{
		this.studentDao.deleteStudent(id);
	}
}
