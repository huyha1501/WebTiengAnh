using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class Course
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public string Thumbnail { get; set; }
        public string CourseContent { get; set; }
        public string CourseDescription { get; set; }
        public int Price { get; set; }
        public int PriceOld { get; set; }
        public bool Status { get; set; }
        public bool IsHomePageShow { get; set; }
    }
}