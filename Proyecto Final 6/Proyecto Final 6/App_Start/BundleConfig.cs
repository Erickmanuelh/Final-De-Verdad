using System.Web;
using System.Web.Optimization;

namespace Proyecto_Final_6
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            bundles.UseCdn = true;
            //   var url = "https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700";
            //   var url2 = "https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic";


            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.css",
                      "~/Content/assets/images/logo/favicon.png",
                      "~/Content/assets/css/animate-3.7.0.css",
                      "~/Content/assets/css/font-awesome-4.7.0.min.css",
                      "~/Content/assets/fonts/flat-icon/flaticon.css",
                      "~/Content/assets/css/bootstrap-4.1.3.min.css",
                      "~/Content/assets/css/owl-carousel.min.css",
                      "~/Content/assets/css/nice-select.css",
                      "~/Content/assets/css/style.css"
                      ));
            
                   bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                   "~/Content/assets/js/vendor/jquery-2.2.4.min.js",
                   "~/Content/assets/js/vendor/bootstrap-4.1.3.min.js",
                   "~/Content/assets/js/vendor/wow.min.js",
                   "~/Content/assets/js/vendor/owl-carousel.min.js",
                   "~/Content/assets/js/vendor/jquery.nice-select.min.js",
                   "~/Content/assets/js/vendor/ion.rangeSlider.js",
                   "~/Content/assets/js/main.js"));

           

        }
    }
}
