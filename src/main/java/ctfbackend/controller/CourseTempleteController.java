package ctfbackend.controller;

import ctfbackend.bean.CourseTemplete;
import ctfbackend.service.CourseTempleteService;
import ctfbackend.util.Page;
import ctfbackend.util.ResultJSON;
import ctfbackend.util.UserContext;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

@Api(value = "/courseTemplete", tags = "课程模版相关接口")
@RestController
@RequestMapping(value = "/courseTemplete")
public class CourseTempleteController {

    @Autowired
    CourseTempleteService courseTempleteService;

    @Autowired
    Page page;

    @ApiOperation(value = "添加课程模版接口",notes = "根据courseTemplete对象添加课程模版",httpMethod = "POST")
    @RequestMapping(value = "/v1/add",method = RequestMethod.POST,produces = {"application/json"})
    public ResultJSON addCourse(@RequestBody @Valid CourseTemplete courseTemplete){
        ResultJSON json = new ResultJSON();
        if(courseTemplete!=null){
            courseTemplete.setCreatetime(new Timestamp(System.currentTimeMillis()));
//            courseTemplete.setCreatedby(UserContext.getCurrent());
            courseTempleteService.addCourseTemplete(courseTemplete);
            HashMap<String,CourseTemplete> map=new HashMap<>();
            map.put("courseinfo",courseTemplete);
            json.success(map);
        }else {
            json.failure("请输入正确的数据");
        }
        return json;
    }

    //获得所有的课程模版
    @ApiOperation(value = "获得所有课程模版接口",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/courseTempletes",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAllCourses(Integer pages) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(courseTempleteService.getAllCourseTemplete().size());
        page.setCurrentPage(pages);
//        System.out.println("当前用户为"+UserContext.getCurrent());
        List<CourseTemplete> courseTempleteList =courseTempleteService.findCourseTempletesByPage((pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,Object> map = new HashMap<>();
        map.put("totalPages",page.getTotalPages());
        map.put("pageResult",courseTempleteList);
        json.success(map);
        return json;
    }

    @ApiOperation(value = "更新课程模版接口",notes = "将以courseTemplete对象进行更新",httpMethod = "PUT")
    @RequestMapping(value = "/v1/update/{id}",method = RequestMethod.PUT,produces = {"application/json"})
    public ResultJSON updateCourse(@RequestBody @Valid CourseTemplete courseTemplete,@PathVariable Long id) {
        ResultJSON json = new ResultJSON();
        courseTemplete.setCreatetime(new Timestamp(System.currentTimeMillis()));
//        courseTemplete.setCreatedby(UserContext.getCurrent());
        courseTempleteService.updateByCourseTemplete(courseTemplete);
        HashMap<String,CourseTemplete> map=new HashMap<>();
        map.put("courseTempleteinfo",courseTemplete);
        json.success(map);
        return json;
    }

    @ApiOperation(value = "删除课程模版接口",notes = "通过课程模版id来删除课程",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/courseTemplete/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delCourse(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        CourseTemplete courseTemplete=courseTempleteService.getById(id);
        if(courseTemplete!=null){
            courseTempleteService.deleteById(id);
            json.success();
        }else {
            json.failure("该课程模版删除失败，请输入正确的ID");
        }
        return json;
    }

    //根据id查找课程
    @ApiOperation(value = "查找课程模版接口",notes = "通过课程模版id来查找某个课程模版",httpMethod = "GET")
    @RequestMapping(value = "/v1/course/{id}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getCourseById(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        CourseTemplete courseTemplete=courseTempleteService.getById(id);
        if(courseTemplete!=null){
            HashMap<String,CourseTemplete> map=new HashMap<>();
            map.put("courseTempleteinfo",courseTemplete);
            json.success(map);
        }else{
            json.failure("查找不到该课程模版，请输入正确的ID");
        }
        return json;
    }
}
