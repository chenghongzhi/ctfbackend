package ctfbackend.service.impl;

import ctfbackend.bean.Course;
import ctfbackend.dao.CourseDao;
import ctfbackend.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CourseService")
public class CourseServiceImpl implements CourseService {

    @Autowired
    CourseDao courseDao;

    @Override
    public void addCourse(Course course) {
        courseDao.insertCourse(course);
    }

    @Override
    public void updateByCourse(Course course) {
        courseDao.updateByCourse(course);
    }

    @Override
    public void deleteById(Integer id) {
        courseDao.deleteById(id);
    }

    @Override
    public List<Course> getAllCourse() {
        return courseDao.getAllCourse();
    }

    @Override
    public Course getById(int id) {
        return courseDao.getById(id);
    }

    @Override
    public List<Course> findCoursesByPage(int start, int prePageRecords) {
        return courseDao.findCoursesByPage(start,prePageRecords);
    }
}
