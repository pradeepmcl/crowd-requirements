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
  public void saveResponse(User response) {
    dao.saveResponse(response);
  }
}