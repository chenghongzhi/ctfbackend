package ctfbackend.dao;

import ctfbackend.bean.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

public interface UserDao {
    @Delete("delete from sys_logininfo where id=#{id}")
    void deleteById(Long id);
    @Select("select * from sys_logininfo where id=#{id}")
    User getById(Long id);
}
