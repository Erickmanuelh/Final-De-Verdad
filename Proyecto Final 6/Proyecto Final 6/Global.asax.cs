using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace Proyecto_Final_6
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //  CultureInfo newCulture = (CultureInfo)System.Threading.Thread.CurrentThread.CurrentCulture.Clone();
            //  newCulture.DateTimeFormat.ShortDatePattern = "dd-MMM-yyyy";
            //  newCulture.DateTimeFormat.DateSeparator = "-";
            //  Thread.CurrentThread.CurrentCulture = newCulture;

            Thread.CurrentThread.CurrentUICulture = new CultureInfo("en-US");


        }
    }
}
