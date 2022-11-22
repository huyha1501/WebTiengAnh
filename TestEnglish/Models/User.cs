using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class User
    {
        public string UserId { get; set; }
        public string Avatar { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string BirthDay { get; set; }
        public string Password { get; set; }
        public string Token { get; set; }
        public DateTime CreateTime { get; set; }
        public bool Enable { get; set; }
        public bool Admin { get; set; }
    }
    public class UserLoginPost
    {
        public string Email { get; set; }
        public string Password { get; set; }
    }
    public class UserRequest
    {
        public string Password { get; set; }
        public string NewPassword { get; set; }
    }
    public class UserUpdateModel
    {
        public string UserId { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string BirthDay { get; set; }
    }
}