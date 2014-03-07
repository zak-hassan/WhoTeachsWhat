package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/courseinsemesters")
public class CourseInSemesterController
{

//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private CourseInSemesterDao courseInSemesterDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("courseinsemesters")
//   List<CoursesInSemester> viewCourseInSemesters(@ModelAttribute("search")
//   CoursesInSemester search, @RequestParam(required = false)
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
//      Long count = this.courseInSemesterDao.getCount(search);
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
//      List<CoursesInSemester> courseinsemesters = courseInSemesterDao.search(search, first, max);
//
//      return courseinsemesters;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("courseinsemesters")
//   List<CoursesInSemester> searchCourseInSemester(@ModelAttribute("search")
//   CoursesInSemester search, @RequestParam(required = false)
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
//      Long count = this.courseInSemesterDao.getCount(search);
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
//      List<CoursesInSemester> courseinsemesters = courseInSemesterDao.search(search, first, max);
//
//      return courseinsemesters;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewCourseInSemester(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      CoursesInSemester courseInSemester = courseInSemesterDao.getById(id);
//      model.addAttribute("courseInSemester", courseInSemester);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewCourseInSemester";
//      }
//
//      else
//      {
//         return "editCourseInSemester";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateCourseInSemester(@PathVariable("id")
//   Long id, CoursesInSemester courseInSemester)
//   {
//      courseInSemesterDao.update(courseInSemester);
//      return "viewCourseInSemester";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteCourseInSemester(@PathVariable("id")
//   Long id, CoursesInSemester courseInSemester)
//   {
//      courseInSemesterDao.delete(id);
//      return "redirect:/courseinsemesters";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createCourseInSemester(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("courseInSemester") != null)
//      {
//         model.addAttribute("courseInSemester", session.getAttribute("courseInSemester"));
//         session.removeAttribute("courseInSemester");
//      }
//      else
//      {
//         model.addAttribute("courseInSemester", new CoursesInSemester());
//      }
//      return "createCourseInSemester";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createCourseInSemester(CoursesInSemester courseInSemester)
//   {
//      courseInSemesterDao.create(courseInSemester);
//      return "redirect:/courseinsemesters";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewCourseInSemester(@ModelAttribute("search")
//   CoursesInSemester search, HttpSession session)
//   {
//      session.setAttribute("courseInSemester", search);
//      return "redirect:/courseinsemesters/create";
//   }
}
