package com.seneca.repository;

import java.util.List;

import com.seneca.model.ResponsibilityToFaculty;

public interface ResponsibilityToFacultyDao
{
   public List<ResponsibilityToFaculty> getAll();

   public ResponsibilityToFaculty getById(Long id);

   public void update(ResponsibilityToFaculty entity);

   public void create(ResponsibilityToFaculty entity);

   public void delete(Long id);

   public List<ResponsibilityToFaculty> search(ResponsibilityToFaculty search, Long first, Integer maxItems);

   public Long getCount(ResponsibilityToFaculty search);
}
