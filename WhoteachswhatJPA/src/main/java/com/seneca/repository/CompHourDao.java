package com.seneca.repository;

import java.util.List;

import com.seneca.model.CompHour;

public interface CompHourDao
{
   public List<CompHour> getAll();

   public CompHour getById(Long id);

   public void update(CompHour entity);

   public void create(CompHour entity);

   public void delete(Long id);

   public List<CompHour> search(CompHour search, Long first, Integer maxItems);

   public Long getCount(CompHour search);
}
