using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class ToeicMiniTestService : BaseService
    {
        public ToeicMiniTestService() : base() { }
        public ToeicMiniTestService(IDbConnection db) : base(db) { }
        public List<ToeicMiniTest> GetListToeicMiniTest(IDbTransaction transaction = null)
        {
            string query = "Select * from [dbo].[ToeicMiniTest] order by CreateTime desc";
            return this._connection.Query<ToeicMiniTest>(query, transaction).ToList();
        }
        public ToeicMiniTest GetToeicMiniTestDetail(int id, IDbTransaction transaction = null)
        {
            string query = "select * from ToeicMiniTest where ToeicMiniTestId = @id";
            return this._connection.Query<ToeicMiniTest>(query, new { id }, transaction).FirstOrDefault();
        }
    }
}