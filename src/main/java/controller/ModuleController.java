package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import dao.ModuleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Department;
import pojo.Employee;
import pojo.Module;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/sys/module")
public class ModuleController {
    @Autowired
    private ModuleMapper moduleMapper;
    @RequestMapping("/findAllModule")
    public String findModule(HttpSession session, @RequestParam(value = "pageno",defaultValue = "1") int pageNo){
        //设置分页参数
        PageHelper.startPage(pageNo,5);
        List<Module> allModule = moduleMapper.getAllModule();
        PageInfo<Module> pageInfo = new PageInfo<>(allModule);
        session.setAttribute("pageInfo",pageInfo);
        return "redirect:/jsp/sys/module/moduleList.jsp";
    }
    @RequestMapping("/searchModule")
    public String searchModule(HttpSession session,@RequestParam(value = "queryname",defaultValue="")String keyword, @RequestParam(value = "pageno",defaultValue = "1") int pageNo ){
        //设置分页参数
        PageHelper.startPage(pageNo,5);
        List<Module> searchmodule = moduleMapper.searchmodule(keyword);
        PageInfo<Module> pageInfo = new PageInfo<>(searchmodule);
        session.setAttribute("pageInfo",pageInfo);
        return "redirect:/jsp/sys/module/moduleList.jsp";
    }
    /*
    添加模块
     */
    @RequestMapping("/addModule")
    public String addModule(Module module){
        int i = moduleMapper.addModule(module);
        System.out.println(i);
        if(i>0){
            System.out.println("添加成功");
            return "redirect:/sys/module/findAllModule";
        }else{
            System.out.println("添加失败");
            return "retirect:/jsp/sys/module/moduleList.jsp";
        }
    }
    /*
    删除模块
     */
    @RequestMapping("/delModule")
    public String delModule(int id){
        System.out.println(id);
        int i = moduleMapper.delModule(id);
        System.out.println(i);
        return "redirect:/sys/module/findAllModule";
    }
    /*
    修改之前查询模块信息
     */
    @RequestMapping("/selectModule")
    public String searchModule(int id, Model model){
        Module module = moduleMapper.getModuleById(id);
        model.addAttribute("module",module);

        return "forward:/jsp/sys/module/modulemodify.jsp";
    }
    /*
    执行更新模块信息的操作
     */
    @RequestMapping("/doUpdateModule")
    public String doUpdateEmp(Module module){
        int i = moduleMapper.updateModule(module);
        System.out.println(i>0?"修改成功":"修改失败");
        return "redirect:/sys/module/findAllModule";
    }
    /*
    查看模块信息
     */
    @RequestMapping("/viewModule")
    public String viewModule(int id,Model model){
        Module module = moduleMapper.getModuleById(id);
        model.addAttribute("m",module);
        return "forward:/jsp/sys/module/moduleView.jsp";
    }
}
