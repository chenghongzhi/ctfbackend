package ctfbackend.service;

import ctfbackend.bean.Student;
import ctfbackend.bean.Teacher;
import java.util.List;

public interface TeacherService {
    void addTeacher(Teacher teacher);

    void updateByTeacher(Teacher teacher);

    void deleteById(int id);

    List<Teacher> getAllTeacher();

    Teacher getById(int id);

    List<Teacher> findTeachersByPage(int start, int prePageRecords);
}
