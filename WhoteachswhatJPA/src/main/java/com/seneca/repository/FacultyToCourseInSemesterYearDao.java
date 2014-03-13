package com.seneca.repository;

import java.util.List;

import com.seneca.model.FacultyToCourseInSemesterYear;

public interface FacultyToCourseInSemesterYearDao
{
   public List<FacultyToCourseInSemesterYear> getAll();

	public FacultyToCourseInSemesterYear getById(Integer id);

   public void update(FacultyToCourseInSemesterYear entity);

   public void create(FacultyToCourseInSemesterYear entity);

	public void delete(Integer id);

	public List<FacultyToCourseInSemesterYear> search(
			FacultyToCourseInSemesterYear search, Integer first,
			Integer maxItems);

   public Long getCount(FacultyToCourseInSemesterYear search);
}
