package com.jsnu.chw.cars.services;

/**
 * Created by Obvious on 2015/9/9.
 */
public interface BaseService<T> {

    void save(T t);

    T get(Integer id);

}
