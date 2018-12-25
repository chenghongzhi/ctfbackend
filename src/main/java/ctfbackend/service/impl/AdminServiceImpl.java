package ctfbackend.service.impl;

import ctfbackend.bean.Admin;
import ctfbackend.bean.Admins;
import ctfbackend.dao.AdminDao;
import ctfbackend.service.AdminService;
import ctfbackend.util.PasswordHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("AdminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;

    @Autowired
    PasswordHelper passwordHelper;

    /**
     * 创建用户
     * @param admin
     */
    @Override
    public void addAdmin(Admin admin) {
        passwordHelper.encryptPassword(admin);
        adminDao.insertAdmin(admin);
    }

    /***
     * 更新用户信息
     * @param admin
     * @return
     */
    @Override
    public Admin updateByAdmin(Admin admin) {
        passwordHelper.encryptPassword(admin);
        adminDao.updateByAdmin(admin);
        return admin;
    }

    /***
     * 根据id删除用户
     * @param id
     */
    @Override
    public void deleteById(Integer id) {
        adminDao.deleteById(id);
    }

    /***
     * 获得所有用户信息
     * @return
     */
    @Override
    public List<Admin> getAllAdmin() {
        return adminDao.getAllAdmin();
    }

    /***
     * 根据id获得用户信息
     * @param id
     * @return
     */
    @Override
    public Admin getById(int id) {
        return adminDao.getById(id);
    }

    /***
     * 根据用户名查找用户
     * @param username
     * @return
     */
    @Override
    public Admin getByUserName(String username) {
        return adminDao.getByUserName(username);
    }

    /***
     * 分页显示所有用户
     * @param start
     * @param prePageRecords
     * @return
     */
    @Override
    public List<Admins> findAdminsByPage(int start, int prePageRecords) {
        return adminDao.findAdminsByPage(start,prePageRecords);
    }
}
