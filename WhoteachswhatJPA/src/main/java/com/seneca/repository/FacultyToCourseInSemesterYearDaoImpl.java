package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.FacultyToCourseInSemesterYear;

@Repository
@Transactional
public class FacultyToCourseInSemesterYearDaoImpl implements FacultyToCourseInSemesterYearDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<FacultyToCourseInSemesterYear> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "FacultyToCourseInSemesterYear" + " e");
      List<FacultyToCourseInSemesterYear> entities = query.getResultList();
      return entities;
   }

   public FacultyToCourseInSemesterYear getById(Long id)
   {
      return entityManager.find(FacultyToCourseInSemesterYear.class, id);
   }

   public void update(FacultyToCourseInSemesterYear entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(FacultyToCourseInSemesterYear entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Long id)
   {
      entityManager.remove(entityManager.find(FacultyToCourseInSemesterYear.class, id));
      return;
   }

@Override
public List<FacultyToCourseInSemesterYear> search(
		FacultyToCourseInSemesterYear search, Long first, Integer maxItems) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Long getCount(FacultyToCourseInSemesterYear search) {
	// TODO Auto-generated method stub
	return null;
}

/*
 
   public List<FacultyToCourseInSemesterYear> search(FacultyToCourseInSemesterYear search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<FacultyToCourseInSemesterYear> criteria = builder.createQuery(FacultyToCourseInSemesterYear.class);
      Root<FacultyToCourseInSemesterYear> root = criteria.from(FacultyToCourseInSemesterYear.class);
      TypedQuery<FacultyToCourseInSemesterYear> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(FacultyToCourseInSemesterYear search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<FacultyToCourseInSemesterYear> root = countCriteria.from(FacultyToCourseInSemesterYear.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<FacultyToCourseInSemesterYear> root, FacultyToCourseInSemesterYear search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      int addition_attribute = search.getAdditionAttribute();
      if (addition_attribute != 0)
      {
         predicatesList.add(builder.equal(root.get("addition_attribute"), addition_attribute));
      }
      int compHour_allowance = search.getCompHour_allowance();
      if (compHour_allowance != 0)
      {
         predicatesList.add(builder.equal(root.get("compHour_allowance"), compHour_allowance));
      }
      int compHour_assigned = search.getCompHour_assigned();
      if (compHour_assigned != 0)
      {
         predicatesList.add(builder.equal(root.get("compHour_assigned"), compHour_assigned));
      }
      int section_number = search.getSection_number();
      if (section_number != 0)
      {
         predicatesList.add(builder.equal(root.get("section_number"), section_number));
      }
      int section_id = search.getSection_id();
      if (section_id != 0)
      {
         predicatesList.add(builder.equal(root.get("section_id"), section_id));
      }
      int year = search.getYear();
      if (year != 0)
      {
         predicatesList.add(builder.equal(root.get("year"), year));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
*/
   
}