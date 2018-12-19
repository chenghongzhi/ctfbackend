package ctfbackend.dao;

import ctfbackend.bean.Admin;
import ctfbackend.bean.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface StudentDao {
    void insertStudent(Student student);

    List<Student> getAllStudent();

    Student getById(int id);

    int deleteById(Integer id);

    int updateByStudent(Student student);

    @Select("select * from student limit #{start},#{prePageRecords}")
    List<Student> findStudentsByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);
}
