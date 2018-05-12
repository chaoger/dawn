package com.chaoger.dao;

/*
**Created by chaoger on  18-5-12.
*/

import com.chaoger.model.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    User selectUserById(int id);
}
