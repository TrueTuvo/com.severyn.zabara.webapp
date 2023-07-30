package com.severyn.zabara.spring.webapp.dao;

import com.severyn.zabara.spring.webapp.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();
}
