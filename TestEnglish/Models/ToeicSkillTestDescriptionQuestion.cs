using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicSkillTestDescriptionQuestion
    {
        public long ToeicSkillTestDescriptionQuestionId { get; set; }
        public string ToeicSkillTestDescriptionId { get; set; }
        public string ToeicSkillTestId { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
    }
}