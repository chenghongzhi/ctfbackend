package ctfbackend.controller;

import ctfbackend.bean.User;
import ctfbackend.service.UserService;
import ctfbackend.util.ResultJSON;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Api(value = "/user", tags = "用户相关接口")
@RestController
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    UserService userService;

    @ApiOperation(value = "删除用户账户接口",notes = "通过用户id来删除用户",httpMethod = "DELETE")
    @RequestMapping(value = "/v1/user/{id}",method = RequestMethod.DELETE,produces = {"application/json"})
    public ResultJSON delAdmin(@PathVariable Long id) {
        ResultJSON json=new ResultJSON();
        User user=userService.getById(id);
        if(user!=null){
            userService.deleteById(id);
            json.success();
        }
        else {
            json.failure("该帐号删除失败，请输入正确的ID");
        }
        return json;
    }
}
