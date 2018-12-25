package ctfbackend.dao;

import ctfbackend.bean.Admin;
import ctfbackend.bean.Student;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface StudentDao {
    void insertStudent(Student student);

    List<Student> getAllStudent();

    Student getById(Long id);

    void deleteById(Long id);

    void deleteReport(@Param("stu_id") Long stu_id);

    void updateByStudent(Student student);

    @Select("select * from student limit #{start},#{prePageRecords}")
    List<Student> findStudentsByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);
}
