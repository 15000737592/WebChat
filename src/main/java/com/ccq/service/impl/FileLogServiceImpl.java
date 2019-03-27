package com.ccq.service.impl;

import com.ccq.mapper.FileLogMapper;
import com.ccq.pojo.FileLog;
import com.ccq.service.FileLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileLogServiceImpl implements FileLogService {

    @Autowired
    private FileLogMapper fileLogMapper;


    @Override
    public int deleteByPrimaryKey(String filename){
        return fileLogMapper.deleteByPrimaryKey(filename);
    }

    @Override
    public int insert(FileLog record) {
        return fileLogMapper.insert(record);
    }

    @Override
    public List<FileLog> selectAll() {
        return fileLogMapper.selectAll();
    }
}
