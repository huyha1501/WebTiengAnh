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
    public class FeedBackController : ApiBaseController
    {
        [HttpGet]
        public JsonResult GetListFeedBack()
        {
            try
            {
                FeedbackService feedbackService = new FeedbackService();
              //  List<FeedBackView> lsfeedback = feedbackService.GetListFeedback;
                return Success();
            }
            catch(Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}
