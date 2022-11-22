using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class ToeicFullTestService: BaseService
    {
        public ToeicFullTestService() : base() { }
        public ToeicFullTestService(IDbConnection db) : base(db) { }
        public List<ToeicFullTest> GetListToeicFullTest(IDbTransaction transaction = null)
        {
            string query = "select * from ToeicFullTest order by CreateTime desc";
            return this._connection.Query<ToeicFullTest>(query, transaction).ToList();
        }
        public ToeicFullTest GetToeicFullTestDetail(int id, IDbTransaction transaction = null)
        {
            string query = "select * from ToeicFullTest where ToeicFullTestId = @id";
            return this._connection.Query<ToeicFullTest>(query, new { id }, transaction).FirstOrDefault();
        }
    }
}