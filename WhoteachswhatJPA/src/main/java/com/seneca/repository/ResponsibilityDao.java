package com.seneca.repository;

import java.util.List;

import com.seneca.model.Responsibility;

public interface ResponsibilityDao
{
   public List<Responsibility> getAll();

   public Responsibility getById(Long id);

   public void update(Responsibility entity);

   public void create(Responsibility entity);

   public void delete(Long id);

   public List<Responsibility> search(Responsibility search, Long first, Integer maxItems);

   public Long getCount(Responsibility search);
}
