using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class News
    {
        public long NewsId { get; set; }
        public int NewsCategoryId { get; set; }
        public string Title { get; set; }
        public string Thumbnail { get; set; }
        public string Description { get; set; }
        public string Content { get; set; }
        public DateTime CreateTime { get; set; }
    }
}