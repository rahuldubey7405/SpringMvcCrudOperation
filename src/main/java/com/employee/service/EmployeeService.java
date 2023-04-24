package com.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.employee.dao.EmployeeDao;
import com.employee.model.EmployeeModel;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeDao empDao;
	
	public void createEmployee(EmployeeModel employee)
	{
		 this.empDao.saveEmployee(employee);
	}
	
	public List<EmployeeModel> getEmployees()
	{
		
		return this.empDao.getEmployees();
		
		
	}
	public int deleteEmployee(int employeeid)
	{
		return this.empDao.deleteEmployee(employeeid);
	}
	
	public EmployeeModel getEmployeebyId(int employeeid)
	{
		return this.empDao.getEmployee(employeeid);
	}
	
	public void updateEmployee(EmployeeModel employee)
	{
		this.empDao.updateEmployee(employee);
	}
}
