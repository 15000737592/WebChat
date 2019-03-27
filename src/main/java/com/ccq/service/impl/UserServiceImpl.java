package com.ccq.service.impl;

import com.ccq.mapper.UserMapper;
import com.ccq.pojo.User;
import com.ccq.service.UserService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User getUserById(String userId) {
        List<User> users = userMapper.selectByUserId(userId);
        if (CollectionUtils.isNotEmpty(users)){
            return users.get(0);
        }
        return null;
    }

    public int updateUser(User user) {
        int flag = userMapper.updateByPrimaryKeySelective(user);
        return flag;
    }
}
