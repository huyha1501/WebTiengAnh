using Dapper;
using TestEnglish.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace TestEnglish.Services
{
    public class UserService : BaseService
    {
        public UserService() : base() { }
        public UserService(IDbConnection db) : base(db) { }
        public User GetUserByToken(string token, IDbTransaction transaction = null)
        {
            string query = "select * from [User] where Token = @token and Admin = 0";
            return this._connection.Query<User>(query, new { token }, transaction).FirstOrDefault();
        }
        public User GetUserAdminByToken(string token, IDbTransaction transaction = null)
        {
            string query = "select * from [User] where Token = @token where Admin = 1";
            return this._connection.Query<User>(query, new { token }, transaction).FirstOrDefault();
        }
        public bool CheckPhoneExist(string phone, IDbTransaction transaction = null)
        {
            string query = "select count(*) from [User] where Phone = @phone and Phone <> '' and Admin = 0";
            int count = this._connection.Query<int>(query, new { phone }, transaction).FirstOrDefault();
            return count > 0;
        }
        public bool CheckEmailExist(string email, IDbTransaction transaction = null)
        {
            string query = "select count(*) from [User] where Email = @email and Email <> '' and Admin = 0";
            int count = this._connection.Query<int>(query, new { email }, transaction).FirstOrDefault();
            return count > 0;
        }

        public bool InsertUser(User model, IDbTransaction transaction = null)
        {
            string insert = "INSERT INTO [dbo].[User] ([UserId], [Name], [Email], [Phone], [BirthDay], [Password], [CreateTime],[Enable],[Admin]) VALUES (@UserId, @Name, @Email, @Phone, @BirthDay, @Password, @CreateTime, @Enable, @Admin)";
            int status = this._connection.Execute(insert, model, transaction);
            return status > 0;
        }
        public User GetUserByEmail(string email, IDbTransaction transaction = null)
        {
            string query = "select * from [User] where Email=@email and Admin = 0";
            return this._connection.Query<User>(query, new { email }, transaction).FirstOrDefault();
        }
        public bool UpdateUserToken(string userId, string token, IDbTransaction transaction = null)
        {
            string query = "update [User] set Token=@token where UserId=@userId and Admin = 0";
            int status = this._connection.Execute(query, new { token = token, userId = userId }, transaction);
            return status > 0;
        }

        public bool RemoveUserToken(string token, IDbTransaction transaction = null)
        {
            string query = "update [User] set Token=NULL where Token=@token";
            int status = this._connection.Execute(query, new { token = token }, transaction);
            return status > 0;
        }
        public bool UpdatePassword (string userId, string newPassword, IDbTransaction transaction = null)
        {
            string update = "update [User] set Password = @newPassword where UserId = @userId";
            int status = this._connection.Execute(update, new { userId = userId, newPassword = newPassword }, transaction);
            return status > 0;
        }

        public bool UpdateAvatar(string userId, string avatar, IDbTransaction transaction = null)
        {
            string update = "update [User] set Avatar = @avatar where UserId = @userId";
            int status = this._connection.Execute(update, new { userId = userId, avatar = avatar }, transaction);
            return status > 0;
        }

        public bool UpdateUser(User model, IDbTransaction transaction = null)
        {
            string update = "update [User] set Name = @Name, Phone = @Phone, BirthDay = @BirthDay where UserId = @UserId";
            int status = this._connection.Execute(update, model, transaction);
            return status > 0;
        }


        public bool InsertUserTestResult(UserTestResult model, IDbTransaction transaction = null)
        {
            string query = "INSERT INTO [dbo].[UserTestResult] ([UserTestResultId],[TestId],[TestName],[TestSkill],[UserId],[ListQuestion],[TotalCorrect],[TotalQuestion],[CreateTime],[TotalTimeEslapse],[TypeTest],[TotalTime]) VALUES (@UserTestResultId,@TestId,@TestName,@TestSkill,@UserId,@ListQuestion,@TotalCorrect,@TotalQuestion,GETDATE(),@TotalTimeEslapse,@TypeTest,@TotalTime)";
            int status = this._connection.Execute(query, model, transaction);
            return status > 0;
        }

        public object GetUserTestResult(string id, IDbTransaction transaction = null)
        {
            string query = "select top 1 * from  [dbo].[UserTestResult] where UserTestResultId=@id";
            return this._connection.Query<object>(query, new { id }).FirstOrDefault();
        }


    }
}