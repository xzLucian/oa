package pojo;

public class Department {
    private int departmentId;
    private String departmentName;
    private String departmentNumber;
    private String departmentTelephone;
    public Department(){}
    public Department(int departmentId, String departmentName, String departmentNumber, String departmentTelephone) {
        this.departmentId = departmentId;
        this.departmentName = departmentName;
        this.departmentNumber = departmentNumber;
        this.departmentTelephone = departmentTelephone;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getDepartmentNumber() {
        return departmentNumber;
    }

    public void setDepartmentNumber(String departmentNumber) {
        this.departmentNumber = departmentNumber;
    }

    public String getDepartmentTelephone() {
        return departmentTelephone;
    }

    public void setDepartmentTelephone(String departmentTelephone) {
        this.departmentTelephone = departmentTelephone;
    }

    @Override
    public String toString() {
        return "Department{" +
                "departmentId=" + departmentId +
                ", departmentName='" + departmentName + '\'' +
                ", departmentNumber='" + departmentNumber + '\'' +
                ", departmentTelephone='" + departmentTelephone + '\'' +
                '}';
    }
}
