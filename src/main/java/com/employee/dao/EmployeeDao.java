package com.employee.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.employee.model.EmployeeModel;

@Repository
public class EmployeeDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void saveEmployee(EmployeeModel employee)
	{
//		int id=(Integer)this.hibernateTemplate.save(employee);
		this.hibernateTemplate.save(employee);
		System.out.println("Save Form id"+employee.getId());
	 
	}
	
	//get all employess
	@Transactional
	public List<EmployeeModel> getEmployees()
	{
		List<EmployeeModel> employees= this.hibernateTemplate.loadAll(EmployeeModel.class);
		return employees;
	}
	@Transactional
	public int deleteEmployee(int id)
	{
		EmployeeModel e=this.hibernateTemplate.load(EmployeeModel.class, id);
		this.hibernateTemplate.delete(e);
		return id;
	}
	
	@Transactional
	public EmployeeModel getEmployee(int eid) {
		
		return this.hibernateTemplate.get(EmployeeModel.class, eid);
	}
	
	@Transactional
	public void updateEmployee(EmployeeModel employee)
	{
		System.out.println("Update form id is "+employee.getId());
		 this.hibernateTemplate.update(employee);
		
	}
}
