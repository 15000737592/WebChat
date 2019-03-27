package com.ccq.service;

import com.ccq.pojo.User;

public interface UserService {

    public User getUserById(String userid);
    public int updateUser(User user);
}
