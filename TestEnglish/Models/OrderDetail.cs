using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class OrderDetail
    {
        public long OrderDetailId { get; set; }
        public string OrderId { get; set; }
        public int CourseId { get; set; }
        public int Price { get; set; }
    }
}