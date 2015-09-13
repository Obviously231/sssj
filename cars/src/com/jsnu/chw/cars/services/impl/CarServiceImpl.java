package com.jsnu.chw.cars.services.impl;

import com.jsnu.chw.cars.dal.impl.CarDAOImpl;
import com.jsnu.chw.cars.persist.entities.Car;
import com.jsnu.chw.cars.services.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Obvious on 2015/9/9.
 */
@Service
public class CarServiceImpl implements BaseService<Car> {

    @Autowired
    private CarDAOImpl carDAO;

    @Override
    public void save(Car car) {
        carDAO.saveEntity(car);
    }

    @Override
    public Car get(Integer id) {
        return carDAO.getEntity(id);
    }
}
