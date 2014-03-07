package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/teachingtypes")
public class TeachingTypeController
{

//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private TeachingTypeDao teachingTypeDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("teachingtypes")
//   List<TeachingType> viewTeachingTypes(@ModelAttribute("search")
//   TeachingType search, @RequestParam(required = false)
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
//      Long count = this.teachingTypeDao.getCount(search);
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
//      List<TeachingType> teachingtypes = teachingTypeDao.search(search, first, max);
//
//      return teachingtypes;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("teachingtypes")
//   List<TeachingType> searchTeachingType(@ModelAttribute("search")
//   TeachingType search, @RequestParam(required = false)
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
//      Long count = this.teachingTypeDao.getCount(search);
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
//      List<TeachingType> teachingtypes = teachingTypeDao.search(search, first, max);
//
//      return teachingtypes;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewTeachingType(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      TeachingType teachingType = teachingTypeDao.getById(id);
//      model.addAttribute("teachingType", teachingType);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewTeachingType";
//      }
//
//      else
//      {
//         return "editTeachingType";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateTeachingType(@PathVariable("id")
//   Long id, TeachingType teachingType)
//   {
//      teachingTypeDao.update(teachingType);
//      return "viewTeachingType";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteTeachingType(@PathVariable("id")
//   Long id, TeachingType teachingType)
//   {
//      teachingTypeDao.delete(id);
//      return "redirect:/teachingtypes";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createTeachingType(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("teachingType") != null)
//      {
//         model.addAttribute("teachingType", session.getAttribute("teachingType"));
//         session.removeAttribute("teachingType");
//      }
//      else
//      {
//         model.addAttribute("teachingType", new TeachingType());
//      }
//      return "createTeachingType";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createTeachingType(TeachingType teachingType)
//   {
//      teachingTypeDao.create(teachingType);
//      return "redirect:/teachingtypes";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewTeachingType(@ModelAttribute("search")
//   TeachingType search, HttpSession session)
//   {
//      session.setAttribute("teachingType", search);
//      return "redirect:/teachingtypes/create";
//   }
}
