package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/facultys")
public class FacultyController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private FacultyDao facultyDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("facultys")
//   List<Faculty> viewFacultys(@ModelAttribute("search")
//   Faculty search, @RequestParam(required = false)
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
//      Long count = this.facultyDao.getCount(search);
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
//      List<Faculty> facultys = facultyDao.search(search, first, max);
//
//      return facultys;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("facultys")
//   List<Faculty> searchFaculty(@ModelAttribute("search")
//   Faculty search, @RequestParam(required = false)
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
//      Long count = this.facultyDao.getCount(search);
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
//      List<Faculty> facultys = facultyDao.search(search, first, max);
//
//      return facultys;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewFaculty(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      Faculty faculty = facultyDao.getById(id);
//      model.addAttribute("faculty", faculty);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewFaculty";
//      }
//
//      else
//      {
//         return "editFaculty";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateFaculty(@PathVariable("id")
//   Long id, Faculty faculty)
//   {
//      facultyDao.update(faculty);
//      return "viewFaculty";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteFaculty(@PathVariable("id")
//   Long id, Faculty faculty)
//   {
//      facultyDao.delete(id);
//      return "redirect:/facultys";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createFaculty(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("faculty") != null)
//      {
//         model.addAttribute("faculty", session.getAttribute("faculty"));
//         session.removeAttribute("faculty");
//      }
//      else
//      {
//         model.addAttribute("faculty", new Faculty());
//      }
//      return "createFaculty";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createFaculty(Faculty faculty)
//   {
//      facultyDao.create(faculty);
//      return "redirect:/facultys";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewFaculty(@ModelAttribute("search")
//   Faculty search, HttpSession session)
//   {
//      session.setAttribute("faculty", search);
//      return "redirect:/facultys/create";
//   }
}
