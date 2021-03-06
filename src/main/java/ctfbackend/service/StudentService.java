package ctfbackend.service;

import ctfbackend.bean.Admin;
import ctfbackend.bean.Student;

import java.util.List;

public interface StudentService {

    void addStudent(Student student);

    void updateByStudent(Student student);

    void deleteById(Long id);

    List<Student> getAllStudent();

    Student selectById(Long id);

    List<Student> findStudentsByPage(int start, int prePageRecords);
}
