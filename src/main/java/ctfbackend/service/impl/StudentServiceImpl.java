package ctfbackend.service.impl;

import ctfbackend.bean.Student;
import ctfbackend.dao.StudentDao;
import ctfbackend.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("StudentService")
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao;

    @Override
    public void addStudent(Student student) {
         studentDao.insertStudent(student);
    }

    @Override
    public void updateByStudent(Student student) {
        studentDao.updateByStudent(student);
    }

    @Override
    public void deleteById(Long id) {
        studentDao.deleteById(id);
        studentDao.deleteReport(id);
    }

    @Override
    public List<Student> getAllStudent() {
        return studentDao.getAllStudent();
    }

    @Override
    public Student selectById(Long id) {
        return studentDao.getById(id);
    }

    @Override
    public List<Student> findStudentsByPage(int start, int prePageRecords) {
        return studentDao.findStudentsByPage(start,prePageRecords);
    }
}
