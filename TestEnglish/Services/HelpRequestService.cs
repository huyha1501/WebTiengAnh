using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class HelpRequestService: BaseService
    {
        public HelpRequestService() : base() { }
        public HelpRequestService(IDbConnection db) : base(db) { }
        public bool InsertQuestion(HelpRequest model)
        {
            string query = "INSERT INTO [dbo].[HelpRequest] ([Name],[Phone],[Email],[ContentRequest],[Status],[CreateTime]) VALUES (@Name,@Phone,@Email,@ContentRequest,@Status,@CreateTime)";
            int status = this._connection.Execute(query, model);
            return status > 0;
        }
    }
}