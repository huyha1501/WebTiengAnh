using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicFullTestDescription
    {
        public string ToeicFullTestDescriptionId { get; set; }
        public string ToeicFullTestId { get; set; }
        public int Part { get; set; }
        public string Picture { get; set; }
        public string Audio { get; set; }
        public string Description { get; set; }
        public DateTime CreateTime { get; set; }
    }
}