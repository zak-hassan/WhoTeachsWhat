package com.seneca.repository;

import java.util.List;

import com.seneca.model.Program;

public interface ProgramDao
{
   public List<Program> getAll();

	public Program getById(Integer id);

   public void update(Program entity);

	public Program create(Program entity);

	public void delete(Integer id);

	public List<Program> search(Program search, Integer first, Integer maxItems);

   public Long getCount(Program search);
}
