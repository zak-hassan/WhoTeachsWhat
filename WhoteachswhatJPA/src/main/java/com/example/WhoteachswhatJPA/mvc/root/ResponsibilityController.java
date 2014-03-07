package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/responsibilitys")
public class ResponsibilityController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private ResponsibilityDao responsibilityDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("responsibilitys")
//   List<Responsibility> viewResponsibilitys(@ModelAttribute("search")
//   Responsibility search, @RequestParam(required = false)
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
//      Long count = this.responsibilityDao.getCount(search);
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
//      List<Responsibility> responsibilitys = responsibilityDao.search(search, first, max);
//
//      return responsibilitys;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("responsibilitys")
//   List<Responsibility> searchResponsibility(@ModelAttribute("search")
//   Responsibility search, @RequestParam(required = false)
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
//      Long count = this.responsibilityDao.getCount(search);
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
//      List<Responsibility> responsibilitys = responsibilityDao.search(search, first, max);
//
//      return responsibilitys;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewResponsibility(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      Responsibility responsibility = responsibilityDao.getById(id);
//      model.addAttribute("responsibility", responsibility);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewResponsibility";
//      }
//
//      else
//      {
//         return "editResponsibility";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateResponsibility(@PathVariable("id")
//   Long id, Responsibility responsibility)
//   {
//      responsibilityDao.update(responsibility);
//      return "viewResponsibility";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteResponsibility(@PathVariable("id")
//   Long id, Responsibility responsibility)
//   {
//      responsibilityDao.delete(id);
//      return "redirect:/responsibilitys";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createResponsibility(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("responsibility") != null)
//      {
//         model.addAttribute("responsibility", session.getAttribute("responsibility"));
//         session.removeAttribute("responsibility");
//      }
//      else
//      {
//         model.addAttribute("responsibility", new Responsibility());
//      }
//      return "createResponsibility";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createResponsibility(Responsibility responsibility)
//   {
//      responsibilityDao.create(responsibility);
//      return "redirect:/responsibilitys";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewResponsibility(@ModelAttribute("search")
//   Responsibility search, HttpSession session)
//   {
//      session.setAttribute("responsibility", search);
//      return "redirect:/responsibilitys/create";
//   }
}
