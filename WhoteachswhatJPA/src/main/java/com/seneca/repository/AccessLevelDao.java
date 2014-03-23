package com.seneca.repository;

import java.util.List;

import com.seneca.model.AccessLevel;

public interface AccessLevelDao
{
   public List<AccessLevel> getAll();

   public AccessLevel getById(Integer level);

   public void update(AccessLevel entity);

	public AccessLevel create(AccessLevel entity);

   public void delete(Integer id);

   public List<AccessLevel> search(AccessLevel search, Integer first, Integer maxItems);

   public Long getCount(AccessLevel search);
}
