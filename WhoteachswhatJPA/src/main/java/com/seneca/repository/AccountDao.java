package com.seneca.repository;

import java.util.List;

import com.seneca.model.Account;

public interface AccountDao
{
   public List<Account> getAll();

   public Account getById(Integer id);

   public void update(Account entity);

   public void create(Account entity);

   public void delete(Integer id);

   public List<Account> search(Account search, Long first, Integer maxItems);

   public Long getCount(Account search);
}
