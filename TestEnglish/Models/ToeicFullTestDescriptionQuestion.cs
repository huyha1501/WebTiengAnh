using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicFullTestDescriptionQuestion
    {
        public long ToeicFullTestDescriptionQuestionId { get; set; }
        public string ToeicFullTestDescriptionId { get; set; }
        public string ToeicFullTestId { get; set; }
        public int Part { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
    }
}