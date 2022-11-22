using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;

namespace TestEnglish.Providers
{
    public class HelperProvider
    {
        public static string RemoveUnicode(string text)
        {
            string[] arr1 = new string[] { "á", "à", "ả", "ã", "ạ", "â", "ấ", "ầ", "ẩ", "ẫ", "ậ", "ă", "ắ", "ằ", "ẳ", "ẵ", "ặ",
    "đ",
    "é","è","ẻ","ẽ","ẹ","ê","ế","ề","ể","ễ","ệ",
    "í","ì","ỉ","ĩ","ị",
    "ó","ò","ỏ","õ","ọ","ô","ố","ồ","ổ","ỗ","ộ","ơ","ớ","ờ","ở","ỡ","ợ",
    "ú","ù","ủ","ũ","ụ","ư","ứ","ừ","ử","ữ","ự",
    "ý","ỳ","ỷ","ỹ","ỵ",};
            string[] arr2 = new string[] { "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a",
    "d",
    "e","e","e","e","e","e","e","e","e","e","e",
    "i","i","i","i","i",
    "o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o",
    "u","u","u","u","u","u","u","u","u","u","u",
    "y","y","y","y","y",};
            for (int i = 0; i < arr1.Length; i++)
            {
                text = text.Replace(arr1[i], arr2[i]);
                text = text.Replace(arr1[i].ToUpper(), arr2[i].ToUpper());
            }
            return text;
        }
        public static bool Base64ToImage(string base64String, string pathToSave)
        {
            try
            {
                // Convert base 64 string to byte[]
                byte[] imageBytes = Convert.FromBase64String(base64String);
                // Convert byte[] to Image
                using (var ms = new MemoryStream(imageBytes, 0, imageBytes.Length))
                {
                    Image image = Image.FromStream(ms, true);
                    Bitmap bmp = new Bitmap(image);
                    bmp.Save(pathToSave);
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public static bool DeleteFile(string path)
        {
            try
            {
                //xoa anh cu
                if (System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(path)))
                {
                    System.IO.File.Delete(System.Web.HttpContext.Current.Server.MapPath(path));
                }
                return true;
            }
            catch (Exception ex) { return false; }
        }
        public static long GetSeconds(DateTime? dateTime = null)
        {
            try
            {
                if (!dateTime.HasValue) dateTime = DateTime.Now;
                var Timestamp = new DateTimeOffset(dateTime.Value).ToUnixTimeMilliseconds();
                return Timestamp;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
        public static string MakeCode()
        {
            try
            {
                DateTime epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
                ulong time = (ulong)(DateTime.UtcNow - epoch).TotalMilliseconds;

                char[] _base = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V' };
                char[] Code = new char[10];

                Code[0] = _base[(time >> 45) & 31];
                Code[1] = _base[(time >> 40) & 31];
                Code[2] = _base[(time >> 35) & 31];
                Code[3] = _base[(time >> 30) & 31];
                Code[4] = _base[(time >> 25) & 31];
                Code[5] = _base[(time >> 20) & 31];
                Code[6] = _base[(time >> 15) & 31];
                Code[7] = _base[(time >> 10) & 31];
                Code[8] = _base[(time >> 5) & 31];
                Code[9] = _base[time & 31];

                string ShareCode = new string(Code);

                return ShareCode;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static string PerttyNumber(decimal number)
        {
            string strNumber = number.ToString("G29");
            if (strNumber.IndexOf('.') > -1) { strNumber = long.Parse(strNumber.Split('.')[0]).ToString("N0") + "." + strNumber.Split('.')[1]; }
            else { strNumber = number.ToString("N0"); }
            return strNumber;
        }
        public static DateTime GetDateTime(long time)
        {
            double sticks = double.Parse(time.ToString());
            TimeSpan timeSpan = TimeSpan.FromMilliseconds(sticks);
            DateTime dateTime = new DateTime(1970, 1, 1) + timeSpan;
            return dateTime;
        }
    }
}