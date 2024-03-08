package com.gl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gl.dao.EmployeeDAO;
import com.gl.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAO dao;

	@Override
	public List<Employee> getAllEmployees() {

		return dao.getAllEmployees();
	}

	@Override
	public Employee addEmployee(Employee emp) {

		return dao.addEmployee(emp);
	}

	@Override
	public void deleteById(int id) {
		dao.deleteById(id);

	}

	@Override
	public void updateEmployee(Employee emp) {

		dao.updateEmployee(emp);
	}

	@Override
	public Employee getEmployeeById(int id) {

		return dao.getEmployeeById(id);
	}

}