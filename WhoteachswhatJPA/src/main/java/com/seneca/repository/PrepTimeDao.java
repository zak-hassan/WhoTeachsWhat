package com.seneca.repository;

import java.util.List;

import com.seneca.model.PrepTime;

public interface PrepTimeDao
{
   public List<PrepTime> getAll();

   public PrepTime getById(Long id);

   public void update(PrepTime entity);

   public void create(PrepTime entity);

   public void delete(Long id);

   public List<PrepTime> search(PrepTime search, Long first, Integer maxItems);

   public Long getCount(PrepTime search);
}
