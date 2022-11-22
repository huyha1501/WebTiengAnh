using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class FeedbackService : BannerService
    {
        public FeedbackService() : base() { }
        public FeedbackService(IDbConnection db) : base(db) { }
/*        public List<FeedBackView> GetListFeedback()
        {
            string query = "Select * from [dbo].[FeedBack] fb left join [dbo].[User] u on fb.UserId = u.UserId";
            return this._connection.Query<FeedBackView>(query).ToList();
        }*/
    }
}