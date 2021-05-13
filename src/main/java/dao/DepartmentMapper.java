package dao;

import pojo.Department;

import java.util.List;

public interface DepartmentMapper {
    /*
    获取所有部门信息
     */
    List<Department> getAllDept(String keyword);
    /*
    添加部门
     */
    int addDept(Department department);
    /*
    删除部门
     */
    int delDept(int id);
    /*
    根据ID查询部门
     */
    Department getDeptById(int id);
    /*
    修改部门信息
     */
    int updateDept(Department department);
}
