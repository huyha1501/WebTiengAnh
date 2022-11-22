using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class CourseVideo
    {
        public string VideoId { get; set; }
        public int CourseId { get; set; }
        public string VideoName { get; set; }
        public string VideoLink { get; set; }
    }
}