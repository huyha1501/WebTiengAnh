using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TestEnglish.Services;
using TestEnglish.Models;

namespace TestEnglish.ApiControllers
{
    public class CourseController : ApiBaseController
    {
        [HttpGet]
        public JsonResult GetListCourse()
        {
            try
            {
                CourseService courseService = new CourseService();
                Course course = new Course();
                List<Course> lscourse = courseService.GetListCourse();
                return Success(lscourse);           
            }
            catch(Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}
