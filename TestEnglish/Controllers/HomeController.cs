using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestEnglish.Models;
using TestEnglish.Services;

namespace TestEnglish.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            // danh sách slide
          //  BannerService bannerService = new BannerService();
          //  List<Banner> lsBanner = bannerService.GetListBannerForHomePage();
          //  ViewBag.ListBanner = lsBanner;

            // danh sách phản hồi từ khách hàng
/*            FeedbackService feedbackService = new FeedbackService();
            List<FeedBackView> lsFeedback = feedbackService.GetListFeedback();
            ViewBag.Feedback = lsFeedback;

            // Danh sách 3 tin tức mới nhất
           // NewsService newsService = new NewsService();
          //  List<News> lsnews = newsService.GetListNews();
          //  ViewBag.ListNews = lsnews;

            CourseService courseService = new CourseService();
            List<Course> lsCourse = courseService.GetListCourse();
            ViewBag.ListCourse = lsCourse;

            ToeicMiniTestService toeicMiniTestService = new ToeicMiniTestService();
            List<ToeicMiniTest> lsminitest = toeicMiniTestService.GetListMiniTest();
            ViewBag.ListToeicMiniTest = lsminitest;*/

            return View();
        }
        [Route("dang-ky")]
        public ActionResult Register() {return View(); }

        [Route("dang-nhap")]
        public ActionResult LogIn() { return View(); }
    }
}