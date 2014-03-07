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

import com.seneca.model.AccessLevel;

@Repository
@Transactional
public class AccessLevelDaoImpl implements AccessLevelDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<AccessLevel> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "AccessLevel" + " e");
      List<AccessLevel> entities = query.getResultList();
      return entities;
   }

   public AccessLevel getById(Long id)
   {
      return entityManager.find(AccessLevel.class, id);
   }

   public void update(AccessLevel entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(AccessLevel entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Long id)
   {
      entityManager.remove(entityManager.find(AccessLevel.class, id));
      return;
   }

   public List<AccessLevel> search(AccessLevel search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<AccessLevel> criteria = builder.createQuery(AccessLevel.class);
      Root<AccessLevel> root = criteria.from(AccessLevel.class);
      TypedQuery<AccessLevel> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(AccessLevel search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<AccessLevel> root = countCriteria.from(AccessLevel.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<AccessLevel> root, AccessLevel search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String access_name = search.getAccessName();
      if (access_name != null && !"".equals(access_name))
      {
         predicatesList.add(builder.like(root.<String> get("access_name"), '%' + access_name + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
}