using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Dapper;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class NewCategoryService : BaseService
    {
        public NewCategoryService() : base() { }
        public NewCategoryService(IDbConnection db) : base(db) { }

        public List<NewsCategory> GetListNewsCategory(IDbTransaction transaction = null)
        {
            string query = "SELECT * FROM [dbo].[NewsCategory]";
            return this._connection.Query<NewsCategory>(query, transaction).ToList();
        }
        public bool InsertNewsCategory(NewsCategory model, IDbTransaction transaction = null)
        {
            string query = "INSERT INTO [dbo].[NewsCategory]([NewsCategoryName])VALUES(@NewsCategoryName)";
            int status = this._connection.Execute(query, model, transaction);
            return status > 0;
        }
        public bool DeleteNewsCategory(int NewsCategoryId, IDbTransaction transaction = null)
        {
            string query = "DELETE FROM  [dbo].[NewsCategory] WHERE NewsCategoryId=@NewsCategoryId ";
            int status = this._connection.Execute(query, new { NewsCategoryId }, transaction);
            return status > 0;
        }
        public NewsCategory GetNewsCategoryById(int id, IDbTransaction transaction = null)
        {
            string query = "select * from [dbo].[NewsCategory] where NewsCategoryId=@id";
            return this._connection.Query<NewsCategory>(query, new { id }, transaction).FirstOrDefault();
        }
        public bool UpdateNewsCategory(NewsCategory model, IDbTransaction transaction = null)
        {
            string query = "UPDATE [dbo].[NewsCategory] SET [NewsCategoryName]=@NewsCategoryName WHERE NewsCategoryId=@NewsCategoryId";
            int status = this._connection.Execute(query, model, transaction);
            return status > 0;
        }
    }
}