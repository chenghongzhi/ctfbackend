package ctfbackend.controller;

import ctfbackend.bean.Admin;
import ctfbackend.bean.Admins;
import ctfbackend.service.AdminService;
import ctfbackend.util.MD5Util;
import ctfbackend.util.Page;
import ctfbackend.util.ResultJSON;
import ctfbackend.util.UserContext;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.xml.transform.Result;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
@Api(value = "/admin", tags = "管理员相关接口")
@RestController
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    AdminService adminService;

    @Autowired
    Page page;

    private static final Logger log=Logger.getLogger(AdminController.class);

    //添加帐号
    @ApiOperation(value = "添加管理员接口",notes = "根据admin对象添加账户",httpMethod = "POST")
    @RequestMapping(value = "/v1/add",method = RequestMethod.POST,produces = {"application/json"})
    public ResultJSON addAdmin(@RequestBody @Valid Admin admin){
        ResultJSON json = new ResultJSON();
        admin.setLastlogin(new Timestamp(System.currentTimeMillis()));
        adminService.addAdmin(admin);
        HashMap<String,String> map=new HashMap<>();
        map.put("adminName",admin.getUsername());
        map.put("lastlogin",admin.getLastlogin().toString());
        json.success(map);
        return json;
    }

    //获得所有的帐号
    @ApiOperation(value = "获得所有管理员账户接口",notes = "查询结果将以分页显示",httpMethod = "GET")
    @RequestMapping(value = "/v1/admins",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAllAdmins(Integer pages) {
        ResultJSON json = new ResultJSON();
        page.setTotalUsers(adminService.getAllAdmin().size());
        page.setCurrentPage(pages);
        List<Admins> adminList =adminService.findAdminsByPage((pages-1)*page.getPageSize(),page.getPageSize());
//        System.out.println((pages-1)*page.getPageSize()+"----"+page.getPageSize());
        HashMap<String,List<Admins>> map = new HashMap<>();
        map.put("pageResult",adminList);
        json.success(map);
        return json;
    }

    //更新帐号信息
    @ApiOperation(value = "更新管理员账户接口",notes = "将以admin对象进行更新",httpMethod = "PUT")
    @RequestMapping(value = "/v1/update/{id}",method = RequestMethod.PUT,produces = {"application/json"})
    public ResultJSON updateAdmin(@RequestBody @Valid Admin admin,@PathVariable Long id) {
        ResultJSON json = new ResultJSON();
        admin.setLastlogin(new Timestamp(System.currentTimeMillis()));
        adminService.updateByAdmin(admin);
        HashMap<String,String> map=new HashMap<>();
        map.put("adminId",admin.getId().toString());
        map.put("adminName",admin.getUsername());
        map.put("lastlogin",admin.getLastlogin().toString());
        json.success(map);
        return json;
    }

    //删除帐号
    @ApiOperation(value = "删除管理员账户接口",notes = "通过管理员id来删除用户",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/admin/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delAdmin(@PathVariable int id) {
        ResultJSON json=new ResultJSON();
        Admin admin=adminService.getById(id);
        if(admin!=null){
            adminService.deleteById(id);
            json.success();
        }
        else {
            json.failure("该帐号删除失败，请输入正确的ID");
        }
        return json;
    }

    //根据id查找帐号
    @ApiOperation(value = "查找管理员账户接口",notes = "通过管理员id来查找某个用户",httpMethod = "GET")
    @RequestMapping(value = "/v1/admin/{id}",method = RequestMethod.GET,produces = {"application/json"})
    public ResultJSON getAdminById(@PathVariable int id) {
        ResultJSON json=new ResultJSON();
        Admin admin=adminService.getById(id);
        if(admin!=null){
            HashMap<String,String> map=new HashMap<>();
            map.put("adminId",Integer.toString(admin.getId()));
            map.put("adminUserName",admin.getUsername());
            map.put("lastlogin",admin.getLastlogin().toString());
            json.success(map);
        }else {
            json.failure("查找不到该帐号，请输入正确的ID");
        }
        return json;
    }
    //登录
    @ApiOperation(value = "登录接口",notes = "根据用户名密码判断登录",httpMethod = "POST")
    @RequestMapping(value = "/v1/login",method = RequestMethod.POST)
    public ResultJSON login(@RequestParam("username") String username, @RequestParam("password") String password ){
        ResultJSON json=new ResultJSON();
        Subject subject= SecurityUtils.getSubject();
//        //判断用户是否已经登录
        System.out.println("username:"+username+"password:"+password);
        if(!subject.isAuthenticated()){
            UsernamePasswordToken token=new UsernamePasswordToken(username,password);
            try{
                subject.login(token);
                String name=(String)subject.getPrincipal();
                UserContext.putLogininfo(name);
                HashMap<String,String> map= new HashMap<>();
                map.put("token",subject.getSession().getId().toString());
                json.success(map);
            }catch (IncorrectCredentialsException e){
                json.failure("用户账号/密码错误");
            }catch (UnknownAccountException e) {
                json.failure("用户账号/密码错误");
            }catch (Exception e){
                e.printStackTrace();
                log.error(username+"用户 Exception------"+e);
            }
        }else{
            json.failure("不能重复登录");
            log.info("不能重复登录");
        }
        log.info("用户返回 "+json.getData()+"");
        return json;
    }

    @ApiOperation(value = "登出接口", notes = "登出用户，清空服务器session", httpMethod = "GET")
    @RequestMapping(value = "/v1/logout", method = RequestMethod.GET)
    public ResultJSON logout() {
        ResultJSON json = new ResultJSON();
        if (UserContext.getCurrent()==null) {
            json.success("用户退出成功");
        }
        return json;
    }

    @ApiIgnore
    @RequestMapping(value = "/v1/unauthorized", method = RequestMethod.GET)
    public ResultJSON authorizationFail() {
        ResultJSON json = new ResultJSON();
        json.failure("该用户没有权限");
        return json;
    }

    @ApiIgnore
    @RequestMapping(value = "/v1/unauthenticated", method = RequestMethod.GET)
    public ResultJSON authenticationFail() {
        ResultJSON json = new ResultJSON();
        json.failure("用户未登录");
        return json;
    }

    @ApiIgnore
    @ApiOperation(value = "获取验证码", notes = "获取验证码，在验证登录时使用", httpMethod = "GET")
    @RequestMapping(value = "/v1/randomcode", method = RequestMethod.GET)
    public ResultJSON getrandomcode(HttpServletRequest request) {
        ResultJSON json =new ResultJSON();
        String randomcode = MD5Util.getStringRandom(4);
        request.getSession().setAttribute("randomcode",randomcode);
        HashMap<String, String> map = new HashMap<>();
        map.put("randomcode",randomcode);
        json.success(map);
        return json;
    }
}
