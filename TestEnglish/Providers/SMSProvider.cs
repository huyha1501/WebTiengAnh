using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using Newtonsoft.Json;
using System.Net.Mail;
using System.Net;

namespace Smarttabuy.Providers
{
    public class SMSProvider
    {
        //
/*        public static bool SendOTPViaPhone(string phoneNumber, string code)
        {
            try
            {
                var client = new HttpClient();
                string message = "[SWAY VN] Ma xac thuc cua ban la " + code;
                var result = client.GetStringAsync("http://rest.esms.vn/MainService.svc/json/SendMultipleMessage_V4_get?Phone=" + phoneNumber + "&Content=" + message + "&ApiKey=06D5D3C5D6F6685AF97DDE5CBB31EC&SecretKey=8CAAEFC35C517D9ED878AC87E721B4&SmsType=2&Brandname=SWAY VN").Result;
                SMSResponse smsResponse = JsonConvert.DeserializeObject<SMSResponse>(result);
                if (smsResponse.CodeResult == "100") return true;
            }
            catch (Exception ex) { }
            return false;
        }*/

        public static bool SendOTPViaEmail(string email, string code, string title, string message)
        {
            try
            {
                SmtpClient clientDetails = new SmtpClient();
                clientDetails.Port = 587;
                clientDetails.Host = "smtp.gmail.com";
                clientDetails.EnableSsl = true;
                clientDetails.DeliveryMethod = SmtpDeliveryMethod.Network;
                clientDetails.UseDefaultCredentials = false;
                clientDetails.Credentials = new NetworkCredential("vuhuyha2001@gmail.com", "Ha15012001");

                //Message Details
                MailMessage mailDetails = new MailMessage();
                mailDetails.From = new MailAddress("vuhuyha2001@gmail.com");
                mailDetails.To.Add(email);
                mailDetails.Subject = "[TestEnglish] " + title;
                mailDetails.IsBodyHtml = false;
                mailDetails.Body = message + " " + code;
                clientDetails.Send(mailDetails);
                return true;
            }
            catch (Exception ex) { }
            return false;
        }

        public class SMSResponse
        {
            public string CodeResult { get; set; }
            public string CountRegenerate { get; set; }
            public string SMSID { get; set; }
        }
    }
}