package com.seneca.repository;

import java.util.List;

import com.seneca.model.AccessLevel;

public interface AccessLevelDao
{
   public List<AccessLevel> getAll();

   public AccessLevel getById(Long id);

   public void update(AccessLevel entity);

   public void create(AccessLevel entity);

   public void delete(Long id);

   public List<AccessLevel> search(AccessLevel search, Long first, Integer maxItems);

   public Long getCount(AccessLevel search);
}
