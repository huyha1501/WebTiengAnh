using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;

namespace TestEnglish.Models
{
    public class FeedBack
    {
        public int FeedBackId { get; set; }
        public string UserId { get; set; }
        public string Content { get; set; }
        public DateTime CreateTime { get; set; }
    }
    public class FeedBackView
    {
        public int FeedBackId { get; set; }
        public string UserId { get; set; }
        public string Content { get; set; }
        public DateTime CreateTime { get; set; }
        public string Name { get; set; }
        public string Avatar { get; set; }
    }
}