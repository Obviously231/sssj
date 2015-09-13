package com.jsnu.chw.cars.dal.impl;

import com.jsnu.chw.cars.dal.BaseDAO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by Obvious on 2015/9/9.
 */

@Transactional
public class BaseDAOImpl<T> implements BaseDAO<T> {

    @PersistenceContext
    private EntityManager entityManager;

    private Class<T> clazz;

    public BaseDAOImpl() {
        ParameterizedType type = (ParameterizedType) this.getClass()
                .getGenericSuperclass();
        clazz = (Class<T>) type.getActualTypeArguments()[0];
    }

    @Override
    public void saveEntity(T t) {
        System.out.println(entityManager);
        entityManager.persist(t);
    }

    @Override
    public void saveOrUpdateEntity(T t) {
        entityManager.merge(t);
    }

    @Override
    public void deleteEntity(T t) {
        entityManager.remove(t);
    }

    @Override
    public void batchEntityByHQL(String jpql, Object... objects) {
        Query q = entityManager.createQuery(jpql);
        for (int i = 1; i <= objects.length; i++) {
            q.setParameter(i, objects[i]);
        }
        q.executeUpdate();
    }

    @Override
    public void executeSQL(String sql, Object... objects) {
        Query q = entityManager.createNativeQuery(sql);
        for (int i = 1; i <= objects.length; i++) {
            q.setParameter(i, objects[i]);
        }
        q.executeUpdate();
    }

    @Override
    public T loadEntity(Integer id) {
        return entityManager.getReference(clazz, id);
    }

    @Override
    public T getEntity(Integer id) {
        return entityManager.find(clazz, id);
    }


    @Override
    public List<T> findEntityByHQL(String jpql, Object... objects) {
        Query q = entityManager.createQuery(jpql);
        for (int i = 1; i <= objects.length; i++) {
            q.setParameter(i, objects[i]);
        }
        return q.getResultList();
    }

    @Override
    public Object uniqueResult(String jpql, Object... objects) {
        Query q = entityManager.createQuery(jpql);
        for (int i = 1; i <= objects.length; i++) {
            q.setParameter(i, objects[i]);
        }
        return q.getSingleResult();
    }

    @Override
    public List executeSQLQuery(String sql, Object... objects) {
        Query q = entityManager.createNativeQuery(sql);
        for (int i = 1; i <= objects.length; i++) {
            q.setParameter(i, objects[i]);
        }
        return q.getResultList();
    }
}
