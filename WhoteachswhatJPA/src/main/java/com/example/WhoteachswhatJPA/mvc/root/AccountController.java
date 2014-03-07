package com.example.WhoteachswhatJPA.mvc.root;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
//@RequestMapping("/accounts")
public class AccountController
{

//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private AccountDao accountDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("accounts")
//   List<Account> viewAccounts(@ModelAttribute("search")
//   Account search, @RequestParam(required = false)
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
//      Long count = this.accountDao.getCount(search);
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
//      List<Account> accounts = accountDao.search(search, first, max);
//
//      return accounts;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("accounts")
//   List<Account> searchAccount(@ModelAttribute("search")
//   Account search, @RequestParam(required = false)
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
//      Long count = this.accountDao.getCount(search);
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
//      List<Account> accounts = accountDao.search(search, first, max);
//
//      return accounts;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewAccount(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      Account account = accountDao.getById(id);
//      model.addAttribute("account", account);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewAccount";
//      }
//
//      else
//      {
//         return "editAccount";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateAccount(@PathVariable("id")
//   Long id, Account account)
//   {
//      accountDao.update(account);
//      return "viewAccount";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteAccount(@PathVariable("id")
//   Long id, Account account)
//   {
//      accountDao.delete(id);
//      return "redirect:/accounts";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createAccount(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("account") != null)
//      {
//         model.addAttribute("account", session.getAttribute("account"));
//         session.removeAttribute("account");
//      }
//      else
//      {
//         model.addAttribute("account", new Account());
//      }
//      return "createAccount";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createAccount(Account account)
//   {
//      accountDao.create(account);
//      return "redirect:/accounts";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewAccount(@ModelAttribute("search")
//   Account search, HttpSession session)
//   {
//      session.setAttribute("account", search);
//      return "redirect:/accounts/create";
//   }
}
