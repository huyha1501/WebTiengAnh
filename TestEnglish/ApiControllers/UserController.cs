using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TestEnglish.Filters;
using TestEnglish.Models;
using TestEnglish.Providers;
using TestEnglish.Services;

namespace TestEnglish.ApiControllers
{
    public class UserController : ApiBaseController
    {
        [HttpPost]
        [AllowAnonymous]
        public JsonResult Register(User userRequest)
        {
            try
            {
                using (var connect = BaseService.Connect())
                {
                    connect.Open();
                    using (var transaction = connect.BeginTransaction())
                    {
                        UserService userService = new UserService(connect);
                        if (string.IsNullOrEmpty(userRequest.Name)) return Error("Họ tên không được để trống.");
                        if (string.IsNullOrEmpty(userRequest.Email)) return Error("Email không được để trống.");
                        if (string.IsNullOrEmpty(userRequest.Phone)) return Error("Số điện thoại không được để trống.");
                        if (string.IsNullOrEmpty(userRequest.Password)) return Error("Mật khẩu không được để trống.");

                        User user = new User();
                        user.UserId = Guid.NewGuid().ToString();
                        user.Name = userRequest.Name.Trim();
                        if (userService.CheckEmailExist(userRequest.Email, transaction)) return Error("Email đã tồn tại.");
                        user.Email = userRequest.Email.Trim();
                        if (userService.CheckPhoneExist(userRequest.Phone, transaction)) return Error("Số điện thoại đã tồn tại.");
                        user.Phone = userRequest.Phone.Trim();
                        user.Password = SecurityProvider.EncodePassword(user.UserId, userRequest.Password);
                        user.CreateTime = DateTime.Now;
                        user.Enable = true;
                        user.Admin = false;
                        if (!userService.InsertUser(user, transaction)) return Error(JsonResult.Message.ERROR_SYSTEM);

                        transaction.Commit();
                        return Success();
                    }
                }
            }
            catch (Exception ex)
            {
                return Error();
            }
        }

        [HttpGet]
        [ApiTokenRequire]
        public JsonResult GetUserInfo()
        {
            try
            {
                string token = Request.Headers.Authorization?.ToString();
                if (string.IsNullOrEmpty(token)) throw new Exception();

                UserService userService = new UserService();
                User user = userService.GetUserByToken(token);
                if (user == null) throw new Exception();

                return Success(new
                {
                    user.UserId,
                    user.Name,
                    user.Email,
                    user.BirthDay,
                    user.Avatar, 
                    user.Phone
                });
            }
            catch (Exception ex)
            {
                return Unauthenticated();
            }
        }

        [HttpPost]
        public JsonResult Login(UserLoginPost model)
        {
            try
            {
                using (var connect = BaseService.Connect())
                {
                    connect.Open();
                    using (var transaction = connect.BeginTransaction())
                    {
                        if (string.IsNullOrEmpty(model.Email) || string.IsNullOrEmpty(model.Password)) return Error(JsonResult.Message.LOGIN_ACCOUNT_OR_PASSWORD_EMPTY);
                        UserService userService = new UserService(connect);

                        User userLogin = userService.GetUserByEmail(model.Email, transaction);
                        if (userLogin == null) return Error(JsonResult.Message.LOGIN_ACCOUNT_OR_PASSWORD_INCORRECT);

                        if (userLogin.Enable == false) return Error("Tài khoản này đã bị khóa.");

                        string password = SecurityProvider.EncodePassword(userLogin.UserId, model.Password);
                        if (!userLogin.Password.Equals(password)) return Error(JsonResult.Message.LOGIN_ACCOUNT_OR_PASSWORD_INCORRECT);

                        string deviceId = Guid.NewGuid().ToString().ToLower();
                        string token = SecurityProvider.CreateToken(userLogin.UserId, userLogin.Password, deviceId);

                        if (!userService.UpdateUserToken(userLogin.UserId, token, transaction)) return Error(JsonResult.Message.ERROR_SYSTEM);
                        transaction.Commit();
                        return Success(new { token, deviceId });
                    }
                }
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpGet]
        [ApiTokenRequire]
        public JsonResult Logout()
        {
            try
            {
                string token = Request.Headers.Authorization.ToString();
                UserService userService = new UserService();
                if (!userService.RemoveUserToken(token)) return Error();
                return Success();
            }
            catch (Exception ex)
            {
                return Error();
            }
        }

        [HttpPost]
        [ApiTokenRequire]
        public JsonResult ChangePassword(UserRequest userRequest)
        {
            try
            {
                using (var connect = BaseService.Connect())
                {
                    connect.Open();
                    using (var transaction = connect.BeginTransaction())
                    {
                        try
                        {
                            string token = Request.Headers.Authorization.ToString();
                            UserService userService = new UserService(connect);
                            User user = userService.GetUserByToken(token, transaction);
                            if (user == null) return Error("Người dùng không tồn tại.");
                            string password = SecurityProvider.EncodePassword(user.UserId, userRequest.Password);
                            if (!user.Password.Equals(password)) return Error("Mật khẩu cũ không đúng.");
                            else
                            {
                                userRequest.NewPassword = SecurityProvider.EncodePassword(user.UserId, userRequest.NewPassword);
                                if (!userService.UpdatePassword(user.UserId, userRequest.NewPassword, transaction)) return Error();
                                transaction.Commit();
                                return Success();
                            }
                        }
                        catch (Exception ex)
                        {
                            transaction.Rollback();
                            return Error(ex.Message);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return Error();
            }
        }

        [HttpPost]
        [ApiTokenRequire]
        public JsonResult ChangeAvatar(string avatar)
        {
            using (var connect = BaseService.Connect())
            {
                connect.Open();
                using (var transaction = connect.BeginTransaction())
                {
                    string token = Request.Headers.Authorization.ToString();
                    UserService userService = new UserService(connect);
                    User user = userService.GetUserByToken(token, transaction);
                    if (user == null) return Unauthenticated();
                    if (!string.IsNullOrEmpty(avatar))
                    {
                        string filename = Guid.NewGuid().ToString() + ".jpg";
                        var path = System.Web.HttpContext.Current.Server.MapPath(Constant.AVATAR_USER_PATH + filename);
                        HelperProvider.Base64ToImage(avatar, path);
                        if (!HelperProvider.DeleteFile(user.Avatar)) return Error();
                        user.Avatar = Constant.AVATAR_USER_URL + filename;
                    }
                    if (!userService.UpdateAvatar(user.UserId, user.Avatar, transaction)) return Error(); 
                    transaction.Commit();
                    return Success();
                }
            }
        }

        [HttpPost]
        [ApiTokenRequire]
        public JsonResult UpdateUser(UserUpdateModel model)
        {
            try
            {
                using(var connect = BaseService.Connect())
                {
                    connect.Open();
                    using(var trasaction = connect.BeginTransaction())
                    {
                        string token = Request.Headers.Authorization.ToString();
                        UserService userService = new UserService(connect);
                        User user = userService.GetUserByToken(token, trasaction);
                        if (user == null) return Unauthenticated();

                        user.Name = model.Name.Trim();
                        user.Phone = model.Phone.Trim();
                        user.BirthDay = model.BirthDay.Trim();
                        if (!userService.UpdateUser(user)) return Error();
                        trasaction.Commit();
                        return Success();
                    }
                }
            }
            catch (Exception ex)
            {
                return Error();
            }
        }
    }
}
