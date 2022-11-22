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
    public class HelpRequestController : ApiBaseController
    {
        [HttpPost]
        public JsonResult InsertQuestion(HelpRequest model)
        {
            try
            {
                HelpRequestService helpRequestService = new HelpRequestService();
                model.CreateTime = DateTime.Now;
                model.Status = HelpRequest.EnumStatus.NEW_REQUEST;
                if (!helpRequestService.InsertQuestion(model)) return Error("Yêu cầu không thành công!");
                return Success("Gửi yêu cầu thành công!");
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}
