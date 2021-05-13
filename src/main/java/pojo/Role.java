package pojo;

import java.sql.Date;

public class Role {
    private int roleId;
    private String roleName;
    private String roleState;
    private Date roleCreatetime;
    private int roleEmpId;
    private String roleDesc;
    private int roleDepartmentId;
    public Role(){}

    public Role(int roleId, String roleName, String roleState, Date roleCreatetime, int roleEmpId, String roleDesc, int roleDepartmentId) {
        this.roleId = roleId;
        this.roleName = roleName;
        this.roleState = roleState;
        this.roleCreatetime = roleCreatetime;
        this.roleEmpId = roleEmpId;
        this.roleDesc = roleDesc;
        this.roleDepartmentId = roleDepartmentId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleState() {
        return roleState;
    }

    public void setRoleState(String roleState) {
        this.roleState = roleState;
    }

    public Date getRoleCreatetime() {
        return roleCreatetime;
    }

    public void setRoleCreatetime(Date roleCreatetime) {
        this.roleCreatetime = roleCreatetime;
    }

    public int getRoleEmpId() {
        return roleEmpId;
    }

    public void setRoleEmpId(int roleEmpId) {
        this.roleEmpId = roleEmpId;
    }

    public String getRoleDesc() {
        return roleDesc;
    }

    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
    }

    public int getRoleDepartmentId() {
        return roleDepartmentId;
    }

    public void setRoleDepartmentId(int roleDepartmentId) {
        this.roleDepartmentId = roleDepartmentId;
    }

    @Override
    public String toString() {
        return "Role{" +
                "roleId=" + roleId +
                ", roleName='" + roleName + '\'' +
                ", roleState='" + roleState + '\'' +
                ", roleCreatetime=" + roleCreatetime +
                ", roleEmpId=" + roleEmpId +
                ", roleDesc='" + roleDesc + '\'' +
                ", roleDepartmentId=" + roleDepartmentId +
                '}';
    }
}
