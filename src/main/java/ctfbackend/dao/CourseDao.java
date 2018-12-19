package ctfbackend.dao;

import ctfbackend.bean.Course;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CourseDao {

    void insertCourse(Course course);

    List<Course> getAllCourse();

    Course getById(int id);

    void deleteById(Integer id);

    void updateByCourse(Course course);

    List<Course> findCoursesByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);
}
