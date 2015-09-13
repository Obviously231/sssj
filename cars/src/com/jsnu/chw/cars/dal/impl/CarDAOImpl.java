package com.jsnu.chw.cars.dal.impl;

import com.jsnu.chw.cars.dal.BaseDAO;
import com.jsnu.chw.cars.persist.entities.Car;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

/**
 * Created by Obvious on 2015/9/9.
 */
@Repository(value = "carDAO")
public class CarDAOImpl extends BaseDAOImpl<Car> implements BaseDAO<Car> {


}
