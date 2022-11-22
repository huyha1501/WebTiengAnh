using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class Order
    {
        public string OrderId { get; set; }
        public string OrderCode { get; set; }
        public string UserId { get; set; }
        public string Note { get; set; }
        public int TotalCost { get; set; }
        public int TotalItem { get; set; }
        public string Status { get; set; }
        public DateTime CreateTime { get; set; }
    }
}