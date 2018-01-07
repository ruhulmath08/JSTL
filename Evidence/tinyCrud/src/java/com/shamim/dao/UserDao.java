package com.shamim.dao;

import com.shamim.bean.User;
import java.util.List;

public interface UserDao {
    public int save(User u);
    public int update(User u);
    public int delete(User u);
    public List<User> getAllRecords();
    public User getRecordById(int id);
}
