package ctfbackend.controller;

import ctfbackend.bean.Report;
import ctfbackend.service.ReportService;
import ctfbackend.util.Page;
import ctfbackend.util.ResultJSON;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.HashMap;
import java.util.List;

@Api(value = "/report", tags = "实验报告相关接口")
@RestController
@RequestMapping(value = "/report")
public class ReportController {
    @Autowired
    ReportService reportService;

    @Autowired
    Page page;

    @ApiOperation(value = "获得所有实验报告",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/reports",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAllReports(Integer pages) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(reportService.list().size());
        page.setCurrentPage(pages);
        List<Report> reportList =reportService.selectByPage((pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,Object> map = new HashMap<>();
        map.put("totalPages",page.getTotalPages());
        map.put("pageResult",reportList);
        json.success(map);
        return json;
    }

    @ApiOperation(value = "通过学号获得所有实验报告",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/reports/{stuId}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON selectByStuIdToPage(Integer pages,@PathVariable Long stuId) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(reportService.list().size());
        page.setCurrentPage(pages);
        List<Report> reportList =reportService.selectByStuIdToPage(stuId,(pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,Object> map = new HashMap<>();
        map.put("totalPages",page.getTotalPages());
        map.put("pageResult",reportList);
        json.success(map);
        return json;
    }

    @ApiOperation(value = "通过课程模版ID和课程ID获得所有实验报告",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/reports/{tmpId}/{couId}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON selectByTmpIdToPage(Integer pages,@PathVariable Long tmpId,@PathVariable Long couId) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(reportService.list().size());
        page.setCurrentPage(pages);
        List<Report> reportList =reportService.selectByTmpIdToPage(tmpId,couId,(pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,Object> map = new HashMap<>();
        map.put("totalPages",page.getTotalPages());
        map.put("pageResult",reportList);
        json.success(map);
        return json;
    }

    @ApiOperation(value = "删除实验报告",notes = "通过实验报告id来删除课程",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/report/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delreport(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        Report report=reportService.select(id);
        if(report!=null){
            reportService.delete(id);
            json.success();
        }else {
            json.failure("该实验报告删除失败，请输入正确的ID");
        }
        return json;
    }

    @ApiOperation(value = "查找实验报告",notes = "通过实验报告id来查找实验报告",httpMethod = "GET")
    @RequestMapping(value = "/v1/report/{id}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getreportById(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        Report report=reportService.select(id);
        if(report!=null){
            HashMap<String,Report> map=new HashMap<>();
            map.put("reportinfo",report);
            json.success(map);
        }else{
            json.failure("查找不到该课程，请输入正确的ID");
        }
        return json;
    }

}
