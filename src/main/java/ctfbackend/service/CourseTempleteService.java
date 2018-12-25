package ctfbackend.service;

import ctfbackend.bean.CourseTemplete;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseTempleteService {

    void addCourseTemplete(CourseTemplete courseTemplete);

    void updateByCourseTemplete(CourseTemplete courseTemplete);

    void deleteById(Long id);

    CourseTemplete getById(Long id);

    List<CourseTemplete> getAllCourseTemplete();

    List<CourseTemplete> findCourseTempletesByPage(int start, int prePageRecords);
}