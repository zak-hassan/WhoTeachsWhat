package com.seneca.repository;

import java.util.List;

import com.seneca.model.CurriculumSemester;

public interface CurriculumSemesterDao
{
   public List<CurriculumSemester> getAll();

	public CurriculumSemester getById(Integer id);

   public void update(CurriculumSemester entity);

   public void create(CurriculumSemester entity);

	public void delete(Integer id);

	public List<CurriculumSemester> search(CurriculumSemester search,
			Integer first, Integer maxItems);

   public Long getCount(CurriculumSemester search);
}
