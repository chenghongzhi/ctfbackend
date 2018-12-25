package ctfbackend.service;

import ctfbackend.bean.Admin;
import ctfbackend.bean.Admins;

import java.util.List;

public interface AdminService {
    void addAdmin(Admin admin);

    Admin updateByAdmin(Admin admin);

    void deleteById(Integer id);

    List<Admin> getAllAdmin();

    Admin getById(int id);

    Admin getByUserName(String username);

    List<Admins> findAdminsByPage(int start, int prePageRecords);
}
