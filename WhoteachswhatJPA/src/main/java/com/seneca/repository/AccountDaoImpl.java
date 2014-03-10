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

import com.seneca.model.AccessLevel;
import com.seneca.model.Account;

@Repository
@Transactional
public class AccountDaoImpl implements AccountDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<Account> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "Account" + " e");
      List<Account> entities = query.getResultList();
      return entities;
   }

   public Account getById(Long id)
   {
      return entityManager.find(Account.class, id);
   }

   public void update(Account entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(Account entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Long id)
   {
      entityManager.remove(entityManager.find(Account.class, id));
      return;
   }

   public List<Account> search(Account search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<Account> criteria = builder.createQuery(Account.class);
      Root<Account> root = criteria.from(Account.class);
      TypedQuery<Account> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(Account search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<Account> root = countCriteria.from(Account.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<Account> root, Account search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();
      List<Predicate> predicatesList = new ArrayList<Predicate>();

      String username = search.getUsername();
      if (username != null && !"".equals(username))
      {
         predicatesList.add(builder.like(root.<String> get("username"), '%' + username + '%'));
      }
      String password = search.getPassword();
      if (password != null && !"".equals(password))
      {
         predicatesList.add(builder.like(root.<String> get("password"), '%' + password + '%'));
      }
     /*
        
      AccessLevel access_id = search.getAccessLevel();
      if (access_id != null && !"".equals(access_id))
      {
         predicatesList.add(builder.e(root.<String> get("access_id"), '%' + access_id.getAccessId() + '%'));
      }
 
 	*/
      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
}