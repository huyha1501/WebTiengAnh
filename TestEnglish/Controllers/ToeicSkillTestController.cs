using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestEnglish.Controllers
{
    public class ToeicSkillTestController : Controller
    {
        [Route("skill-test/{part}")]
        public ActionResult Index(int part)
        {
            ViewBag.Part = part;
            return View();
        }
   

        [Route("skill-test/question/{id}")]
        public ActionResult SkillTestQuestion(string id)
        {
            ViewBag.Id = id;
            return View();
        }
        [Route("skill-test/result/{id}")]
        public ActionResult Result(string id)
        {
            ViewBag.Id = id;
            return View();
        }

    }
}