package edu.ncsu.mas.platys.crowdre.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.ncsu.mas.platys.crowdre.dao.RequirementResponseDao;
import edu.ncsu.mas.platys.crowdre.model.RequirementResponse;

@Service("requirementResponseService")
@Transactional
public class RequirementResponseServiceImpl implements RequirementResponseService {

  @Autowired
  private RequirementResponseDao dao;

  @Override
  public void saveResponse(RequirementResponse response) {
    dao.saveResponse(response);
  }

  @Override
  public RequirementResponse[] findByUserId(int userId) {
    return dao.findByUserId(userId);
  }

  @Override
  public Map<String, List<RequirementResponse>> findByUserIdAndGroupByDomain(int userId) {
    return dao.findByUserIdAndGroupByDomain(userId);
  }
}
