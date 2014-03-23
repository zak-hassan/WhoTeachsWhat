package com.seneca.repository;

import java.util.List;

import com.seneca.model.Course;

public interface CourseDao
{
   public List<Course> getAll();

	public Course getById(Integer id);
   
   public Course getByCourseCode(String course_code);

   public void update(Course entity);

	public Course create(Course entity);

	public void delete(Integer id);

	public List<Course> search(Course search, Integer first, Integer maxItems);

   public Long getCount(Course search);
}
