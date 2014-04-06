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

import com.seneca.model.CoursesInSemester;

@Repository
@Transactional
public class CourseInSemesterDaoImpl implements CourseInSemesterDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<CoursesInSemester> getAll()
   {
		Query query = entityManager.createQuery("select e from "
				+ "CoursesInSemester" + " e");
      List<CoursesInSemester> entities = query.getResultList();
      return entities;
   }

	public CoursesInSemester getById(Integer id)
   {
      return entityManager.find(CoursesInSemester.class, id);
   }

   public void update(CoursesInSemester entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(CoursesInSemester entity)
   {
      entityManager.persist(entity);
      return;
   }

	public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(CoursesInSemester.class, id));
      return;
   }

	public List<CoursesInSemester> search(CoursesInSemester search,
			Integer first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<CoursesInSemester> criteria = builder.createQuery(CoursesInSemester.class);
      Root<CoursesInSemester> root = criteria.from(CoursesInSemester.class);
      TypedQuery<CoursesInSemester> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(CoursesInSemester search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<CoursesInSemester> root = countCriteria.from(CoursesInSemester.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<CoursesInSemester> root, CoursesInSemester search)
   {
/*      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      int addition_attribute = search.getAdditionAttribute();
      if (addition_attribute != 0)
      {
         predicatesList.add(builder.equal(root.get("addition_attribute"), addition_attribute));
      }
      float eval_1_ans = search.getEval1Ans();
      if (eval_1_ans != 0)
      {
         predicatesList.add(builder.equal(root.get("eval_1_ans"), eval_1_ans));
      }
      float eval_2_ans = search.getEval2Ans();
      if (eval_2_ans != 0)
      {
         predicatesList.add(builder.equal(root.get("eval_2_ans"), eval_2_ans));
      }
      float eval_3_ans = search.getEval3Ans();
      if (eval_3_ans != 0)
      {
         predicatesList.add(builder.equal(root.get("eval_3_ans"), eval_3_ans));
      }
      int total_section = search.getTotalSection();
      if (total_section != 0)
      {
         predicatesList.add(builder.equal(root.get("total_section"), total_section));
      }
      int year = search.getYear();
      if (year != 0)
      {
         predicatesList.add(builder.equal(root.get("year"), year));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);*/
	   return null;
   }
}