package ctfbackend.controller;

import ctfbackend.bean.Course;
import ctfbackend.service.CourseService;
import ctfbackend.util.Page;
import ctfbackend.util.ResultJSON;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
@Api(value = "/course", tags = "课程相关接口")
@RestController
@RequestMapping(value = "/course")
public class CourseController {
    @Autowired
    CourseService courseService;

    @Autowired
    Page page;

    //添加学生课程
    @ApiOperation(value = "添加课程接口",notes = "根据course对象添加课程",httpMethod = "POST")
    @RequestMapping(value = "/v1/add",method = RequestMethod.POST,produces = {"application/json"})
    public ResultJSON addCourse(@RequestBody @Valid Course course){
        ResultJSON json = new ResultJSON();
        if(course!=null){
            course.setCreatedtime(new Timestamp(System.currentTimeMillis()));
            courseService.addCourse(course);
            System.out.println(course.toString());
            HashMap<String,Course> map=new HashMap<>();
            map.put("courseinfo",course);
            json.success(map);
        }else {
            json.failure("请输入正确的数据");
        }
        return json;
    }

    //获得所有的课程
    @ApiOperation(value = "获得所有课程接口",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/courses",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAllCourses(Integer pages) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(courseService.getAllCourse().size());
        page.setCurrentPage(pages);
        List<Course> courseList =courseService.findCoursesByPage((pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,List<Course>> map = new HashMap<>();
        map.put("pageResult",courseList);
        json.success(map);
        return json;
    }

    //更新课程信息
    @ApiOperation(value = "更新课程接口",notes = "将以course对象进行更新",httpMethod = "PUT")
    @RequestMapping(value = "/v1/update",method = RequestMethod.PUT,produces = {"application/json"})
    public ResultJSON updateCourse(@RequestBody @Valid Course course) {
        ResultJSON json = new ResultJSON();
        course.setCreatedtime(new Timestamp(System.currentTimeMillis()));
        courseService.updateByCourse(course);
        HashMap<String,Course> map=new HashMap<>();
        map.put("courseinfo",course);
        json.success(map);
        return json;
    }

    //删除课程信息
    @ApiOperation(value = "删除课程接口",notes = "通过课程id来删除课程",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/course/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delCourse(@PathVariable Integer id) {
        ResultJSON json=new ResultJSON();
        Course course=courseService.getById(id);
        if(course!=null){
            courseService.deleteById(id);
            json.success();
        }else {
            json.failure("该课程删除失败，请输入正确的ID");
        }
        return json;
    }

    //根据id查找课程
    @ApiOperation(value = "查找课程接口",notes = "通过课程id来查找某个课程",httpMethod = "GET")
    @RequestMapping(value = "/v1/course/{id}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getCourseById(@PathVariable int id) {
        ResultJSON json=new ResultJSON();
        Course course=courseService.getById(id);
        if(course!=null){
            HashMap<String,Course> map=new HashMap<>();
            map.put("courseinfo",course);
            json.success(map);
        }else{
            json.failure("查找不到该学生，请输入正确的ID");
        }
        return json;
    }

}
