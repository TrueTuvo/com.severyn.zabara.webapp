package com.severyn.zabara.spring.webapp.dao;

import com.severyn.zabara.spring.webapp.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    void deleteEmployee(int id);

    List<Employee> getAllEmployees();

    Employee getEmployee(int id);

    void saveEmployee(Employee employee);

}
