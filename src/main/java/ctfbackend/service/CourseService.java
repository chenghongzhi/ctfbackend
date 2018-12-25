package ctfbackend.service;

import ctfbackend.bean.Course;

import java.util.List;

public interface CourseService {
    void addCourse(Course course);

    void updateByCourse(Course course);

    void deleteById(Long id);

    List<Course> getAllCourse();

    Course getById(Long id);

    List<Course> findCoursesByPage(int start, int prePageRecords);
}
