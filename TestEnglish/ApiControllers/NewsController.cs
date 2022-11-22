using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TestEnglish.Models;
using TestEnglish.Services;

namespace TestEnglish.ApiControllers
{
    public class NewsController : ApiBaseController
    {
        [HttpGet]   
        public JsonResult GetListNews()
        {
            try
            {
                NewsService newsService = new NewsService();
                List<News> lsnews = newsService.GetListNews();
                return Success(lsnews);
            }
            catch(Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}
