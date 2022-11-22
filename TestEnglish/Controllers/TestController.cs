using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestEnglish.Controllers
{
    public class TestController : Controller
    {
        // GET: Test
        [Route("test")]
        public ActionResult Index()
        {
            return View();
        }

       
    }
}