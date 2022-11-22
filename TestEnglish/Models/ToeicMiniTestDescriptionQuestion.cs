using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicMiniTestDescriptionQuestion
    {
        public long ToeicMiniTestDescriptionQuestionId { get; set; }
        public string ToeicMiniTestDescriptionId { get; set; }
        public string ToeicMiniTestId { get; set; }
        public int Part { get; set; }
        public string Question { get; set; }
        public string Answer { get; set; }
    }
}