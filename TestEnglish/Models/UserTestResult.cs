using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class UserTestResult
    {
        public string UserTestResultId { get; set; }
        public string TestId { get; set; }
        public string TestName { get; set; }
        public string TestSkill { get; set; }
        public string UserId { get; set; }
        public string ListQuestion { get; set; }
        public int TotalCorrect { get; set; }
        public int TotalQuestion { get; set; }
        public DateTime CreateTime { get; set; }
        public int TotalTimeEslapse { get; set; }
        public string TypeTest { get; set; }
        public int TotalTime { get; set; }
    }
}