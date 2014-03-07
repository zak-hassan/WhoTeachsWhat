package com.seneca.repository;

import java.util.List;

import com.seneca.model.CoursesInSemester;

public interface CourseInSemesterDao
{
   public List<CoursesInSemester> getAll();

   public CoursesInSemester getById(Long id);

   public void update(CoursesInSemester entity);

   public void create(CoursesInSemester entity);

   public void delete(Long id);

   public List<CoursesInSemester> search(CoursesInSemester search, Long first, Integer maxItems);

   public Long getCount(CoursesInSemester search);
}
