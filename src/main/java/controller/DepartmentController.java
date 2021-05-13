package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import dao.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Department;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/sys/dept")
public class DepartmentController {
    @Autowired
    private DepartmentMapper departmentMapper;

    @RequestMapping("/findAllDept")
    public String findAllDept(HttpSession session, @RequestParam(value = "queryname", defaultValue = "") String keyword, @RequestParam(value = "pageno", defaultValue = "1") int pageNo) {
        //设置分页参数
        PageHelper.startPage(pageNo, 5);
        List<Department> allDept = departmentMapper.getAllDept(keyword);
        PageInfo<Department> pageInfo = new PageInfo<>(allDept);
        session.setAttribute("queryname", keyword);
        session.setAttribute("pageInfo", pageInfo);
        return "redirect:/jsp/sys/dept/deptList.jsp";
    }

    /*
  添加部门
   */
    @RequestMapping("/addDept")
    public String addDept(Department department){
        int i = departmentMapper.addDept(department);
        System.out.println(i);
        if(i>0){
            System.out.println("添加成功");
            return "redirect:/sys/dept/findAllDept";
        }else{
            System.out.println("添加失败");
            return "retirect:/jsp/sys/dept/deptList.jsp";
        }
    }
    /*
    删除部门
     */
    @RequestMapping("/delDept")
    public String delDept(int id){
        System.out.println(id);
        int i = departmentMapper.delDept(id);
        System.out.println(i);
        return "redirect:/sys/dept/findAllDept";
    }
    /*
修改之前查询部门信息
 */
    @RequestMapping("/searchDept")
    public String searchModule(int id, Model model){
        Department department = departmentMapper.getDeptById(id);
        model.addAttribute("department",department);
        return "forward:/jsp/sys/dept/departmentmodify.jsp";
    }
    /*
执行更新部门信息的操作
 */
    @RequestMapping("/doUpdateDept")
    public String doUpdateEmp(Department department){
        int i = departmentMapper.updateDept(department);
        System.out.println(i>0?"修改成功":"修改失败");
        return "redirect:/sys/dept/findAllDept";
    }
    /*
    查看部门信息
     */
    @RequestMapping("/viewDept")
    public String viewDept(int id,Model model){
        Department department = departmentMapper.getDeptById(id);
        model.addAttribute("dept",department);
        return "forward:/jsp/sys/dept/deptView.jsp";
    }
}
