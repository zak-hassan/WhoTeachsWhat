package com.seneca.repository;

import java.util.List;

import com.seneca.model.EvalFactor;


public interface EvalFactorDao
{
   public List<EvalFactor> getAll();

   public EvalFactor getById(Integer id);
  
   public void update(EvalFactor entity);

   public void create(EvalFactor entity);

   public void delete(Integer id);

   public List<EvalFactor> search(EvalFactor search, Integer first, Integer maxItems);

   public Long getCount(EvalFactor search);
}
