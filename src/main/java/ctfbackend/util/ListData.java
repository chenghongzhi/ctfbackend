package ctfbackend.util;

import ctfbackend.bean.Admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ListData {

    public static List<HashMap> AdminToListData(List<Admin> admins){
        List<HashMap> listData = new ArrayList<>();
        for (Admin admin:admins) {
            HashMap<String,String> map = new HashMap<>();
            map.put("id",admin.getId().toString());
            map.put("username",admin.getUsername());
//            map.put("password",admin.getPassword());
            map.put("lastlogin",admin.getLastlogin().toString());
//            map.put("salt",admin.getSalt());
            listData.add(map);
        }
        return listData;
    }
}
