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

import com.seneca.model.UserAccount;

@Repository
@Transactional
public class UserAccountDaoImpl implements UserAccountDao
{
   @Autowired
   private EntityManager entityManager;

   @SuppressWarnings("unchecked")
   public List<UserAccount> getAll()
   {
      Query query = entityManager.createQuery("select e from " + "UserAccount" + " e");
      List<UserAccount> entities = query.getResultList();
      return entities;
   }

   public UserAccount getById(Long id)
   {
      return entityManager.find(UserAccount.class, id);
   }

   public void update(UserAccount entity)
   {
      entityManager.merge(entity);
      return;
   }

   public void create(UserAccount entity)
   {
      entityManager.persist(entity);
      return;
   }

   public void delete(Long id)
   {
      entityManager.remove(entityManager.find(UserAccount.class, id));
      return;
   }

   public List<UserAccount> search(UserAccount search, Long first, Integer maxItems)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the search

      CriteriaQuery<UserAccount> criteria = builder.createQuery(UserAccount.class);
      Root<UserAccount> root = criteria.from(UserAccount.class);
      TypedQuery<UserAccount> query = this.entityManager.createQuery(criteria.select(root).where(getSearchPredicates(root, search)));
      query.setFirstResult(first.intValue()).setMaxResults(maxItems);

      return query.getResultList();
   }

   public Long getCount(UserAccount search)
   {
      CriteriaBuilder builder = this.entityManager.getCriteriaBuilder();

      // Create and populate a query for the number of entities in the database

      CriteriaQuery<Long> countCriteria = builder.createQuery(Long.class);
      Root<UserAccount> root = countCriteria.from(UserAccount.class);
      countCriteria = countCriteria.select(builder.count(root)).where(getSearchPredicates(root, search));

      return this.entityManager.createQuery(countCriteria).getSingleResult();
   }

   private Predicate[] getSearchPredicates(Root<UserAccount> root, UserAccount search)
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
      String role = search.getRole();
      if (role != null && !"".equals(role))
      {
         predicatesList.add(builder.like(root.<String> get("role"), '%' + role + '%'));
      }

      return predicatesList.toArray(new Predicate[predicatesList.size()]);
   }
}