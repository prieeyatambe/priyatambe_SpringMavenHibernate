package com.gl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.model.Employee;
import com.gl.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService empService;

	@RequestMapping("/list")
	public String goHome(Model model) {
		model.addAttribute("emplist", empService.getAllEmployees());
		return "list";
	}

	@RequestMapping("/addEmp")
	public String showAdd(Model model) {
		model.addAttribute("employee", new Employee());
		return "addEmp";
	}

	@RequestMapping("/add")
	public String toAdd(@ModelAttribute("employee") Employee emp, Model model) {
		model.addAttribute("newEmp", empService.addEmployee(emp));
		return "redirect:/list";
	}

	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam("id") int id) {
		empService.deleteById(id);
		return "redirect:/list";

	}

	@GetMapping("/update")
	public String showUpdate(Model model, @RequestParam("id") int id) {
		Employee employee = empService.getEmployeeById(id);
		model.addAttribute("employee", employee);
		return "update";
	}

	@RequestMapping("/updateEmp")
	public String updateEmployee(@ModelAttribute("employee") Employee employee) {
		empService.updateEmployee(employee);
		return "redirect:/list";
	}

	@GetMapping("/fetchEmp")
	public String showFetch(Model model, @RequestParam("id") int id) {
		Employee employee = empService.getEmployeeById(id);
		model.addAttribute("employee", employee);
		return "fetch";
	}

}
