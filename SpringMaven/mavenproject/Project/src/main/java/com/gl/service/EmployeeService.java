package com.gl.service;

import java.util.List;

import com.gl.model.Employee;

public interface EmployeeService {

	public List<Employee> getAllEmployees();

	public Employee addEmployee(Employee emp);

	public void deleteById(int id);

	public void updateEmployee(Employee emp);

	public Employee getEmployeeById(int id);

}
