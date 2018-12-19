package ctfbackend.service.impl;

import ctfbackend.bean.Teacher;
import ctfbackend.dao.TeacherDao;
import ctfbackend.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TeacherService")
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherDao teacherDao;

    @Override
    public void addTeacher(Teacher teacher) {
         teacherDao.insertTeacher(teacher);
    }

    @Override
    public void updateByTeacher(Teacher teacher) {
        teacherDao.updateByTeacher(teacher);
    }

    @Override
    public void deleteById(int id) {
        teacherDao.deleteById(id);
    }

    @Override
    public List<Teacher> getAllTeacher() {
        return teacherDao.getAllTeacher();
    }

    @Override
    public List<Teacher> findTeachersByPage(int start, int prePageRecords) {
        return teacherDao.findTeachersByPage(start,prePageRecords);
    }

    @Override
    public Teacher getById(int id) {
        return teacherDao.getById(id);
    }
}
