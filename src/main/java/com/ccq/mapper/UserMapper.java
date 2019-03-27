package com.ccq.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.ccq.pojo.User;

@MapperScan
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);
    
    List<User> selectByUserId(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}