package com.gl.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.gl.model.Employee;

@Repository
@EnableTransactionManagement
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	SessionFactory sfactory;
	Session session;

	public EmployeeDAOImpl(SessionFactory sfactory) {
		this.sfactory = sfactory;
		this.session = sfactory.openSession();
	}

	@Override
	public List<Employee> getAllEmployees() {

		return session.createQuery("from Employee").list();
	}

	@Override
	@Transactional
	public Employee addEmployee(Employee emp) {
		Transaction tr = session.beginTransaction();
		session.save(emp);
		tr.commit();
		return emp;

	}

	@Override
	@Transactional
	public void deleteById(int id) {
		Transaction tr = session.beginTransaction();
		Employee emp = session.get(Employee.class, id);
		session.delete(emp);
		tr.commit();

	}

	@Override
	@Transactional
	public void updateEmployee(Employee e) {
		session = sfactory.openSession();
		session.saveOrUpdate(e);

	}

	@Override
	public Employee getEmployeeById(int id) {

		return session.get(Employee.class, id);
	}

}
