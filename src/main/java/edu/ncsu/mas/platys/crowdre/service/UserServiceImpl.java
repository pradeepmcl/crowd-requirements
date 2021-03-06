package edu.ncsu.mas.platys.crowdre.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.ncsu.mas.platys.crowdre.dao.UserDao;
import edu.ncsu.mas.platys.crowdre.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

  @Autowired
  private UserDao dao;

  @Override
  public User findById(int id) {
    return dao.findById(id);
  }

  @Override
  public int getResponseCount(int id) {
    return dao.getResponseCount(id);
  }
  
  @Override
  public int getResponseCount(String mturkId) {
    return dao.getResponseCount(mturkId);
  }
  
  @Override
  public void updateResponse(User response) {
    dao.updateResponse(response);
  }

  @Override
  public void saveResponse(User response) {
    dao.saveResponse(response);
  }
}
