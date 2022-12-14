using TestEnglish.Models;
using TestEnglish.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;

namespace TestEnglish.Filters
{
    public class ApiTokenRequireAttribute : AuthorizationFilterAttribute
    {

        public HttpResponseMessage InitInvalidResponseMessage(string status = JsonResult.Status.UNAUTHORIZED, string message = JsonResult.Message.TOKEN_EXPIRED)
        {
            HttpResponseMessage httpResponseMessage = new HttpResponseMessage();
            httpResponseMessage.StatusCode = HttpStatusCode.OK;
            JsonResult jsonResult = new JsonResult() { message = message, status = status };
            httpResponseMessage.Content = new StringContent(jsonResult.ToString(), System.Text.Encoding.UTF8, "application/json");
            return httpResponseMessage;
        }

        public override void OnAuthorization(HttpActionContext filterContext)
        {
            try
            {
                if (filterContext.ActionDescriptor.GetCustomAttributes<AllowAnonymousAttribute>().Count > 0) return;
                if (filterContext.ControllerContext.ControllerDescriptor.GetCustomAttributes<AllowAnonymousAttribute>().Count > 0) return;
                if (filterContext.Request.Headers.Authorization == null)
                {
                    filterContext.Response = new HttpResponseMessage();
                    filterContext.Response = InitInvalidResponseMessage();
                }
                else
                {
                    string token = filterContext.Request.Headers.Authorization.Parameter;
                    string schema = filterContext.Request.Headers.Authorization.Scheme;
                    UserService userService = new UserService();
                    User user = userService.GetUserByToken(schema + " " + token);
                    if (user == null)
                    {
                        filterContext.Response = new HttpResponseMessage();
                        filterContext.Response = InitInvalidResponseMessage();
                    }else if(user.Enable == false)
                    {
                        filterContext.Response = new HttpResponseMessage();
                        filterContext.Response = InitInvalidResponseMessage();
                    }
                }
            }
            catch (Exception ex)
            {

            }
            base.OnAuthorization(filterContext);

        }
    }
}