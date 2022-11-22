using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class NewsCategory
    {
        public int NewsCategoryId { get; set; }
        public string NewsCategoryName { get; set; }
        public bool IsShowHomePage { get; set; }
        public int TotalNews { get; set; }
    }
}