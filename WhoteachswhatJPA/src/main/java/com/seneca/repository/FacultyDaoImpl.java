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

import com.seneca.model.Faculty;

@Repository
@Transactional
public class FacultyDaoImpl implements FacultyDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<Faculty> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "Faculty" + " e");
      List<Faculty> entities = query.getResultList();
      return entities;
   }

   public Faculty getById(Integer id)
   {
      return entityManager.find(Faculty.class, id);
   }

   public void update(Faculty entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(Faculty entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(Faculty.class, id));
      return;
   }



   public List<Faculty> search(Faculty search, Integer first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<Faculty> criteria = builder.createQuery(Faculty.class);
      Root<Faculty> root = criteria.from(Faculty.class);
      TypedQuery<Faculty> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }
 

   public Long getCount(Faculty search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<Faculty> root = countCriteria.from(Faculty.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<Faculty> root, Faculty search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String faculty_first_name = search.getFacultyFirstName();
      if (faculty_first_name != null && !"".equals(faculty_first_name))
      {
         predicatesList.add(builder.like(root.<String> get("faculty_first_name"), '%' + faculty_first_name + '%'));
      }
      String faculty_last_name = search.getFacultyLastName();
      if (faculty_last_name != null && !"".equals(faculty_last_name))
      {
         predicatesList.add(builder.like(root.<String> get("faculty_last_name"), '%' + faculty_last_name + '%'));
      }
      /*String hours_to_teach = search.getHoursToTeach();
      if (hours_to_teach != null && !"".equals(hours_to_teach))
      {
         predicatesList.add(builder.like(root.<String> get("hours_to_teach"), '%' + hours_to_teach + '%'));
      }
      String userId = search.getUserId();
      if (userId != null && !"".equals(userId))
      {
         predicatesList.add(builder.like(root.<String> get("userId"), '%' + userId + '%'));
      }
		*/
      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }


}