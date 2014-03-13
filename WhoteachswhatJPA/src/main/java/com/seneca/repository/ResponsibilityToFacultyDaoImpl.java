package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.ResponsibilityToFaculty;

@Repository
@Transactional
public class ResponsibilityToFacultyDaoImpl implements ResponsibilityToFacultyDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<ResponsibilityToFaculty> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "ResponsibilityToFaculty" + " e");
      List<ResponsibilityToFaculty> entities = query.getResultList();
      return entities;
   }

	public ResponsibilityToFaculty getById(Integer id)
   {
      return entityManager.find(ResponsibilityToFaculty.class, id);
   }

   public void update(ResponsibilityToFaculty entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(ResponsibilityToFaculty entity)
   {
      entityManager.persist(entity);
      return;
   }

	public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(ResponsibilityToFaculty.class, id));
      return;
   }
   /*
   public List<ResponsibilityToFaculty> search(ResponsibilityToFaculty search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<ResponsibilityToFaculty> criteria = builder.createQuery(ResponsibilityToFaculty.class);
      Root<ResponsibilityToFaculty> root = criteria.from(ResponsibilityToFaculty.class);
      TypedQuery<ResponsibilityToFaculty> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(ResponsibilityToFaculty search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<ResponsibilityToFaculty> root = countCriteria.from(ResponsibilityToFaculty.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<ResponsibilityToFaculty> root, ResponsibilityToFaculty search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      int hours_per_week = search.getHours_per_week();
      if (hours_per_week != 0)
      {
         predicatesList.add(builder.equal(root.get("hours_per_week"), hours_per_week));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
   */

@Override
public List<ResponsibilityToFaculty> search(ResponsibilityToFaculty search,
			Integer first, Integer maxItems) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Long getCount(ResponsibilityToFaculty search) {
	// TODO Auto-generated method stub
	return null;
}
}