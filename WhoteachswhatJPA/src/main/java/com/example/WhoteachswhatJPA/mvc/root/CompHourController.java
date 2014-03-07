package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/comphours")
public class CompHourController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private CompHourDao compHourDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("comphours")
//   List<CompHour> viewCompHours(@ModelAttribute("search")
//   CompHour search, @RequestParam(required = false)
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
//      Long count = this.compHourDao.getCount(search);
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
//      List<CompHour> comphours = compHourDao.search(search, first, max);
//
//      return comphours;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("comphours")
//   List<CompHour> searchCompHour(@ModelAttribute("search")
//   CompHour search, @RequestParam(required = false)
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
//      Long count = this.compHourDao.getCount(search);
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
//      List<CompHour> comphours = compHourDao.search(search, first, max);
//
//      return comphours;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewCompHour(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      CompHour compHour = compHourDao.getById(id);
//      model.addAttribute("compHour", compHour);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewCompHour";
//      }
//
//      else
//      {
//         return "editCompHour";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateCompHour(@PathVariable("id")
//   Long id, CompHour compHour)
//   {
//      compHourDao.update(compHour);
//      return "viewCompHour";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteCompHour(@PathVariable("id")
//   Long id, CompHour compHour)
//   {
//      compHourDao.delete(id);
//      return "redirect:/comphours";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createCompHour(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("compHour") != null)
//      {
//         model.addAttribute("compHour", session.getAttribute("compHour"));
//         session.removeAttribute("compHour");
//      }
//      else
//      {
//         model.addAttribute("compHour", new CompHour());
//      }
//      return "createCompHour";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createCompHour(CompHour compHour)
//   {
//      compHourDao.create(compHour);
//      return "redirect:/comphours";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewCompHour(@ModelAttribute("search")
//   CompHour search, HttpSession session)
//   {
//      session.setAttribute("compHour", search);
//      return "redirect:/comphours/create";
//   }
}
