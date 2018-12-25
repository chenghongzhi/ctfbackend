package ctfbackend.dao;

import ctfbackend.bean.Course;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CourseDao {

    void insertCourse(Course course);

    List<Course> getAllCourse();

    Course getById(Long id);

    void deleteById(Long id);

    void updateByCourse(Course course);

    void insertTemplete(@Param("courseId") Long courseId, @Param("templeteId") Long templeteId);

    void deleteTemplete(Long courseId);

    void updateTemplete(@Param("courseId") Long courseId, @Param("templeteId") Long templeteId);

    List<Course> findCoursesByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);
}
