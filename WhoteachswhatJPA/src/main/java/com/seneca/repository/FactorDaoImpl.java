package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.Factor;

@Repository
@Transactional
public class FactorDaoImpl implements FactorDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<Factor> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "Factor" + " e");
      List<Factor> entities = query.getResultList();
      return entities;
   }

   public Factor getById(Integer id)
   {
      return entityManager.find(Factor.class, id);
   }

   public void update(Factor entity)
   {
      entityManager.merge(entity);
      return;
   }

	public Factor create(Factor entity)
   {
		entityManager.persist(entity);
		return entity;
   }

   public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(Factor.class, id));
      return;
   }

 

@Override
public Long getCount(Factor search) {
	// TODO Auto-generated method stub
	return null;
}




}