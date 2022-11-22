using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestEnglish.Models;

namespace TestEnglish.Services
{
    public class CourseService: BaseService
    {
        public CourseService() : base() { }
        public CourseService(IDbConnection db) : base(db) { }

        public List<Course> GetListCourse()
        {
            string query = "select Top(6) * from [dbo].[Course] ORDER BY CourseName DESC";
            return this._connection.Query<Course>(query).ToList();
        }
    }
}