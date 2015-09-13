package com.jsnu.chw.cars.dal;

import java.util.List;

/**
 * Created by Obvious on 2015/9/9.
 */
public interface BaseDAO<T> {

    //Ð´²Ù×÷
    void saveEntity(T t);

    void saveOrUpdateEntity(T t);

    void deleteEntity(T t);

    void batchEntityByHQL(String jpql, Object... objects);


    void executeSQL(String sql, Object... objects);

    //¶Á²Ù×÷
    T loadEntity(Integer id);

    T getEntity(Integer id);

    List<T> findEntityByHQL(String jpql, Object... objects);

    Object uniqueResult(String jpql, Object... objects);

    List executeSQLQuery(String sql, Object... objects);

}
