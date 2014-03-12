package com.seneca.repository;

import java.util.List;

import com.seneca.model.PrepTime;

public interface PrepTimeDao
{
   public List<PrepTime> getAll();

   public PrepTime getById(Integer id);

   public void update(PrepTime entity);

   public void create(PrepTime entity);

   public void delete(Integer id);

   public List<PrepTime> search(PrepTime search, Integer first, Integer maxItems);

   public Long getCount(PrepTime search);
}
