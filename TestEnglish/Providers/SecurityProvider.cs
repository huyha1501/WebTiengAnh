using TestEnglish.Models;
using TestEnglish.Services;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;

namespace TestEnglish.Providers
{
    public class SecurityProvider
    {
        public static string CreateMD5(string input)
        {
            // Use input string to calculate MD5 hash
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                // Convert the byte array to hexadecimal string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString().ToLower();
            }
        }
        public static string EncodePassword(string userId, string password)
        {
            try
            {
                userId = CreateMD5(userId);
                password = CreateMD5(userId[userId.Length - 1] + password + userId[0]);
                password = CreateMD5(userId[userId.Length - 2] + password + userId[1]);
                return password;
            }
            catch (Exception ex) { return null; }
        }

        public static string CreateToken(string account, string password, string deviceId)
        {
            try
            {
                string token = "";
                token = Guid.NewGuid().ToString();
                token = Base64Encode(token);

                //Mã hoá tài khoản
                token = token.Substring(0, 10) + "4c(0@n7" + account + "4c(0@n7" + token.Substring(10, token.Length - 10);
                token = Base64Encode(token);

                //Mã hoá password
                token = token.Substring(0, 10) + "9a$$W07d" + password + "9a$$W07d" + token.Substring(10, token.Length - 10);
                token = Base64Encode(token);

                //Mã hoá DeviceId
                token = token.Substring(0, 10) + "d3V1@31D" + deviceId + "d3V1@31D" + token.Substring(10, token.Length - 10);
                token = Base64Encode(token);

                //Ma hoa lan cuoi
                for (int i = 0; i < 3; i++)
                {
                    token = token + Guid.NewGuid().ToString();
                    token = Base64Encode(token);
                }

                token = "TestEnglish " + token;
                return token;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            return Convert.ToBase64String(plainTextBytes);
        }

        public static string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = Convert.FromBase64String(base64EncodedData);
            return Encoding.UTF8.GetString(base64EncodedBytes);
        }
    }
}