package ctfbackend.controller;

import ctfbackend.bean.Imagelocal;
import ctfbackend.service.ImageService;
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

@Api(value = "/image", tags = "镜像相关接口")
@RestController
@RequestMapping(value = "/image")
public class ImagelocalController {
    @Autowired
    ImageService imageService;

    @Autowired
    Page page;

    //添加镜像信息
    @ApiOperation(value = "添加镜像接口",notes = "根据image对象添加镜像",httpMethod = "POST")
    @RequestMapping(value = "/v1/add",method = RequestMethod.POST,produces = {"application/json"})
    public ResultJSON addImage(@RequestBody @Valid Imagelocal imagelocal){
        ResultJSON json = new ResultJSON();
        imagelocal.setCreatedtime(new Timestamp(System.currentTimeMillis()));
        imageService.add(imagelocal);
        HashMap<String,Imagelocal> map=new HashMap<>();
        map.put("imagelocalinfo",imagelocal);
        json.success(map);
        return json;
    }

    //获得所有的镜像
    @ApiOperation(value = "获得所有镜像接口",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/imagelocals",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAllimagelocals(Integer pages) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(imageService.list().size());
        page.setCurrentPage(pages);
        List<Imagelocal> imagelocalList =imageService.listByPage((pages-1)*page.getPageSize(),page.getPageSize());
        HashMap<String,Object> map = new HashMap<>();
        map.put("totalPages",page.getTotalPages());
        map.put("pageResult",imagelocalList);
        json.success(map);
        return json;
    }
    
    //删除镜像信息
    @ApiOperation(value = "删除镜像接口",notes = "通过镜像id来删除镜像",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/imagelocal/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delimagelocal(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        Imagelocal imagelocal=imageService.select(id);
        if(imagelocal!=null){
            imageService.delete(id);
            json.success();
        }else {
            json.failure("删除镜像失败，请输入正确的ID");
        }
        return json;
    }

    //根据id查找镜像
    @ApiOperation(value = "查找镜像接口",notes = "通过镜像id来查找某个镜像",httpMethod = "GET")
    @RequestMapping(value = "/v1/imagelocal/{id}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getImagelocalById(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        Imagelocal imagelocal=imageService.select(id);
        if(imagelocal!=null){
            HashMap<String,Imagelocal> map=new HashMap<>();
            map.put("imagelocalinfo",imagelocal);
            json.success(map);
        }else {
            json.failure("查找不到该镜像，请输入正确的ID");
        }
        return json;
    }

}
