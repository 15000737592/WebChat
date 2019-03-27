package com.ccq.mapper;

import com.ccq.pojo.FileLog;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan
public interface FileLogMapper {
    int deleteByPrimaryKey(String filename);

    int insert(FileLog record);

    int insertSelective(FileLog record);

    FileLog selectByPrimaryKey(String filename);

    List<FileLog> selectAll();

    int updateByPrimaryKeySelective(FileLog record);

    int updateByPrimaryKey(FileLog record);
}