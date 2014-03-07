package com.seneca.repository;

import java.util.List;

import com.seneca.model.UserAccount;

public interface UserAccountDao
{
   public List<UserAccount> getAll();

   public UserAccount getById(Long id);

   public void update(UserAccount entity);

   public void create(UserAccount entity);

   public void delete(Long id);

   public List<UserAccount> search(UserAccount search, Long first, Integer maxItems);

   public Long getCount(UserAccount search);
}
