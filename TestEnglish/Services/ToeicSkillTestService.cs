using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestEnglish.Models;
using Dapper;

namespace TestEnglish.Services
{
    public class ToeicSkillTestService : BaseService
    {
        public ToeicSkillTestService() : base() { }
        public ToeicSkillTestService(IDbConnection db) : base(db) { }

        public ToeicSkillTest GetToeicSkillTestDetail(int id, IDbTransaction transaction = null)
        {
            string query = "select * from ToeicSkillTest where ToeicSkillTestId = @id";
            return this._connection.Query<ToeicSkillTest>(query, new { id }, transaction).FirstOrDefault();
        }
        public List<object> GetListToeicSkillTest(int part, IDbTransaction transaction = null)
        {
            string query = "select * from ToeicSkillTest where Part = @part order by CreateTime";
            return this._connection.Query<object>(query, new { part }, transaction).ToList();
        }

        public object GetToeicSkillTest(string toeicSkillTestId, IDbTransaction transaction = null) {
            string query = "select * from ToeicSkillTest where ToeicSkillTestId=@toeicSkillTestId";
            return this._connection.Query<object>(query, new { toeicSkillTestId }, transaction).FirstOrDefault();
        }

        public List<object> GetListToeicSkillTestDescriptionQuestion(string toeicSkillTestId, IDbTransaction transaction = null)
        {
            string query = "select tstd.ToeicSkillTestDescriptionId,tstd.Audio,tstd.Picture,tstd.Description,tstdq.Question,tstdq.Answer from ToeicSkillTestDescription tstd left join ToeicSkillTestDescriptionQuestion tstdq on tstd.ToeicSkillTestDescriptionId = tstdq.ToeicSkillTestDescriptionId where tstd.ToeicSkillTestId=@toeicSkillTestId order by tstd.CreateTime ";
            return this._connection.Query<object>(query, new { toeicSkillTestId }, transaction).ToList();
        }

        public object GetSkillTestResult(string resultId,IDbTransaction transaction = null) {
            string query = "select * from UserTestResult where UserTestResultId=@resultId";
            return this._connection.Query<object>(query, new { resultId }, transaction).FirstOrDefault();
        }

        public ToeicSkillTest GetToeicSkillTestById(string id, IDbTransaction transaction = null) {
            string query = "select top 1 * from ToeicSkillTest where ToeicSkillTestId=@id";
            return this._connection.Query<ToeicSkillTest>(query, new { id }, transaction).FirstOrDefault();
        }
    }
}