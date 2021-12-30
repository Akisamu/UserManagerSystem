package cn.itcast.service;

import cn.itcast.domain.PageBean;
import cn.itcast.domain.Student;

import java.util.List;
import java.util.Map;


public interface StudentService {


    public List<Student> findAll();


    void addUser(Student student);


    void deleteUser(String id);


    Student findUserById(String id);


    void updateUser(Student student);


    void delSelectedUser(String[] ids);


    PageBean<Student> findUserByPage(String currentPage, String rows, Map<String, String[]> condition);
}
