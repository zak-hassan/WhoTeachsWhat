package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.PrepTime;

@Repository
@Transactional
public class PrepTimeDaoImpl implements PrepTimeDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<PrepTime> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "PrepTime" + " e");
      List<PrepTime> entities = query.getResultList();
      return entities;
   }

   public PrepTime getById(Integer id)
   {
      return entityManager.find(PrepTime.class, id);
   }

   public void update(PrepTime entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(PrepTime entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(PrepTime.class, id));
      return;
   }
/*
   public List<PrepTime> search(PrepTime search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<PrepTime> criteria = builder.createQuery(PrepTime.class);
      Root<PrepTime> root = criteria.from(PrepTime.class);
      TypedQuery<PrepTime> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(PrepTime search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<PrepTime> root = countCriteria.from(PrepTime.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<PrepTime> root, PrepTime search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String prep_factor = search.getPrep_factor();
      if (prep_factor != null && !"".equals(prep_factor))
      {
         predicatesList.add(builder.like(root.<String> get("prep_factor"), '%' + prep_factor + '%'));
      }
      String prep_name = search.getPrep_name();
      if (prep_name != null && !"".equals(prep_name))
      {
         predicatesList.add(builder.like(root.<String> get("prep_name"), '%' + prep_name + '%'));
      }
      String program_code = search.getProgram_code();
      if (program_code != null && !"".equals(program_code))
      {
         predicatesList.add(builder.like(root.<String> get("program_code"), '%' + program_code + '%'));
      }
      String program_name = search.getProgram_name();
      if (program_name != null && !"".equals(program_name))
      {
         predicatesList.add(builder.like(root.<String> get("program_name"), '%' + program_name + '%'));
      }
      int total_semester = search.getTotal_semester();
      if (total_semester != 0)
      {
         predicatesList.add(builder.equal(root.get("total_semester"), total_semester));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
   */

@Override
public List<PrepTime> search(PrepTime search, Integer first, Integer maxItems) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Long getCount(PrepTime search) {
	// TODO Auto-generated method stub
	return null;
}
}