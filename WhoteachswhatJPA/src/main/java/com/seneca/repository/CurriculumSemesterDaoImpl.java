package com.seneca.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.seneca.model.CurriculumSemester;

@Repository
@Transactional
public class CurriculumSemesterDaoImpl implements CurriculumSemesterDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<CurriculumSemester> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "CurriculumSemester" + " e");
      List<CurriculumSemester> entities = query.getResultList();
      return entities;
   }

	public CurriculumSemester getById(Integer id)
   {
      return entityManager.find(CurriculumSemester.class, id);
   }

   public void update(CurriculumSemester entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(CurriculumSemester entity)
   {
      entityManager.persist(entity);
      return;
   }

	public void delete(Integer id)
   {
      entityManager.remove(entityManager.find(CurriculumSemester.class, id));
      return;
   }
/*
   public List<CurriculumSemester> search(CurriculumSemester search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<CurriculumSemester> criteria = builder.createQuery(CurriculumSemester.class);
      Root<CurriculumSemester> root = criteria.from(CurriculumSemester.class);
      TypedQuery<CurriculumSemester> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(CurriculumSemester search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<CurriculumSemester> root = countCriteria.from(CurriculumSemester.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<CurriculumSemester> root, CurriculumSemester search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String name = search.getName();
      if (name != null && !"".equals(name))
      {
         predicatesList.add(builder.like(root.<String> get("name"), '%' + name + '%'));
      }
      int eval_factor = search.getEval_factor();
      if (eval_factor != 0)
      {
         predicatesList.add(builder.equal(root.get("eval_factor"), eval_factor));
      }
      String eval_name = search.getEval_name();
      if (eval_name != null && !"".equals(eval_name))
      {
         predicatesList.add(builder.like(root.<String> get("eval_name"), '%' + eval_name + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
*/

@Override
	public List<CurriculumSemester> search(CurriculumSemester search,
			Integer first,
		Integer maxItems) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public Long getCount(CurriculumSemester search) {
	// TODO Auto-generated method stub
	return null;
}
}