package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import dao.EmployeeMapper;
import dao.ModuleMapper;
import dao.RoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Employee;
import pojo.Module;
import pojo.Role;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/sys/users")
public class EmployeeController {
    @Autowired
    private EmployeeMapper employeeMapper;
    /**
     * 处理业务逻辑的方法
     * RequestMapping：请求的url
     */
    @Autowired
    private ModuleMapper moduleMapper;

    @Autowired
    private RoleMapper roleMapper;
    @RequestMapping("/login")
    public String login(Employee employee,HttpSession session) {
        Employee emp = employeeMapper.login(employee);
        if(emp!=null) {
            System.out.println("登录成功！！");
            session.setAttribute("emps",emp);
            List<Module> modules = moduleMapper.loadModuleByRoleId(emp.getRoleId());
            session.setAttribute("mlist",modules);
            //查询所有的角色
            List<Role> allRole = roleMapper.getAllRole();
            session.setAttribute("listRole",allRole);
            //保存用户的信息
            session.setAttribute("emp",emp);

            return "redirect:/index.jsp";
        }else {
            System.out.println("登录失败！！");
            return "redirect:/login.jsp";
        }
    }

    /**
     * 用户退出
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/login.jsp";
    }
    /**
     * 查询所有的员工
     */
    @RequestMapping("/findAllEmp")
    public String findAll(HttpSession session,@RequestParam(value = "queryname",defaultValue="")String keyword, @RequestParam(value = "pageno",defaultValue = "1") int pageNo ){
        //设置分页参数
        PageHelper.startPage(pageNo,5);
        List<Employee> allEmp = employeeMapper.getAllEmp(keyword);
        PageInfo<Employee> pageInfo = new PageInfo<>(allEmp);
        session.setAttribute("queryname",keyword);
        session.setAttribute("pageInfo",pageInfo);
        return "redirect:/jsp/sys/users/userList.jsp";
    }

    /**
     * 添加用户信息
     */
    @RequestMapping("/addEmp")
    public String addEmp(Employee employee){
        int i = employeeMapper.addEmp(employee);
        if(i>0){
            System.out.println("添加成功");
            return "redirect:/sys/users/findAllEmp";
        }else{
            System.out.println("添加失败");
            return "retirect:/jsp/sys/users/userAdd.jsp";
        }
    }
    /*
    删除员工
     */
    @RequestMapping("/delEmp")
    public String delEmp(int id){
        System.out.println(id);
        int i = employeeMapper.delEmp(id);
        System.out.println(i);
        return "redirect:/sys/users/findAllEmp";
    }
    /*
    修改之前查询用户信息
     */
    @RequestMapping("/updateEmp")
    public String updateEmp(int id, Model model){
        Employee employee = employeeMapper.searchEmpById(id);
        model.addAttribute("employee",employee);

        return "forward:/jsp/sys/users/usermodify.jsp";
    }
    /*
    执行更新用户信息的操作
     */
    @RequestMapping("/doUpdateEmp")
    public String doUpdateEmp(Employee employee){
        int i = employeeMapper.doUpdateEmp(employee);
        System.out.println(i>0?"修改成功":"修改失败");
        return "redirect:/sys/users/findAllEmp";
    }
    /*
    查看用户信息
     */
    @RequestMapping("/userView")
    public String viewEmp(int id,Model model){
        Employee employee = employeeMapper.searchEmpById(id);
        model.addAttribute("emp",employee);
        return "forward:/jsp/sys/users/userView.jsp";
    }
}
