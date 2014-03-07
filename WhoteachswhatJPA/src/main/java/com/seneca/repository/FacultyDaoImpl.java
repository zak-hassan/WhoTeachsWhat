package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

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

   public Faculty getById(Long id)
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

   public void delete(Long id)
   {
      entityManager.remove(entityManager.find(Faculty.class, id));
      return;
   }

@Override
public List<Faculty> search(Faculty search, Long first, Integer maxItems) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Long getCount(Faculty search) {
	// TODO Auto-generated method stub
	return null;
}

/*
   public List<Faculty> search(Faculty search, Long first, Integer maxItems)
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
      String hours_to_teach = search.getHoursToTeach();
      if (hours_to_teach != null && !"".equals(hours_to_teach))
      {
         predicatesList.add(builder.like(root.<String> get("hours_to_teach"), '%' + hours_to_teach + '%'));
      }
      String password = search.getPassword();
      if (password != null && !"".equals(password))
      {
         predicatesList.add(builder.like(root.<String> get("password"), '%' + password + '%'));
      }
      String userId = search.getUserId();
      if (userId != null && !"".equals(userId))
      {
         predicatesList.add(builder.like(root.<String> get("userId"), '%' + userId + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
*/
}