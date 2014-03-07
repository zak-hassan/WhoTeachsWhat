package com.example.WhoteachswhatJPA.mvc.root;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.seneca.model.AccessLevel;
import com.seneca.repository.AccessLevelDao;

@Controller
@RequestMapping("/accesslevels")
public class AccessLevelController
{

   // Inject the appropriate data-access object for the given entity.

   @Autowired
   private AccessLevelDao accessLevelDao;

   @RequestMapping(method = RequestMethod.GET)
   public @ModelAttribute("accesslevels")
   List<AccessLevel> viewAccessLevels(@ModelAttribute("search")
   AccessLevel search, @RequestParam(required = false)
   Long first, @RequestParam(required = false)
   Integer max, Model model)
   {
      if (max == null || max <= 0)
      {
         max = 10;
      }

      if (first == null || first < 0)
      {
         first = 0l;
      }

      Long count = this.accessLevelDao.getCount(search);

      Long pages = Math.round(count.doubleValue() / max);

      if (pages == 0)
      {
         pages++;
      }

      Long current = (first / max) + 1;

      model.addAttribute("first", first);
      model.addAttribute("last", first + max - 1);
      model.addAttribute("current", current);
      model.addAttribute("max", max);
      model.addAttribute("count", count);

      List<AccessLevel> accesslevels = accessLevelDao.search(search, first, max);

      return accesslevels;
   }

   @RequestMapping(method = RequestMethod.POST, params = "search")
   public @ModelAttribute("accesslevels")
   List<AccessLevel> searchAccessLevel(@ModelAttribute("search")
   AccessLevel search, @RequestParam(required = false)
   Long first, @RequestParam(required = false)
   Integer max, Model model)
   {
      if (max == null || max <= 0)
      {
         max = 10;
      }

      if (first == null || first < 0)
      {
         first = 0l;
      }

      Long count = this.accessLevelDao.getCount(search);

      Long pages = Math.round(count.doubleValue() / max);

      if (pages == 0)
      {
         pages++;
      }

      Long current = Math.round(first.doubleValue() * pages / count.doubleValue());

      if (current == 0)
      {
         current++;
      }

      model.addAttribute("first", first);
      model.addAttribute("last", first + max - 1);
      model.addAttribute("current", current);
      model.addAttribute("max", max);
      model.addAttribute("count", count);

      List<AccessLevel> accesslevels = accessLevelDao.search(search, first, max);

      return accesslevels;
   }

   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
   public String viewAccessLevel(@PathVariable("id")
   Long id, Model model, @RequestParam(required = false)
   String edit)
   {
      AccessLevel accessLevel = accessLevelDao.getById(id);
      model.addAttribute("accessLevel", accessLevel);

      if (edit == null || !edit.equals("true"))
      {
         return "viewAccessLevel";
      }

      else
      {
         return "editAccessLevel";
      }
   }

   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
   public String updateAccessLevel(@PathVariable("id")
   Long id, AccessLevel accessLevel)
   {
      accessLevelDao.update(accessLevel);
      return "viewAccessLevel";
   }

   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
   public String deleteAccessLevel(@PathVariable("id")
   Long id, AccessLevel accessLevel)
   {
      accessLevelDao.delete(id);
      return "redirect:/accesslevels";
   }

   @RequestMapping(value = "/create", method = RequestMethod.GET)
   public String createAccessLevel(Model model, HttpSession session)
   {

      if (session.getAttribute("accessLevel") != null)
      {
         model.addAttribute("accessLevel", session.getAttribute("accessLevel"));
         session.removeAttribute("accessLevel");
      }
      else
      {
         model.addAttribute("accessLevel", new AccessLevel());
      }
      return "createAccessLevel";
   }

   @RequestMapping(value = "/create", method = RequestMethod.POST)
   public String createAccessLevel(AccessLevel accessLevel)
   {
      accessLevelDao.create(accessLevel);
      return "redirect:/accesslevels";
   }

   @RequestMapping(method = RequestMethod.POST, params = "create")
   public String createNewAccessLevel(@ModelAttribute("search")
   AccessLevel search, HttpSession session)
   {
      session.setAttribute("accessLevel", search);
      return "redirect:/accesslevels/create";
   }
}
