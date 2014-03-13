package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.Semester;

@Repository
@Transactional
public class SemesterDaoImpl implements SemesterDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<Semester> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "Semester" + " e");
      List<Semester> entities = query.getResultList();
      return entities;
   }

	public Semester getById(Integer id)
   {
      return entityManager.find(Semester.class, id);
   }

   public void update(Semester entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(Semester entity)
   {
      entityManager.persist(entity);
      return;
   }

	public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(Semester.class, id));
      return;
   }
/*
   public List<Semester> search(Semester search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<Semester> criteria = builder.createQuery(Semester.class);
      Root<Semester> root = criteria.from(Semester.class);
      TypedQuery<Semester> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(Semester search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<Semester> root = countCriteria.from(Semester.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<Semester> root, Semester search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String semester_name = search.getSemester_name();
      if (semester_name != null && !"".equals(semester_name))
      {
         predicatesList.add(builder.like(root.<String> get("semester_name"), '%' + semester_name + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
   */

@Override
	public List<Semester> search(Semester search, Integer first,
			Integer maxItems) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Long getCount(Semester search) {
	// TODO Auto-generated method stub
	return null;
}
}