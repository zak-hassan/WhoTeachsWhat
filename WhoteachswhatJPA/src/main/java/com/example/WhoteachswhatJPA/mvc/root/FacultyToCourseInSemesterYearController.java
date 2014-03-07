package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/facultytocourseinsemesteryears")
public class FacultyToCourseInSemesterYearController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private FacultyToCourseInSemesterYearDao facultyToCourseInSemesterYearDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("facultytocourseinsemesteryears")
//   List<FacultyToCourseInSemesterYear> viewFacultyToCourseInSemesterYears(@ModelAttribute("search")
//   FacultyToCourseInSemesterYear search, @RequestParam(required = false)
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
//      Long count = this.facultyToCourseInSemesterYearDao.getCount(search);
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
//      List<FacultyToCourseInSemesterYear> facultytocourseinsemesteryears = facultyToCourseInSemesterYearDao.search(search, first, max);
//
//      return facultytocourseinsemesteryears;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("facultytocourseinsemesteryears")
//   List<FacultyToCourseInSemesterYear> searchFacultyToCourseInSemesterYear(@ModelAttribute("search")
//   FacultyToCourseInSemesterYear search, @RequestParam(required = false)
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
//      Long count = this.facultyToCourseInSemesterYearDao.getCount(search);
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
//      List<FacultyToCourseInSemesterYear> facultytocourseinsemesteryears = facultyToCourseInSemesterYearDao.search(search, first, max);
//
//      return facultytocourseinsemesteryears;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewFacultyToCourseInSemesterYear(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      FacultyToCourseInSemesterYear facultyToCourseInSemesterYear = facultyToCourseInSemesterYearDao.getById(id);
//      model.addAttribute("facultyToCourseInSemesterYear", facultyToCourseInSemesterYear);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewFacultyToCourseInSemesterYear";
//      }
//
//      else
//      {
//         return "editFacultyToCourseInSemesterYear";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateFacultyToCourseInSemesterYear(@PathVariable("id")
//   Long id, FacultyToCourseInSemesterYear facultyToCourseInSemesterYear)
//   {
//      facultyToCourseInSemesterYearDao.update(facultyToCourseInSemesterYear);
//      return "viewFacultyToCourseInSemesterYear";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteFacultyToCourseInSemesterYear(@PathVariable("id")
//   Long id, FacultyToCourseInSemesterYear facultyToCourseInSemesterYear)
//   {
//      facultyToCourseInSemesterYearDao.delete(id);
//      return "redirect:/facultytocourseinsemesteryears";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createFacultyToCourseInSemesterYear(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("facultyToCourseInSemesterYear") != null)
//      {
//         model.addAttribute("facultyToCourseInSemesterYear", session.getAttribute("facultyToCourseInSemesterYear"));
//         session.removeAttribute("facultyToCourseInSemesterYear");
//      }
//      else
//      {
//         model.addAttribute("facultyToCourseInSemesterYear", new FacultyToCourseInSemesterYear());
//      }
//      return "createFacultyToCourseInSemesterYear";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear)
//   {
//      facultyToCourseInSemesterYearDao.create(facultyToCourseInSemesterYear);
//      return "redirect:/facultytocourseinsemesteryears";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewFacultyToCourseInSemesterYear(@ModelAttribute("search")
//   FacultyToCourseInSemesterYear search, HttpSession session)
//   {
//      session.setAttribute("facultyToCourseInSemesterYear", search);
//      return "redirect:/facultytocourseinsemesteryears/create";
//   }
}
