package ctfbackend.service.impl;

import ctfbackend.bean.CourseTemplete;
import ctfbackend.bean.Imagelocal;
import ctfbackend.dao.CourseTempleteDao;
import ctfbackend.service.CourseTempleteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CourseTempleteService")
public class CourseTempleteServiceImpl implements CourseTempleteService {

    @Autowired
    CourseTempleteDao courseTempleteDao;
    @Override
    public void addCourseTemplete(CourseTemplete courseTemplete) {
        courseTempleteDao.insertCourseTemplete(courseTemplete);
        List<Imagelocal> imagelocals=courseTemplete.getImagelocals();
        for(Imagelocal imagelocal:imagelocals){
            courseTempleteDao.insertTmp_img(courseTemplete.getId(),imagelocal.getId());
        }
    }

    @Override
    public void deleteById(Long id) {
        courseTempleteDao.deleteById(id);
        courseTempleteDao.deleteTmp_img(id);
    }

    @Override
    public CourseTemplete getById(Long id) {
        return courseTempleteDao.getById(id);
    }

    @Override
    public List<CourseTemplete> getAllCourseTemplete() {
        return courseTempleteDao.getAllCourseTemplete();
    }

    @Override
    public void updateByCourseTemplete(CourseTemplete courseTemplete) {
        courseTempleteDao.updateByCourseTemplete(courseTemplete);
        List<Imagelocal> imagelocals=courseTemplete.getImagelocals();
        for(Imagelocal imagelocal:imagelocals){
            courseTempleteDao.updateTmp_img(courseTemplete.getId(),imagelocal.getId());
        }
    }

    @Override
    public List<CourseTemplete> findCourseTempletesByPage(int start, int prePageRecords) {
        return courseTempleteDao.findCourseTempletesByPage(start,prePageRecords);
    }
}
