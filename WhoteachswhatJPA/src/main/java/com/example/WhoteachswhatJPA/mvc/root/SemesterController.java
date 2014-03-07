package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/semesters")
public class SemesterController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private SemesterDao semesterDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("semesters")
//   List<Semester> viewSemesters(@ModelAttribute("search")
//   Semester search, @RequestParam(required = false)
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
//      Long count = this.semesterDao.getCount(search);
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
//      List<Semester> semesters = semesterDao.search(search, first, max);
//
//      return semesters;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("semesters")
//   List<Semester> searchSemester(@ModelAttribute("search")
//   Semester search, @RequestParam(required = false)
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
//      Long count = this.semesterDao.getCount(search);
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
//      List<Semester> semesters = semesterDao.search(search, first, max);
//
//      return semesters;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewSemester(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      Semester semester = semesterDao.getById(id);
//      model.addAttribute("semester", semester);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewSemester";
//      }
//
//      else
//      {
//         return "editSemester";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateSemester(@PathVariable("id")
//   Long id, Semester semester)
//   {
//      semesterDao.update(semester);
//      return "viewSemester";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteSemester(@PathVariable("id")
//   Long id, Semester semester)
//   {
//      semesterDao.delete(id);
//      return "redirect:/semesters";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createSemester(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("semester") != null)
//      {
//         model.addAttribute("semester", session.getAttribute("semester"));
//         session.removeAttribute("semester");
//      }
//      else
//      {
//         model.addAttribute("semester", new Semester());
//      }
//      return "createSemester";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createSemester(Semester semester)
//   {
//      semesterDao.create(semester);
//      return "redirect:/semesters";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewSemester(@ModelAttribute("search")
//   Semester search, HttpSession session)
//   {
//      session.setAttribute("semester", search);
//      return "redirect:/semesters/create";
//   }
}
