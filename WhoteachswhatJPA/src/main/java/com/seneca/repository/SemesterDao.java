package com.seneca.repository;

import java.util.List;

import com.seneca.model.Semester;

public interface SemesterDao
{
   public List<Semester> getAll();

   public Semester getById(Long id);

   public void update(Semester entity);

   public void create(Semester entity);

   public void delete(Long id);

   public List<Semester> search(Semester search, Long first, Integer maxItems);

   public Long getCount(Semester search);
}
