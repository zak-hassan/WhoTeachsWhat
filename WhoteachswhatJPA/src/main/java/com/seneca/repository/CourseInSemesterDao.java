package com.seneca.repository;

import java.util.List;

import com.seneca.model.CoursesInSemester;

public interface CourseInSemesterDao
{
   public List<CoursesInSemester> getAll();

	public CoursesInSemester getById(Integer id);

   public void update(CoursesInSemester entity);

   public void create(CoursesInSemester entity);

	public void delete(Integer id);

	public List<CoursesInSemester> search(CoursesInSemester search,
			Integer first, Integer maxItems);

   public Long getCount(CoursesInSemester search);
}
