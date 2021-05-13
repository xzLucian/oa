package dao;

import org.springframework.stereotype.Component;
import pojo.Role;

import java.util.List;
@Component("roleMapper")
public interface RoleMapper {
    /*
       查询所有的角色
     */
    List<Role> getAllRole();
    /*
    模糊查询
     */
    List<Role> searchRole(String keyword);
    /*
    添加角色
     */
    int addRole(Role role);
    /*
    删除角色
     */
    int delRole(int id);
    /*
    根据ID查询角色信息
     */
    Role getRoleById(int id);
    /*
    修改角色信息
     */
    int updateRole(Role role);


}
