package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/preptimes")
public class PrepTimeController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private PrepTimeDao prepTimeDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("preptimes")
//   List<PrepTime> viewPrepTimes(@ModelAttribute("search")
//   PrepTime search, @RequestParam(required = false)
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
//      Long count = this.prepTimeDao.getCount(search);
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
//      List<PrepTime> preptimes = prepTimeDao.search(search, first, max);
//
//      return preptimes;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("preptimes")
//   List<PrepTime> searchPrepTime(@ModelAttribute("search")
//   PrepTime search, @RequestParam(required = false)
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
//      Long count = this.prepTimeDao.getCount(search);
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
//      List<PrepTime> preptimes = prepTimeDao.search(search, first, max);
//
//      return preptimes;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewPrepTime(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      PrepTime prepTime = prepTimeDao.getById(id);
//      model.addAttribute("prepTime", prepTime);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewPrepTime";
//      }
//
//      else
//      {
//         return "editPrepTime";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updatePrepTime(@PathVariable("id")
//   Long id, PrepTime prepTime)
//   {
//      prepTimeDao.update(prepTime);
//      return "viewPrepTime";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deletePrepTime(@PathVariable("id")
//   Long id, PrepTime prepTime)
//   {
//      prepTimeDao.delete(id);
//      return "redirect:/preptimes";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createPrepTime(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("prepTime") != null)
//      {
//         model.addAttribute("prepTime", session.getAttribute("prepTime"));
//         session.removeAttribute("prepTime");
//      }
//      else
//      {
//         model.addAttribute("prepTime", new PrepTime());
//      }
//      return "createPrepTime";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createPrepTime(PrepTime prepTime)
//   {
//      prepTimeDao.create(prepTime);
//      return "redirect:/preptimes";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewPrepTime(@ModelAttribute("search")
//   PrepTime search, HttpSession session)
//   {
//      session.setAttribute("prepTime", search);
//      return "redirect:/preptimes/create";
//   }
}
