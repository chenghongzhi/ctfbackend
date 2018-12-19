package ctfbackend.shiro;

import ctfbackend.bean.Admin;
import ctfbackend.service.AdminService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    AdminService adminService;

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

    /***
     * 授权
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }

    /***
     * 认证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken token1=(UsernamePasswordToken) token;
        String username=token1.getUsername();
//        System.out.println(username);
//        String username=(String) token.getPrincipal();
        Admin admin=adminService.getByUserName(username);
        if(admin==null)
            //抛出找不到帐号的异常
            throw new UnknownAccountException();
        SimpleAuthenticationInfo authenticationInfo=new SimpleAuthenticationInfo(
                admin.getUsername(),
                admin.getPassword(),
                ByteSource.Util.bytes(admin.getCredentialsSalt()),
                getName()
        );
        return authenticationInfo;
    }
}
