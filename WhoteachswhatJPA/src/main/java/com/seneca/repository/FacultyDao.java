package com.seneca.repository;

import java.util.List;

import com.seneca.model.Faculty;

public interface FacultyDao
{
   public List<Faculty> getAll();

   public Faculty getById(Integer id);

   public void update(Faculty entity);

   public void create(Faculty entity);

   public void delete(Integer id);

   public List<Faculty> search(Faculty search, Integer first, Integer maxItems);

   public Long getCount(Faculty search);
}
