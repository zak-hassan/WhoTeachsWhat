package com.seneca.repository;

import java.util.List;

import com.seneca.model.Program;

public interface ProgramDao
{
   public List<Program> getAll();

   public Program getById(Long id);

   public void update(Program entity);

   public void create(Program entity);

   public void delete(Long id);

   public List<Program> search(Program search, Long first, Integer maxItems);

   public Long getCount(Program search);
}
