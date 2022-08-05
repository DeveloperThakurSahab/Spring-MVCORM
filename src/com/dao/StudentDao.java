package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Student;

public class StudentDao extends HibernateDaoSupport{

	public void insertOrUpdateStudent(Student s)
	{
		getHibernateTemplate().saveOrUpdate(s);
	}
	
	public List<Student> getAllStudent()
	{
		return getHibernateTemplate().find("from Student");
	}
	
	public Student getStudentById(int id)
	{
		HibernateTemplate template=getHibernateTemplate();
		Student s=template.get(Student.class, id);
		return s;
	}
	
	public void deleteStudent(int id)
	{
		HibernateTemplate template=getHibernateTemplate();
		Student s=template.get(Student.class, id);
		template.delete(s);
	}
}
