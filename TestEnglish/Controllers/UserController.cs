using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestEnglish.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        [Route("tai-khoan")]
        public ActionResult Index()
        {
            return View();
        }
    }
}