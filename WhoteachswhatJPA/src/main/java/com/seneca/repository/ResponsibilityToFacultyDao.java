package com.seneca.repository;

import java.util.List;

import com.seneca.model.ResponsibilityToFaculty;

public interface ResponsibilityToFacultyDao
{
   public List<ResponsibilityToFaculty> getAll();

	public ResponsibilityToFaculty getById(Integer id);

   public void update(ResponsibilityToFaculty entity);

   public void create(ResponsibilityToFaculty entity);

	public void delete(Integer id);

	public List<ResponsibilityToFaculty> search(ResponsibilityToFaculty search,
			Integer first, Integer maxItems);

   public Long getCount(ResponsibilityToFaculty search);
}
