using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TestEnglish.Filters;
using TestEnglish.Models;
using TestEnglish.Services;

namespace TestEnglish.ApiControllers
{
    public class ToeicSkillTestController : ApiBaseController
    {
        [HttpGet]
        public JsonResult GetListSkillTest(int part)
        {
            try
            {
                ToeicSkillTestService toeicSkillTestService = new ToeicSkillTestService();
                return Success(toeicSkillTestService.GetListToeicSkillTest(part));
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpGet]
        [ApiTokenRequire]
        public JsonResult GetSkillTest(string id)
        {
            try
            {
                ToeicSkillTestService toeicSkillTestService = new ToeicSkillTestService();

                return Success( new { TestInfo = toeicSkillTestService.GetToeicSkillTest(id), ListQuestion = toeicSkillTestService.GetListToeicSkillTestDescriptionQuestion(id) });
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpPost]
        [ApiTokenRequire]
        public JsonResult FinishTest(UserTestResult model) {
            try {
                string token = Request.Headers.Authorization?.ToString();
                if (string.IsNullOrEmpty(token)) return Unauthenticated();
                UserService userService = new UserService();
                User user = userService.GetUserByToken(token);
                if (user == null) return Unauthenticated();

                ToeicSkillTestService toeicSkillTestService = new ToeicSkillTestService();
                ToeicSkillTest toeicSkillTest = toeicSkillTestService.GetToeicSkillTestById(model.TestId);
                if (toeicSkillTest == null) throw new Exception(JsonResult.Message.ERROR_SYSTEM);
                model.TestName = toeicSkillTest.Name;
                model.UserTestResultId = Guid.NewGuid().ToString();
                model.UserId = user.UserId;
                model.TotalTime = toeicSkillTest.TotalTime;
                if (!userService.InsertUserTestResult(model)) throw new Exception(JsonResult.Message.ERROR_SYSTEM);

                return Success(model.UserTestResultId);
            }
            catch (Exception ex) {
                return Error(ex.Message);
            }
        }

        [HttpGet]
        [ApiTokenRequire]
        public JsonResult GetResult(string id) {
            try {
                string token = Request.Headers.Authorization?.ToString();
                if (string.IsNullOrEmpty(token)) return Unauthenticated();
                UserService userService = new UserService();
                User user = userService.GetUserByToken(token);
                if (user == null) return Unauthenticated();
                ToeicSkillTestService toeicSkillTestService = new ToeicSkillTestService();
                return Success(toeicSkillTestService.GetSkillTestResult(id));

            }
            catch (Exception ex) { return Error(ex.Message); }
        }

    }
}
