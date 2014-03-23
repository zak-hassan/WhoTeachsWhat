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

import com.seneca.model.Course;

@Repository
@Transactional
public class CourseDaoImpl implements CourseDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<Course> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "Course" + " e");
      List<Course> entities = query.getResultList();
      return entities;
   }

	public Course getById(Integer id)
   {
      return entityManager.find(Course.class, id);
   }

   public void update(Course entity)
   {
      entityManager.merge(entity);
      return;
   }

	public Course create(Course entity)
   {
      entityManager.persist(entity);
		return entity;
   }

	public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(Course.class, id));
      return;
   }

	public List<Course> search(Course search, Integer first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<Course> criteria = builder.createQuery(Course.class);
      Root<Course> root = criteria.from(Course.class);
      TypedQuery<Course> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(Course search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<Course> root = countCriteria.from(Course.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<Course> root, Course search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String course_code = search.getCourseCode();
      if (course_code != null && !"".equals(course_code))
      {
         predicatesList.add(builder.like(root.<String> get("course_code"), '%' + course_code + '%'));
      }
      String course_name = search.getCourseName();
      if (course_name != null && !"".equals(course_name))
      {
         predicatesList.add(builder.like(root.<String> get("course_name"), '%' + course_name + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }

@Override
public Course getByCourseCode(String course_code) {
	// TODO using a predicate search for a given course code.
	return null;
}
}