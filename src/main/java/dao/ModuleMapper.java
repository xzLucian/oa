package dao;

import pojo.Module;

import java.util.List;

public interface ModuleMapper {
    /*
    根据用户类型加载相应的模块
     */
    List<Module> loadModuleByRoleId(int id);
    /*
    获取所有模块
     */
    List<Module> getAllModule();
    /*
    模糊查询模块
     */
    List<Module> searchmodule(String keyword);
    /*
    增加模块
     */
    int addModule(Module module);
    /*
    删除模块
     */
    int delModule(int id);
    /*
    根据模块ID查询对应的模块信息
     */
    Module getModuleById(int id);
    /*
    修改模块信息
     */
    int updateModule(Module module);
}