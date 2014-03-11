package com.seneca.repository;

import java.util.List;

import com.seneca.model.Responsibility;

public interface ResponsibilityDao
{
   public List<Responsibility> getAll();

   public Responsibility getById(Integer id);

   public void update(Responsibility entity);

   public void create(Responsibility entity);

   public void delete(Integer id);

   public List<Responsibility> search(Responsibility search, Integer first, Integer maxItems);

   public Long getCount(Responsibility search);
}
