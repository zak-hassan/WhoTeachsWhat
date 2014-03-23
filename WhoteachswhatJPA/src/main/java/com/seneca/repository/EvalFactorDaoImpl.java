package com.seneca.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.EvalFactor;

@Repository
@Transactional
public class EvalFactorDaoImpl implements EvalFactorDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<EvalFactor> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "EvalFactor" + " e");
      List<EvalFactor> entities = query.getResultList();
      return entities;
   }

   public EvalFactor getById(Integer id)
   {
      return entityManager.find(EvalFactor.class, id);
   }

   public void update(EvalFactor entity)
   {
      entityManager.merge(entity);
      return;
   }

	public EvalFactor create(EvalFactor entity)
   {
		entityManager.persist(entity);
		return entity;
   }

   public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(EvalFactor.class, id));
      return;
   }

   public List<EvalFactor> search(EvalFactor search, Integer first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<EvalFactor> criteria = builder.createQuery(EvalFactor.class);
      Root<EvalFactor> root = criteria.from(EvalFactor.class);
      TypedQuery<EvalFactor> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(EvalFactor search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<EvalFactor> root = countCriteria.from(EvalFactor.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<EvalFactor> root, EvalFactor search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String evalName = search.getEvalName();
      if (evalName != null && !"".equals(evalName))
      {
         predicatesList.add(builder.like(root.<String> get("course_code"), '%' + evalName + '%'));
      }
      /*
      Float evalFactor = search.getEvalFactor();
      if (evalFactor != null && !"".equals(evalFactor))
      {
         predicatesList.add(builder.like(root.<String> get("course_name"), '%' + evalFactor + '%'));
      }
      */

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }




}