package ctfbackend.service;

import ctfbackend.bean.Course;

import java.util.List;

public interface CourseService {
    void addCourse(Course course);

    void updateByCourse(Course course);

    void deleteById(Integer id);

    List<Course> getAllCourse();

    Course getById(int id);

    List<Course> findCoursesByPage(int start, int prePageRecords);
}
