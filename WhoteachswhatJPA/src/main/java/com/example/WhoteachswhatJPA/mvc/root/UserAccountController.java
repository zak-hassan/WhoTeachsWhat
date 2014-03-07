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

import com.seneca.model.UserAccount;
import com.seneca.repository.UserAccountDao;

//@Controller
//@RequestMapping("/useraccounts")
public class UserAccountController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private UserAccountDao userAccountDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("useraccounts")
//   List<UserAccount> viewUserAccounts(@ModelAttribute("search")
//   UserAccount search, @RequestParam(required = false)
//   Long first, @RequestParam(required = false)
//   Integer max, Model model)
//   {
//      if (max == null || max <= 0)
//      {
//         max = 10;
//      }
//
//      if (first == null || first < 0)
//      {
//         first = 0l;
//      }
//
//      Long count = this.userAccountDao.getCount(search);
//
//      Long pages = Math.round(count.doubleValue() / max);
//
//      if (pages == 0)
//      {
//         pages++;
//      }
//
//      Long current = (first / max) + 1;
//
//      model.addAttribute("first", first);
//      model.addAttribute("last", first + max - 1);
//      model.addAttribute("current", current);
//      model.addAttribute("max", max);
//      model.addAttribute("count", count);
//
//      List<UserAccount> useraccounts = userAccountDao.search(search, first, max);
//
//      return useraccounts;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("useraccounts")
//   List<UserAccount> searchUserAccount(@ModelAttribute("search")
//   UserAccount search, @RequestParam(required = false)
//   Long first, @RequestParam(required = false)
//   Integer max, Model model)
//   {
//      if (max == null || max <= 0)
//      {
//         max = 10;
//      }
//
//      if (first == null || first < 0)
//      {
//         first = 0l;
//      }
//
//      Long count = this.userAccountDao.getCount(search);
//
//      Long pages = Math.round(count.doubleValue() / max);
//
//      if (pages == 0)
//      {
//         pages++;
//      }
//
//      Long current = Math.round(first.doubleValue() * pages / count.doubleValue());
//
//      if (current == 0)
//      {
//         current++;
//      }
//
//      model.addAttribute("first", first);
//      model.addAttribute("last", first + max - 1);
//      model.addAttribute("current", current);
//      model.addAttribute("max", max);
//      model.addAttribute("count", count);
//
//      List<UserAccount> useraccounts = userAccountDao.search(search, first, max);
//
//      return useraccounts;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewUserAccount(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      UserAccount userAccount = userAccountDao.getById(id);
//      model.addAttribute("userAccount", userAccount);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewUserAccount";
//      }
//
//      else
//      {
//         return "editUserAccount";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateUserAccount(@PathVariable("id")
//   Long id, UserAccount userAccount)
//   {
//      userAccountDao.update(userAccount);
//      return "viewUserAccount";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteUserAccount(@PathVariable("id")
//   Long id, UserAccount userAccount)
//   {
//      userAccountDao.delete(id);
//      return "redirect:/useraccounts";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createUserAccount(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("userAccount") != null)
//      {
//         model.addAttribute("userAccount", session.getAttribute("userAccount"));
//         session.removeAttribute("userAccount");
//      }
//      else
//      {
//         model.addAttribute("userAccount", new UserAccount());
//      }
//      return "createUserAccount";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createUserAccount(UserAccount userAccount)
//   {
//      userAccountDao.create(userAccount);
//      return "redirect:/useraccounts";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewUserAccount(@ModelAttribute("search")
//   UserAccount search, HttpSession session)
//   {
//      session.setAttribute("userAccount", search);
//      return "redirect:/useraccounts/create";
//   }
}
