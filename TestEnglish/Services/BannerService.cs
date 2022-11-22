using System;
using Dapper;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class BannerService : BaseService
    {
        public BannerService() : base() { }
        public BannerService(IDbConnection db) : base(db) { }

        public List<Banner> GetListBannerForHomePage(IDbTransaction transaction = null)
        {
            string query = "select * from [dbo].[Banner]";
            return this._connection.Query<Banner> (query, transaction).ToList();
        }
        public Banner GetBannerById(int id, IDbTransaction transaction = null)
        {
            string query = "select * from [dbo].[Banner] where BannerId=@id";
            return this._connection.Query<Banner>(query, new { id }, transaction).FirstOrDefault();
        }
    }
}