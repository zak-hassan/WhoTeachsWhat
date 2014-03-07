package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/courses")
public class CourseController
{

//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private CourseDao courseDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("courses")
//   List<Course> viewCourses(@ModelAttribute("search")
//   Course search, @RequestParam(required = false)
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
//      Long count = this.courseDao.getCount(search);
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
//      List<Course> courses = courseDao.search(search, first, max);
//
//      return courses;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("courses")
//   List<Course> searchCourse(@ModelAttribute("search")
//   Course search, @RequestParam(required = false)
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
//      Long count = this.courseDao.getCount(search);
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
//      List<Course> courses = courseDao.search(search, first, max);
//
//      return courses;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewCourse(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      Course course = courseDao.getById(id);
//      model.addAttribute("course", course);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewCourse";
//      }
//
//      else
//      {
//         return "editCourse";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateCourse(@PathVariable("id")
//   Long id, Course course)
//   {
//      courseDao.update(course);
//      return "viewCourse";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteCourse(@PathVariable("id")
//   Long id, Course course)
//   {
//      courseDao.delete(id);
//      return "redirect:/courses";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createCourse(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("course") != null)
//      {
//         model.addAttribute("course", session.getAttribute("course"));
//         session.removeAttribute("course");
//      }
//      else
//      {
//         model.addAttribute("course", new Course());
//      }
//      return "createCourse";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createCourse(Course course)
//   {
//      courseDao.create(course);
//      return "redirect:/courses";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewCourse(@ModelAttribute("search")
//   Course search, HttpSession session)
//   {
//      session.setAttribute("course", search);
//      return "redirect:/courses/create";
//   }
}
