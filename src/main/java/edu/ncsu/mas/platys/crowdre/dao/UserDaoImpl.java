package edu.ncsu.mas.platys.crowdre.dao;

import org.springframework.stereotype.Repository;

import edu.ncsu.mas.platys.crowdre.model.User;

@Repository("userDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

  public User findById(int id) {
    return getByKey(id);
  }
  
  public void saveResponse(User user) {
    persist(user);
  }

}
