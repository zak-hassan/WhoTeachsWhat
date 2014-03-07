package com.example.WhoteachswhatJPA.mvc.root;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class IndexController
{
   @RequestMapping(method = RequestMethod.GET)
   public String rootView()
   {
      return "/index";
   }

   @RequestMapping(value = "error", method = RequestMethod.GET)
   public String errorView()
   {
      return "/error";
   }
}