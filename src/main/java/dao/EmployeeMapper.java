package dao;

import pojo.Employee;

import java.util.List;

public interface EmployeeMapper {
    /*
    Employee登录
     */
    Employee login(Employee employee);
    /*
    查询所有用户
     */
    List<Employee> getAllEmp(String keyword);
    /*
    添加用户信息
     */
    int addEmp(Employee employee);
    /*
    删除员工信息
     */
    int delEmp(int id);
    /*
    根据ID查询员工信息
     */
    Employee searchEmpById(int id);
    /*
    修改员工信息
     */
    int doUpdateEmp(Employee employee);


}