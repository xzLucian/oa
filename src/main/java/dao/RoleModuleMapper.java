package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface RoleModuleMapper {

	int delModuleByRoleId(int roleId);

	int addModuleRole(@Param("roleId") int roleId,@Param("mids") List<String> mids);
}
