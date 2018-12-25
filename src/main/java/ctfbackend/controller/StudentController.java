package ctfbackend.controller;

import ctfbackend.bean.Student;
import ctfbackend.bean.Teacher;
import ctfbackend.service.StudentService;
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
@Api(value = "/student", tags = "学生相关接口")
@RestController
@RequestMapping(value = "/student")
public class StudentController {
    @Autowired
    StudentService studentService;

    @Autowired
    Page page;

    //添加学生信息
    @ApiOperation(value = "添加学生接口",notes = "根据student对象添加学生",httpMethod = "POST")
    @RequestMapping(value = "/v1/add",method = RequestMethod.POST,produces = {"application/json"})
    public ResultJSON addStudent(@RequestBody @Valid Student student){
        ResultJSON json = new ResultJSON();
        student.setJointime(new Timestamp(System.currentTimeMillis()));
        studentService.addStudent(student);
        HashMap<String,Student> map=new HashMap<>();
        map.put("studentinfo",student);
        json.success(map);
        return json;
    }

    //获得所有的学生
    @ApiOperation(value = "获得所有学生接口",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/students",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAllStudents(Integer pages) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(studentService.getAllStudent().size());
        page.setCurrentPage(pages);
        List<Student> studentList =studentService.findStudentsByPage((pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,List<Student>> map = new HashMap<>();
        map.put("pageResult",studentList);
        json.success(map);
        return json;
    }

    //更新学生信息
    @ApiOperation(value = "更新学生接口",notes = "将以student对象进行更新",httpMethod = "PUT")
    @RequestMapping(value = "/v1/update/{id}",method = RequestMethod.PUT,produces = {"application/json"})
    public ResultJSON updateStudent(@RequestBody @Valid Student student,@PathVariable Long id) {
        ResultJSON json = new ResultJSON();
        student.setJointime(new Timestamp(System.currentTimeMillis()));
        studentService.updateByStudent(student);
        HashMap<String,Student> map=new HashMap<>();
        map.put("studentinfo",student);
        json.success(map);
        return json;
    }

    //删除学生信息
    @ApiOperation(value = "删除学生接口",notes = "通过学生id来删除学生",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/student/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delStudent(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        Student student=studentService.selectById(id);
        if(student!=null){
            studentService.deleteById(id);
            json.success();
        }else {
            json.failure("删除学生失败，请输入正确的ID");
        }
        return json;
    }

    //根据id查找学生
    @ApiOperation(value = "查找学生接口",notes = "通过学生id来查找某个学生",httpMethod = "GET")
    @RequestMapping(value = "/v1/student/{id}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getStudentById(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        Student student=studentService.selectById(id);
        if(student!=null){
            HashMap<String,Student> map=new HashMap<>();
            map.put("studentinfo",student);
            json.success(map);
        }else{
            json.failure("查找不到该学生，请输入正确的ID");
        }
        return json;
    }

}
