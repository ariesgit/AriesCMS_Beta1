using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Caching;
using System.Web.Hosting;


namespace AriesCMS
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            try
            {
                AreaRegistration.RegisterAllAreas();


                FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
                RouteConfig.RegisterRoutes(RouteTable.Routes);
                BundleConfig.RegisterBundles(BundleTable.Bundles);


            }
            catch
            {
            }

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // your code here, it will be executed upon session start
            AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
            Session["_sAnnonVisiterID"] = oSystem.UserCookie.CookieID;
        }


        protected void Session_End(object sender, EventArgs e)
        {
            try
            {

                AriesCMS.Helpers.SiteCoreHelper oSystem = new Helpers.SiteCoreHelper();
                oSystem.OpenDataConnection();
                string sCurrentUserID = Session["_iUserID"].ToString();
                oSystem.GetCurrentUserRecord(sCurrentUserID);
                oSystem.UserLoggOff();
                oSystem.CloseDataConnection();
            }
            catch (Exception s)
            {

            }
        }

    }
}