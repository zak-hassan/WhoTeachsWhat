package com.seneca.repository;

import java.util.List;

import com.seneca.model.Course;

public interface CourseDao
{
   public List<Course> getAll();

   public Course getById(Long id);
   
   public Course getByCourseCode(String course_code);

   public void update(Course entity);

   public void create(Course entity);

   public void delete(Long id);

   public List<Course> search(Course search, Long first, Integer maxItems);

   public Long getCount(Course search);
}
