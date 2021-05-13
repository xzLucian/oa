package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import dao.ModuleMapper;
import dao.RoleMapper;
import dao.RoleModuleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Module;
import pojo.Role;

import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/sys/role")
public class RoleController {
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private ModuleMapper moduleMapper;

    @Autowired
    private RoleModuleMapper roleModuleMapper;
    @RequestMapping("/findAllRole")
    public String findRole(HttpSession session,@RequestParam(value = "pageno",defaultValue = "1") int pageNo ){
        //设置分页参数
        PageHelper.startPage(pageNo,5);
        List<Role> allRole = roleMapper.getAllRole();
        PageInfo<Role> pageInfo = new PageInfo<>(allRole);
        session.setAttribute("pageInfo",pageInfo);
        return "redirect:/jsp/sys/role/roleList.jsp";
    }
    /*
    模糊查询role
    */
    @RequestMapping("/searchRole")
    public String searchRole(HttpSession session,@RequestParam(value = "queryname",defaultValue="")String keyword, @RequestParam(value = "pageno",defaultValue = "1") int pageNo ){
        //设置分页参数
        PageHelper.startPage(pageNo,5);
        List<Role> roles = roleMapper.searchRole(keyword);
        PageInfo<Role> pageInfo = new PageInfo<>(roles);
        session.setAttribute("pageInfo",pageInfo);
        return "redirect:/jsp/sys/role/roleList.jsp";
    }
    /*
    根据ID显示角色对应的权限
     */
    @RequestMapping("/goRoleGrant")
    public String roleGrant(int rid,HttpSession session){
        //先查询所有模块
        List<Module> allModule = moduleMapper.getAllModule();
        session.setAttribute("mlist",allModule);
        List<Module> modules = moduleMapper.loadModuleByRoleId(rid);
        session.setAttribute("mclist",modules);
        return "redirect:/jsp/sys/role/roleGrant.jsp";
    }

    //进行授权
    @RequestMapping("/roleGrant")
    public String roleGrant(int rid,String[] mids){
        //先删除
        roleModuleMapper.delModuleByRoleId(rid);
        //再添加
        List<String> mid = Arrays.asList(mids);
        roleModuleMapper.addModuleRole(rid,mid);
        return "redirect:/sys/role/findAllRole";
    }
    /**
     * 添加角色信息
     */
    @RequestMapping("/addRole")
    public String addRole(Role role){
        int i = roleMapper.addRole(role);
        if(i>0){
            System.out.println("添加成功");
            return "redirect:/sys/role/findAllRole";
        }else{
            System.out.println("添加失败");
            return "retirect:/jsp/sys/role/roleAdd.jsp";
        }
    }
    /*
    修改之前查询角色信息
    */
    @RequestMapping("/selectRole")
    public String selectRole(int id, Model model){
        Role role = roleMapper.getRoleById(id);
        model.addAttribute("role",role);
        return "forward:/jsp/sys/role/rolemodify.jsp";
    }
    /*
    删除角色
    */
    @RequestMapping("/delRole")
    public String delRole(int id){
        System.out.println(id);
        int i = roleMapper.delRole(id);
        System.out.println(i);
        return "redirect:/sys/role/findAllRole";
    }
    /*
    执行更新角色信息的操作
     */
    @RequestMapping("/doUpdateRole")
    public String doUpdateRole(Role role){
        int i = roleMapper.updateRole(role);
        System.out.println(i>0?"修改成功":"修改失败");
        return "redirect:/sys/role/findAllRole";
    }
    /*
    查看角色信息
     */
    @RequestMapping("/viewRole")
    public String viewRole(int id,Model model){
        Role role = roleMapper.getRoleById(id);
        model.addAttribute("r",role);
        return "forward:/jsp/sys/role/roleView.jsp";
    }
}
