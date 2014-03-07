package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/curriculumsemesters")
public class CurriculumSemesterController
{
//
//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private CurriculumSemesterDao curriculumSemesterDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("curriculumsemesters")
//   List<CurriculumSemester> viewCurriculumSemesters(@ModelAttribute("search")
//   CurriculumSemester search, @RequestParam(required = false)
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
//      Long count = this.curriculumSemesterDao.getCount(search);
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
//      List<CurriculumSemester> curriculumsemesters = curriculumSemesterDao.search(search, first, max);
//
//      return curriculumsemesters;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("curriculumsemesters")
//   List<CurriculumSemester> searchCurriculumSemester(@ModelAttribute("search")
//   CurriculumSemester search, @RequestParam(required = false)
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
//      Long count = this.curriculumSemesterDao.getCount(search);
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
//      List<CurriculumSemester> curriculumsemesters = curriculumSemesterDao.search(search, first, max);
//
//      return curriculumsemesters;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewCurriculumSemester(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      CurriculumSemester curriculumSemester = curriculumSemesterDao.getById(id);
//      model.addAttribute("curriculumSemester", curriculumSemester);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewCurriculumSemester";
//      }
//
//      else
//      {
//         return "editCurriculumSemester";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateCurriculumSemester(@PathVariable("id")
//   Long id, CurriculumSemester curriculumSemester)
//   {
//      curriculumSemesterDao.update(curriculumSemester);
//      return "viewCurriculumSemester";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteCurriculumSemester(@PathVariable("id")
//   Long id, CurriculumSemester curriculumSemester)
//   {
//      curriculumSemesterDao.delete(id);
//      return "redirect:/curriculumsemesters";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createCurriculumSemester(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("curriculumSemester") != null)
//      {
//         model.addAttribute("curriculumSemester", session.getAttribute("curriculumSemester"));
//         session.removeAttribute("curriculumSemester");
//      }
//      else
//      {
//         model.addAttribute("curriculumSemester", new CurriculumSemester());
//      }
//      return "createCurriculumSemester";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createCurriculumSemester(CurriculumSemester curriculumSemester)
//   {
//      curriculumSemesterDao.create(curriculumSemester);
//      return "redirect:/curriculumsemesters";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewCurriculumSemester(@ModelAttribute("search")
//   CurriculumSemester search, HttpSession session)
//   {
//      session.setAttribute("curriculumSemester", search);
//      return "redirect:/curriculumsemesters/create";
//   }
}
