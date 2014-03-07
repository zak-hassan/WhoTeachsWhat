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

import com.seneca.model.CompHour;

@Repository
@Transactional
public class CompHourDaoImpl implements CompHourDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<CompHour> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "CompHour" + " e");
      List<CompHour> entities = query.getResultList();
      return entities;
   }

   public CompHour getById(Long id)
   {
      return entityManager.find(CompHour.class, id);
   }

   public void update(CompHour entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(CompHour entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Long id)
   {
      entityManager.remove(entityManager.find(CompHour.class, id));
      return;
   }

   public List<CompHour> search(CompHour search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<CompHour> criteria = builder.createQuery(CompHour.class);
      Root<CompHour> root = criteria.from(CompHour.class);
      TypedQuery<CompHour> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(CompHour search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<CompHour> root = countCriteria.from(CompHour.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<CompHour> root, CompHour search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String compHour_code = search.getCompHour_code();
      if (compHour_code != null && !"".equals(compHour_code))
      {
         predicatesList.add(builder.like(root.<String> get("compHour_code"), '%' + compHour_code + '%'));
      }
      String compHour_name = search.getCompHour_name();
      if (compHour_name != null && !"".equals(compHour_name))
      {
         predicatesList.add(builder.like(root.<String> get("compHour_name"), '%' + compHour_name + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
}