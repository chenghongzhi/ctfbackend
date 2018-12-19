package ctfbackend.dao;

import ctfbackend.bean.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AdminDao {

    void insertAdmin(Admin admin);

    List<Admin> getAllAdmin();

    Admin getById(int id);

    @Select("select * from admin where username=#{username}")
    Admin getByUserName(String username);

    void deleteById(Integer id);

    void updateByAdmin(Admin admin);

    @Select("select username,lastlogin from admin limit #{start},#{prePageRecords}")
    List<Admin> findAdminsByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);
}
