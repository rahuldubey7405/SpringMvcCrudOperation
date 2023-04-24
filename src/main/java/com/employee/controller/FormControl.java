package com.employee.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.employee.model.EmployeeModel;
import com.employee.service.EmployeeService;

@Controller
public class FormControl {
	@Autowired
	EmployeeService empService;
	
	
	    @RequestMapping(value = {"/"})
	    public String homePage() {
	        return "redirect:view-employee";
	    }
	
	
	@RequestMapping(path="/view-employee")
	public String showEmployees(Model m)
	{

		List<EmployeeModel> employees=empService.getEmployees();
		m.addAttribute("employees", employees);
		System.out.println(employees);
		return "emp-list";
	}
	
	
	@RequestMapping(path="/show-form")
	public String showForm(@ModelAttribute EmployeeModel employee)
	{	
		System.out.println();
		
		System.out.println(employee);
		
//		System.out.println("Show Form Controller method called");
		return "emp-form";
	}
	
	@RequestMapping(path="/insert-form")
	public void insertForm(@ModelAttribute EmployeeModel employee,HttpServletResponse response) throws IOException
	{	
		System.out.println();
		
		System.out.println("This is insert form id "+employee.getId());
		
		this.empService.createEmployee(employee);
//		System.out.println("Show Form Controller method called");
		response.sendRedirect("view-employee");
//		return "view-employee";
	}
		
	
	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)

	public String deleteEmployee(HttpServletResponse response,@PathVariable("id") int id ) throws IOException
	{
		int i = this.empService.deleteEmployee(id);
//		System.out.println("After delete i = " + i);
//		response.sendRedirect("view-employee");
		return "redirect:/view-employee";
//		System.out.println("Delete controller hits");
	}

	
	
	@RequestMapping(value="/edit/{id}")
	public String updateEmployee(@PathVariable("id") int id,Model m)
	{
			System.out.println("Edit page"+ id);
			
			EmployeeModel emp=this.empService.getEmployeebyId(id);
			m.addAttribute("employee",emp);
			m.addAttribute("title","Edit Employee");
			return "emp-edit";
	}
	
	
	
	@RequestMapping(value="edit/update-form",method = RequestMethod.POST)
	public String UpdateForm(@ModelAttribute("update-form") EmployeeModel employee,HttpServletResponse response) throws IOException
	{	
		System.out.println();
		
		System.out.println(employee);
		System.out.println("update Id "+employee.getId());
		
		this.empService.updateEmployee(employee);
		System.out.println("Update Controller method called");
//		response.sendRedirect("view-employee");
		return "redirect:/view-employee";
	}
}