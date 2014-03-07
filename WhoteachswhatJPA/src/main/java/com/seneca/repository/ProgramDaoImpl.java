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

import com.seneca.model.Program;

@Repository
@Transactional
public class ProgramDaoImpl implements ProgramDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<Program> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "Program" + " e");
      List<Program> entities = query.getResultList();
      return entities;
   }

   public Program getById(Long id)
   {
      return entityManager.find(Program.class, id);
   }

   public void update(Program entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(Program entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Long id)
   {
      entityManager.remove(entityManager.find(Program.class, id));
      return;
   }

   public List<Program> search(Program search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<Program> criteria = builder.createQuery(Program.class);
      Root<Program> root = criteria.from(Program.class);
      TypedQuery<Program> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(Program search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<Program> root = countCriteria.from(Program.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<Program> root, Program search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String programCode = search.getProgramCode();
      if (programCode != null && !"".equals(programCode))
      {
         predicatesList.add(builder.like(root.<String> get("programCode"), '%' + programCode + '%'));
      }
      String programName = search.getProgramName();
      if (programName != null && !"".equals(programName))
      {
         predicatesList.add(builder.like(root.<String> get("programName"), '%' + programName + '%'));
      }
      int totalSemester = search.getTotalSemester();
      if (totalSemester != 0)
      {
         predicatesList.add(builder.equal(root.get("totalSemester"), totalSemester));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
}