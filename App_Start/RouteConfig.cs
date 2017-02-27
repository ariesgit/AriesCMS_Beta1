
#region Copyright
// 
// Aries TCO, Inc.® - http://www.ariestco.com
// Copyright (c) 2002-2014
// by Aries TCO, Inc.
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated 
// documentation files (the "Software"), to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and 
// to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions 
// of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
// TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
// CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE.
#endregion




using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using AriesCMSRouting;


namespace AriesCMS
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            try
            {

                //RouteTable.Routes.RouteExistingFiles = true;
                routes.IgnoreRoute("Themes/{*pathInfo}");
                routes.IgnoreRoute("Scripts/{*pathInfo}");
                routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
                //RouteTable.Routes.IgnoreRoute("{resource}.css/{*pathInfo}");

                //This route is the default settings to allow by default the cms to handel everything, this will not allow for the local 
                //home/controller to work.  To allow that to work comment this one out and then use the one below marked to allow that to works.  
                //Keep in minde that you would have to use page/yourlink from that point on
                routes.MapRoute(
                      name: "CmsRoute",
                      url: "{*permalink}",
                      defaults: new { controller = "CMS", action = "Index", id = UrlParameter.Optional },
                      constraints: new { permalink = new DynamicUrlConstraint() },
                      namespaces: new[] { "CMSCore.Controllers" }
                  );

                ////This route allows you to place your own home controller while keeping the routes using cms by simply adding a "page/" in front of your existing db based
                ////cms routes
                //routes.MapRoute(
                //     name: "CmsRoute",
                //     url: "page/{*permalink}",
                //     defaults: new { controller = "CMS", action = "Index", id = UrlParameter.Optional },
                //     constraints: new { permalink = new DynamicUrlConstraint() },
                //     namespaces: new[] { "CMSCore.Controllers" }
                // );

                routes.MapRoute(
                    name: "DefaultLocal2",
                    url: "{controller}/{action}/{id}",
                      defaults: new { controller = "LP", action = "Index", id = UrlParameter.Optional },
                    namespaces: new[] { "AriesCMS.Controllers" }
                );




                




            }
            catch (Exception s)
            {
            }

        }
    }

}