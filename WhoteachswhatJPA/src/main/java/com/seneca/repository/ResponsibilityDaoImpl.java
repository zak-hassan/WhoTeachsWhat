package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.Responsibility;

@Repository
@Transactional
public class ResponsibilityDaoImpl implements ResponsibilityDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<Responsibility> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "Responsibility" + " e");
      List<Responsibility> entities = query.getResultList();
      return entities;
   }

   public Responsibility getById(Integer id)
   {
      return entityManager.find(Responsibility.class, id);
   }

   public void update(Responsibility entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(Responsibility entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(Responsibility.class, id));
      return;
   }
/*
   public List<Responsibility> search(Responsibility search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<Responsibility> criteria = builder.createQuery(Responsibility.class);
      Root<Responsibility> root = criteria.from(Responsibility.class);
      TypedQuery<Responsibility> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(Responsibility search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<Responsibility> root = countCriteria.from(Responsibility.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<Responsibility> root, Responsibility search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String responsibility_code = search.getResponsibility_code();
      if (responsibility_code != null && !"".equals(responsibility_code))
      {
         predicatesList.add(builder.like(root.<String> get("responsibility_code"), '%' + responsibility_code + '%'));
      }
      String responsibility_name = search.getResponsibility_name();
      if (responsibility_name != null && !"".equals(responsibility_name))
      {
         predicatesList.add(builder.like(root.<String> get("responsibility_name"), '%' + responsibility_name + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }

*/

@Override
public List<Responsibility> search(Responsibility search, Integer first,
		Integer maxItems) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Long getCount(Responsibility search) {
	// TODO Auto-generated method stub
	return null;
}

}