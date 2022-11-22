using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestEnglish.Models
{
    public class HelpRequest
    {
        public long HelpRequestId { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string ContentRequest { get; set; }
        public string Status { get; set; }
        public DateTime CreateTime { get; set; }
        public class EnumStatus
        {
            public const string DONE = "DONE"; //đã xử lý xong yêu cầu
            public const string NEW_REQUEST = "NEW_REQUEST"; //yêu cầu tư vấn mới
        }
    }
}