package ctfbackend.dao;

import ctfbackend.bean.CourseTemplete;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseTempleteDao {

    void insertCourseTemplete(CourseTemplete courseTemplete);

    void insertTmp_img(@Param("tmp_id") Long tmp_id,@Param("img_id") Long img_id);

    void updateTmp_img(@Param("tmp_id") Long tmp_id,@Param("img_id") Long img_id);

    void deleteTmp_img(@Param("tmp_id") Long tmp_id);

    void deleteById(Long id);

    CourseTemplete getById(Long id);

    List<CourseTemplete> getAllCourseTemplete();

    void updateByCourseTemplete(CourseTemplete courseTemplete);

    List<CourseTemplete> findCourseTempletesByPage(@Param("start") int start, @Param("prePageRecords") int prePageRecords);
}