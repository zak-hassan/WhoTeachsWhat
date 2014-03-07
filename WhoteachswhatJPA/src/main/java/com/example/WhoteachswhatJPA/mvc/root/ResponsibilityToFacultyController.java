package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/responsibilitytofacultys")
public class ResponsibilityToFacultyController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private ResponsibilityToFacultyDao responsibilityToFacultyDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("responsibilitytofacultys")
//   List<ResponsibilityToFaculty> viewResponsibilityToFacultys(@ModelAttribute("search")
//   ResponsibilityToFaculty search, @RequestParam(required = false)
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
//      Long count = this.responsibilityToFacultyDao.getCount(search);
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
//      List<ResponsibilityToFaculty> responsibilitytofacultys = responsibilityToFacultyDao.search(search, first, max);
//
//      return responsibilitytofacultys;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("responsibilitytofacultys")
//   List<ResponsibilityToFaculty> searchResponsibilityToFaculty(@ModelAttribute("search")
//   ResponsibilityToFaculty search, @RequestParam(required = false)
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
//      Long count = this.responsibilityToFacultyDao.getCount(search);
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
//      List<ResponsibilityToFaculty> responsibilitytofacultys = responsibilityToFacultyDao.search(search, first, max);
//
//      return responsibilitytofacultys;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewResponsibilityToFaculty(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      ResponsibilityToFaculty responsibilityToFaculty = responsibilityToFacultyDao.getById(id);
//      model.addAttribute("responsibilityToFaculty", responsibilityToFaculty);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewResponsibilityToFaculty";
//      }
//
//      else
//      {
//         return "editResponsibilityToFaculty";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateResponsibilityToFaculty(@PathVariable("id")
//   Long id, ResponsibilityToFaculty responsibilityToFaculty)
//   {
//      responsibilityToFacultyDao.update(responsibilityToFaculty);
//      return "viewResponsibilityToFaculty";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteResponsibilityToFaculty(@PathVariable("id")
//   Long id, ResponsibilityToFaculty responsibilityToFaculty)
//   {
//      responsibilityToFacultyDao.delete(id);
//      return "redirect:/responsibilitytofacultys";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createResponsibilityToFaculty(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("responsibilityToFaculty") != null)
//      {
//         model.addAttribute("responsibilityToFaculty", session.getAttribute("responsibilityToFaculty"));
//         session.removeAttribute("responsibilityToFaculty");
//      }
//      else
//      {
//         model.addAttribute("responsibilityToFaculty", new ResponsibilityToFaculty());
//      }
//      return "createResponsibilityToFaculty";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createResponsibilityToFaculty(ResponsibilityToFaculty responsibilityToFaculty)
//   {
//      responsibilityToFacultyDao.create(responsibilityToFaculty);
//      return "redirect:/responsibilitytofacultys";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewResponsibilityToFaculty(@ModelAttribute("search")
//   ResponsibilityToFaculty search, HttpSession session)
//   {
//      session.setAttribute("responsibilityToFaculty", search);
//      return "redirect:/responsibilitytofacultys/create";
//   }
}
