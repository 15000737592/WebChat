package com.ccq.service;

import com.ccq.pojo.FileLog;

import java.util.List;

public interface FileLogService {

    int deleteByPrimaryKey(String filename);
    int insert(FileLog record);
    List<FileLog> selectAll();
}
