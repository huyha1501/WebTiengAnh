using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicMiniTestDescription
    {
        public string ToeicMiniTestDescriptionId { get; set; }
        public string ToeicMiniTestId { get; set; }
        public string Audio { get; set; }
        public string Picture { get; set; }
        public string Description { get; set; }
        public int Part { get; set; }
        public string PartName { get; set; }
        public DateTime CreateTime { get; set; }
    }
}