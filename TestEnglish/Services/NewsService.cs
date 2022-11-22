using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Dapper;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class NewsService : BaseService
    {
        public NewsService() : base() { }
        public NewsService(IDbConnection db) : base(db) { }
        public List<News> GetListNews()
        {
            string query = "select TOP(3)* from [dbo].[News] Order by CreateTime desc";
            return this._connection.Query<News>(query).ToList();
        }
     
    }
}
