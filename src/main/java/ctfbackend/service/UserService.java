package ctfbackend.service;

import ctfbackend.bean.User;

public interface UserService {
    void deleteById(Long id);

    User getById(Long id);
}
