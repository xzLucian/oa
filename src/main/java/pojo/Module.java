package pojo;

import java.io.Serializable;
import java.util.Date;

public class Module implements Serializable {
    private Integer moduleId;

    private String moduleName;

    private String moduleMurl;

    private String moduleState;

    private String moduleCreatetime;

    private static final long serialVersionUID = 1L;

    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName == null ? null : moduleName.trim();
    }

    public String getModuleMurl() {
        return moduleMurl;
    }

    public void setModuleMurl(String moduleMurl) {
        this.moduleMurl = moduleMurl == null ? null : moduleMurl.trim();
    }

    public String getModuleState() {
        return moduleState;
    }

    public void setModuleState(String moduleState) {
        this.moduleState = moduleState == null ? null : moduleState.trim();
    }

    public String getModuleCreatetime() {
        return moduleCreatetime;
    }

    public void setModuleCreatetime(String moduleCreatetime) {
        this.moduleCreatetime = moduleCreatetime;
    }
}