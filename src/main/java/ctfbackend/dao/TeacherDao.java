package ctfbackend.dao;

import ctfbackend.bean.Admin;
import ctfbackend.bean.Teacher;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface TeacherDao {
    void insertTeacher(Teacher teacher);

    List<Teacher> getAllTeacher();

    Teacher getById(Long id);

    void deleteById(Long id);

    void deleteCourse(@Param("tch_id") Long tch_id);

    void updateByTeacher(Teacher teacher);

    @Select("select * from teacher limit #{start},#{prePageRecords}")
    List<Teacher> findTeachersByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);
}
