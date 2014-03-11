package com.seneca.repository;

import java.util.List;

import com.seneca.model.TeachingType;

public interface TeachingTypeDao
{
   public List<TeachingType> getAll();

   public TeachingType getById(Integer id);

   public void update(TeachingType entity);

   public void create(TeachingType entity);

   public void delete(Integer id);

   public List<TeachingType> search(TeachingType search, Integer first, Integer maxItems);

   public Long getCount(TeachingType search);
}
