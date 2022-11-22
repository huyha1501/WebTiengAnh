using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class ToeicFullTest
    {
        public string ToeicFullTestId { get; set; }
        public string Name { get; set; }
        public int TotalTime { get; set; }
        public DateTime CreateTime { get; set; }
    }
}