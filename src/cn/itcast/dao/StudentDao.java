package cn.itcast.dao;

import cn.itcast.domain.Student;

import java.util.List;
import java.util.Map;

/**
 * 用户操作的DAO
 */
public interface StudentDao {


    public List<Student> findAll();

    //Student findUserByUsernameAndPassword(String username, String password);

    void add(Student student);

    void delete(int id);

    Student findById(int i);

    void update(Student student);


    int findTotalCount(Map<String, String[]> condition);


    List<Student> findByPage(int start, int rows, Map<String, String[]> condition);
}
