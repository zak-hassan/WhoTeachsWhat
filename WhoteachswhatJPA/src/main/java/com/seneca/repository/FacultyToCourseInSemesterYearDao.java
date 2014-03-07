package com.seneca.repository;

import java.util.List;

import com.seneca.model.FacultyToCourseInSemesterYear;

public interface FacultyToCourseInSemesterYearDao
{
   public List<FacultyToCourseInSemesterYear> getAll();

   public FacultyToCourseInSemesterYear getById(Long id);

   public void update(FacultyToCourseInSemesterYear entity);

   public void create(FacultyToCourseInSemesterYear entity);

   public void delete(Long id);

   public List<FacultyToCourseInSemesterYear> search(FacultyToCourseInSemesterYear search, Long first, Integer maxItems);

   public Long getCount(FacultyToCourseInSemesterYear search);
}
