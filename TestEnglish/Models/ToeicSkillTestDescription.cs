using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicSkillTestDescription
    {
        public string ToeicSkillTestDescriptionId { get; set; }
        public string ToeicSkillTestId { get; set; }
        public string Audio { get; set; }
        public string Picture { get; set; }
        public string Description { get; set; }
        public DateTime CreateTime { get; set; }
    }
}