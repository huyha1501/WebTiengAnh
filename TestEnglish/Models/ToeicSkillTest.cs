using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicSkillTest
    {
        public string ToeicSkillTestId { get; set; }
        public string Name { get; set; }
        public int TotalTime { get; set; }
        public int Part { get; set; }
        public DateTime CreateTime { get; set; }
    }
}