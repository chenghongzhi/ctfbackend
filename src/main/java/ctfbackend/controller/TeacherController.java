package ctfbackend.controller;

import ctfbackend.bean.Teacher;
import ctfbackend.util.Page;
import ctfbackend.util.ResultJSON;
import ctfbackend.service.TeacherService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
@Api(value = "/teacher", tags = "教师相关接口")
@RestController
@RequestMapping(value = "/teacher")
public class TeacherController {
    @Autowired
    TeacherService teacherService;

    @Autowired
    Page page;

    //添加教师信息
    @ApiOperation(value = "添加教师接口",notes = "根据teacher对象添加教师",httpMethod = "POST")
    @RequestMapping(value = "/v1/add",method = RequestMethod.POST,produces = {"application/json"})
    public ResultJSON addTeacher(@RequestBody @Valid Teacher teacher){
        ResultJSON json = new ResultJSON();
        teacher.setJointime(new Timestamp(System.currentTimeMillis()));
        teacherService.addTeacher(teacher);
        HashMap<String,Teacher> map=new HashMap<>();
        map.put("teacherinfo",teacher);
        json.success(map);
        return json;
    }

    //获得所有的教师
    @ApiOperation(value = "获得所有教师接口",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/teachers",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAllTeachers(Integer pages) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(teacherService.getAllTeacher().size());
        page.setCurrentPage(pages);
        List<Teacher> teacherList =teacherService.findTeachersByPage((pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,List<Teacher>> map = new HashMap<>();
        map.put("pageResult",teacherList);
        json.success(map);
        return json;
    }

    //更新教师信息
    @ApiOperation(value = "更新教师接口",notes = "将以teacher对象进行更新",httpMethod = "PUT")
    @RequestMapping(value = "/v1/update",method = RequestMethod.PUT,produces = {"application/json"})
    public ResultJSON updateteacher(@RequestBody @Valid Teacher teacher) {
        ResultJSON json = new ResultJSON();
        teacher.setJointime(new Timestamp(System.currentTimeMillis()));
        teacherService.updateByTeacher(teacher);
        HashMap<String,Teacher> map=new HashMap<>();
        map.put("teacherinfo",teacher);
        json.success(map);
        return json;
    }

    //删除教师信息
    @ApiOperation(value = "删除教师接口",notes = "通过教师id来删除教师",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/teacher/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delTeacher(@PathVariable Integer id) {
        ResultJSON json=new ResultJSON();
        Teacher teacher=teacherService.getById(id);
        if(teacher!=null){
            teacherService.deleteById(id);
            json.success();
        }else {
            json.failure("删除教师失败，请输入正确的ID");
        }
        return json;
    }

    //根据id查找教师
    @ApiOperation(value = "查找教师接口",notes = "通过教师id来查找某个教师",httpMethod = "GET")
    @RequestMapping(value = "/v1/teacher/{id}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getTeacherById(@PathVariable int id) {
        ResultJSON json=new ResultJSON();
        Teacher teacher=teacherService.getById(id);
        if(teacher!=null){
            HashMap<String,Teacher> map=new HashMap<>();
            map.put("teacherinfo",teacher);
            json.success(map);
        }else {
            json.failure("查找不到该教师，请输入正确的ID");
        }
        return json;
    }

}
