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

import com.seneca.model.TeachingType;

@Repository
@Transactional
public class TeachingTypeDaoImpl implements TeachingTypeDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<TeachingType> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "TeachingType" + " e");
      List<TeachingType> entities = query.getResultList();
      return entities;
   }

   public TeachingType getById(Integer id)
   {
      return entityManager.find(TeachingType.class, id);
   }

   public void update(TeachingType entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(TeachingType entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(TeachingType.class, id));
      return;
   }

   public List<TeachingType> search(TeachingType search, Integer first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<TeachingType> criteria = builder.createQuery(TeachingType.class);
      Root<TeachingType> root = criteria.from(TeachingType.class);
      TypedQuery<TeachingType> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(TeachingType search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<TeachingType> root = countCriteria.from(TeachingType.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<TeachingType> root, TeachingType search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String teachingType_name = search.getTeachingType_name();
      if (teachingType_name != null && !"".equals(teachingType_name))
      {
         predicatesList.add(builder.like(root.<String> get("teachingType_name"), '%' + teachingType_name + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
}