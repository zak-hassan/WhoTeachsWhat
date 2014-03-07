package com.example.WhoteachswhatJPA.mvc.root;


//@Controller
//@RequestMapping("/programs")
public class ProgramController
{

//   // Inject the appropriate data-access object for the given entity.
//
//   @Autowired
//   private ProgramDao programDao;
//
//   @RequestMapping(method = RequestMethod.GET)
//   public @ModelAttribute("programs")
//   List<Program> viewPrograms(@ModelAttribute("search")
//   Program search, @RequestParam(required = false)
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
//      Long count = this.programDao.getCount(search);
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
//      List<Program> programs = programDao.search(search, first, max);
//
//      return programs;
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "search")
//   public @ModelAttribute("programs")
//   List<Program> searchProgram(@ModelAttribute("search")
//   Program search, @RequestParam(required = false)
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
//      Long count = this.programDao.getCount(search);
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
//      List<Program> programs = programDao.search(search, first, max);
//
//      return programs;
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.GET)
//   public String viewProgram(@PathVariable("id")
//   Long id, Model model, @RequestParam(required = false)
//   String edit)
//   {
//      Program program = programDao.getById(id);
//      model.addAttribute("program", program);
//
//      if (edit == null || !edit.equals("true"))
//      {
//         return "viewProgram";
//      }
//
//      else
//      {
//         return "editProgram";
//      }
//   }
//
//   @RequestMapping(value = "/{id}", method = RequestMethod.POST)
//   public String updateProgram(@PathVariable("id")
//   Long id, Program program)
//   {
//      programDao.update(program);
//      return "viewProgram";
//   }
//
//   @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
//   public String deleteProgram(@PathVariable("id")
//   Long id, Program program)
//   {
//      programDao.delete(id);
//      return "redirect:/programs";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.GET)
//   public String createProgram(Model model, HttpSession session)
//   {
//
//      if (session.getAttribute("program") != null)
//      {
//         model.addAttribute("program", session.getAttribute("program"));
//         session.removeAttribute("program");
//      }
//      else
//      {
//         model.addAttribute("program", new Program());
//      }
//      return "createProgram";
//   }
//
//   @RequestMapping(value = "/create", method = RequestMethod.POST)
//   public String createProgram(Program program)
//   {
//      programDao.create(program);
//      return "redirect:/programs";
//   }
//
//   @RequestMapping(method = RequestMethod.POST, params = "create")
//   public String createNewProgram(@ModelAttribute("search")
//   Program search, HttpSession session)
//   {
//      session.setAttribute("program", search);
//      return "redirect:/programs/create";
//   }
}
