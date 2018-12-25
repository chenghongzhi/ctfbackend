package ctfbackend.service.impl;

import ctfbackend.bean.Course;
import ctfbackend.bean.CourseTemplete;
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
        List<CourseTemplete> courseTempletes=course.getCourseTempletes();
        for(CourseTemplete courseTemplete:courseTempletes){
            courseDao.insertTemplete(course.getId(),courseTemplete.getId());
        }

    }

    @Override
    public void updateByCourse(Course course) {
        courseDao.updateByCourse(course);
        List<CourseTemplete> courseTempletes=course.getCourseTempletes();
        for(CourseTemplete courseTemplete:courseTempletes){
            courseDao.updateTemplete(course.getId(),courseTemplete.getId());
        }
    }

    @Override
    public void deleteById(Long id) {
        courseDao.deleteById(id);
        courseDao.deleteTemplete(id);
    }

    @Override
    public List<Course> getAllCourse() {
        return courseDao.getAllCourse();
    }

    @Override
    public Course getById(Long id) {
        return courseDao.getById(id);
    }

    @Override
    public List<Course> findCoursesByPage(int start, int prePageRecords) {
        return courseDao.findCoursesByPage(start,prePageRecords);
    }
}
