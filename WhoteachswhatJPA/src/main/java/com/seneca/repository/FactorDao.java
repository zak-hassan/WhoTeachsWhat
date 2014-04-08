package com.seneca.repository;

import java.util.List;

import com.seneca.model.EvalFactor;
import com.seneca.model.Factor;


public interface FactorDao
{
   public List<Factor> getAll();

   public Factor getById(Integer id);
  
   public void update(Factor entity);

	public Factor create(Factor entity);

   public void delete(Integer id);

 //  public List<Factor> search(Factor search, Integer first, Integer maxItems);

   public Long getCount(Factor search);
}
